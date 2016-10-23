#!/usr/bin/env python3
import os
import sys
import re
import html

from jinja2 import Environment, FileSystemLoader

topdir = sys.argv[1]
file_with_aliases = []

for dirname, subdirlist, filelist in os.walk(topdir):
    for fname in filelist:
        aliases = []
        fqn = dirname + "/" + fname
        for l in [l.strip() for l in open(fqn)]:
            m = re.match(r"alias\s+(\w+)='(.+)'", l)
            if m:
                cmd = html.escape(m.group(2)).replace("|", "&#124;").replace("*", "&#42;")
                aliases.append((m.group(1), cmd))
        if aliases:
            fname = fqn[fqn.find("zsh"):]
            file_with_aliases.append((fname, aliases))

for aliases_file in file_with_aliases:
    print("Found " + str(len(aliases_file[1])) + " aliases in " + aliases_file[0])

env = Environment(loader=FileSystemLoader('.'))
template = env.get_template('aliases.md.template')
output_from_parsed_template = template.render(alias_files=file_with_aliases)

# print output_from_parsed_template
with open("out.md", "w") as fh:
    fh.write(output_from_parsed_template)
