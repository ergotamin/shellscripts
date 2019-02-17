#!/usr/bin/env -S python2.7 -B
"""License: MIT;
Copyright: Marcel Bobolz 2019
"""
import sys
import re
import json
import plistlib


def plist2json(path=None, **kwargs):
    if path is not None:
        plist_dict = plistlib.readPlist(path)
        json_string = json.dumps(plist_dict, sort_keys=True, indent=4)
        print(json_string)


if __name__ == '__main__':
    if len(sys.argv) == 2:
        plist2json(path=sys.argv[1])
