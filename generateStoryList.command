#!/usr/bin/python
import json
import os

DIR=os.path.dirname(os.path.realpath(__file__))

def standalone():
    os.chdir(DIR)
    stories = { "love": os.listdir("love"), "notlove": os.listdir("notlove") }
    with open("stories.json", "w") as f:
        print "Writing stories.json...\n"
        print stories
        json.dump(stories, f)

if __name__ == "__main__":
    standalone()
