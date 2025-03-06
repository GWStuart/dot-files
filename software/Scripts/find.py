#!/bin/bash
import os

cwd = os.path.dirname((__file__))

items = []
with open(f"{cwd}/search_locations.conf", "r") as f:
    for line in f:
        items_in_folder = os.listdir(line.strip())
        items_in_folder = map(lambda x: os.path.join(line.strip(), x), items_in_folder)
        items.extend(items_in_folder)

print("\n".join(items))

