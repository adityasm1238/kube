ARG JUDGE_VERSION=1.13.0 # Specify with --build-arg defaults to 1.12.0
FROM judge0/judge0:1.13.0 as judge0_builder


RUN sudo apt install nodejs npm
RUN npm install -g mongoose

COPY ./judge0.conf /judge0.conf




# Copies the required ruby files for importing languages into the database automatically.
COPY lang_imports/edgar_langs/ /api/db/languages/edgar_langs/

RUN echo @start = $(cat /api/db/languages/*.rb | perl -n -e '/\s*id:\s*(\d+)/ && print "$1\n"' | sort -n | tail -1) > /api/db/languages/edgar_langs/edg_lang_id_start.rb && \
    echo "require_relative 'languages/imp_edgar_langs'" | cat - /api/db/seeds.rb > /api/db/temp && mv /api/db/temp /api/db/seeds.rb

COPY lang_imports/imp_edgar_langs.rb /api/db/languages/imp_edgar_langs.rb
