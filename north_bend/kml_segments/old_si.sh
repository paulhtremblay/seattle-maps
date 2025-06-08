set -e
python /home/henry/projects/map-tools/map_tools.py mult-lines-to-one -v \
	seg4.kml \
	seg5.kml \
	--name "Old Si" \
	-o ../kml/old_si2.kml
