@edgar_langs ||= []
@edgar_langs += 
[
    {
      "name": "nomongo",
      "is_archived": false,
      "source_file": "Main.js",
      "run_cmd": "NODE_PATH=/usr/lib/node_modules node  Main.js"
    }
  ]
  @edgar_langs += 
  [
      {
        "name": "nodeexpress",
        "is_archived": false,
        "source_file": "index.js",
        "run_cmd": "/usr/lib/nodeexpress/node_express.sh"
      }
  ]
