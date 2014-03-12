#!/usr/bin/python
import json
import os

DIR=os.path.dirname(os.path.realpath(__file__))

def standalone():
    os.chdir(DIR)
    stories = { "love": [os.path.splitext(f)[0] for f in os.listdir("love") if not f.startswith('.')],
                "notlove": [os.path.splitext(f)[0] for f in os.listdir("notlove") if not f.startswith('.')] }
    with open("stories.json", "w") as f:
        print "Writing stories.json...\n"
        print stories
        json.dump(stories, f)

if __name__ == "__main__":
    standalone()
