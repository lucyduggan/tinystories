#!/usr/bin/python
import json
from os import listdir

def standalone():
    stories = { "love": listdir("love"), "notlove": listdir("notlove") }
    with open("stories.json", "w") as f:
        json.dump(stories, f)

if __name__ == "__main__":
    standalone()
