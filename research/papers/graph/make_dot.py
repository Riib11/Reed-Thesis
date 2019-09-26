import json
import sys

papers_json_fn = sys.argv[1]
papers_dot_fn = sys.argv[2]
with open(papers_json_fn, "r") as papers_json:
    papers_dict = json.load(papers_json)

    dot_lines = [
        "digraph G {",
        "graph[ratio=1]",
        "node[shape=box, fillcolor=white, color=lightgrey]"
    ]

    def add_paper(key, data):
        global dot_lines
        
        [label, status, outcites] = data

        attrs = {"label":'"'+label+'"'}

        if status == "to read":
            attrs["color"] = "black"
            attrs["style"] = "dotted"
        elif status == "current":
            attrs["color"] = "black"
            attrs["style"] = "diagonals"
        elif status == "skimmed":
            attrs["color"] = "black"
            attrs["style"] = "solid"
        elif status == "read":
            attrs["color"] = "black"
            attrs["fillcolor"] = "gray"
            attrs["style"] = "\"solid, filled\""

        attrs_str = ", ".join([ k+"="+v for (k, v) in attrs.items() ])

        outcites_str = " ".join([ "\""+k+"\"" for k in outcites])
        
        lines = [
            '',                                  # linebreak
            '"'+key+'"'+' '+'['+attrs_str+']',   # node
            '"'+key+'"'+' -> { '+outcites_str+' }'
        ]
        dot_lines += lines

    for (key, data) in papers_dict.items():
        add_paper(key, data)

    dot_lines.append("}")

    with open(papers_dot_fn, "w+") as file:
        for l in dot_lines: file.write(l+'\n')
    
