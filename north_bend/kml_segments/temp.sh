set -e
python /home/henry/projects/map-tools/map_tools.py prune-by-location -v \
   --start  "47.51375, -121.7076" \
   --out temp2.kml \
   temp.kml
