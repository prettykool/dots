#!/bin/env python3

# Standard library imports
import os
import sys
import mimetypes
import time
import math

from datetime import datetime

# Third party imports
import ffmpeg

from PyPDF2 import PdfReader
from termcolor import cprint
from tinytag import TinyTag

# Dirty function to output the time in a nice way
def timefmt(x):
    internalt = time.gmtime(math.floor(x))
    returnt = ""
    
    if (internalt.tm_hour > 0):
        if (internalt.tm_hour > 1):
            returnt += "%s hours " % str(internalt.tm_hour)
        else:
            returnt += "%s hour " % str(internalt.tm_hour)

    if (internalt.tm_hour == 1):
        returnt += "%s min " % str(internalt.tm_min)
    else:
        returnt += "%s mins " % str(internalt.tm_min)

    if (internalt.tm_sec == 1):
        returnt += "%s sec" % str(internalt.tm_sec)
    else:
        returnt += "%s secs" % str(internalt.tm_sec)

    return returnt

def main():
    if len(sys.argv) == 1:
        print ("Error: No file provided")
        return 1
    
    file = sys.argv[1]
    
    if not os.path.exists(file):
        print ("Error: File does not exist")
        return 2
    
    ftype = mimetypes.guess_type(file)[0]

    if ftype.endswith("pdf"):
        t = PdfReader(file)
        print(len(t.pages), "Pages")
        
    if ftype.startswith("audio"):
        tag = TinyTag.get(file)
        
        if tag.artist and tag.title and tag.year and tag.album and tag.track:
            print(tag.artist, "-", tag.title, "(%s)" % tag.year)
            print("Track", tag.track, "from", tag.album) 

        elif tag.artist and tag.title and tag.year:
            print(tag.artist, "-", tag.title, "(%s)" % tag.year)

        else:
            print(os.path.basename(file))

        prettyTime = timefmt(tag.duration) # Dear god

        print(prettyTime)
    
    if ftype.startswith("video") or ftype.startswith("image"):
        t = ffmpeg.probe(file)
        t = [s for s in t["streams"] if s["codec_type"] == "video"]
        t = t[0]

        print(os.path.basename(file))

        if ftype.startswith("video"):
            print(timefmt(float(t["duration"])))
        
        print("%sx%spx" % (t["width"], t["height"]))
    
    creationdate = datetime.fromtimestamp(os.path.getctime(file))
    
    print("Created on", creationdate)
    return 0

main()
