import os
import argparse
import datetime
from pytz import timezone
import pytz
import tempfile
import subprocess
import math

import csv
import uuid

import gpxpy
import gpxpy.gpx

import kml_tools
import tools

import pprint
pp = pprint.PrettyPrinter(indent = 4)

def _print_methods(obj):
    for i in dir(obj):
        if i.startswith('_'):
            continue
        print(i)

def test_my_simlify(path, verbose = False):
    tracks = kml_tools.tracks_from_file(
            path, verbose = False)
    points = tracks[0]['points']
    tools.simplify(points = points, )


def test_simplify(obj):
    x = obj.simplify()

def tree(path):
    with  open(path, 'r') as gpx_file:
        gpx_read = gpxpy.parse(gpx_file)
    #_print_methods(obj = gpx_read)
    test_simplify(gpx_read)
    test_my_simlify(path = path)

if __name__ == '__main__':
    path = '/home/henry/Documents/gpx/hikes/alki_2022_11_21.gpx'
    path = '/home/henry/Documents/gpx/hikes/carkeek_park_2022_11_17.gpx'
    tree(path)
