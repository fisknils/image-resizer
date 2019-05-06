#!/bin/bash
function reindex()
{
	mkdir -p $1/new
	i=0
	find $1 -name $2\* | while read line; do
		i=$((i+1))
		echo $i
		cp -v $line "$1/new/$2_$i.jpg"
	done
}

reindex ./2018-11-08/artiklar/zoom 052-80-ST
reindex ./2018-11-08/artiklar/zoom 270-85-ST
reindex ./2018-11-08/artiklar/zoom 400-95-ST
reindex ./2018-11-08/artiklar/zoom 401-55-ST
reindex ./2018-11-08/artiklar/zoom 403-55-ST
reindex ./2018-11-08/artiklar/zoom 404-95-ST
reindex ./2018-11-08/artiklar/zoom 411-55-ST
reindex ./2018-11-08/artiklar/zoom 416-95-ST
reindex ./2018-11-08/artiklar/zoom 457-76-ST
reindex ./2018-11-08/artiklar/zoom 465-06-ST
reindex ./2018-11-08/artiklar/zoom 465-28-ST
reindex ./2018-11-08/artiklar/zoom 465-91-ST
reindex ./2018-11-08/artiklar/zoom 484-01-ST
reindex ./2018-11-08/artiklar/zoom 484-02-ST
reindex ./2018-11-08/artiklar/zoom 484-11-ST
reindex ./2018-11-08/artiklar/zoom 484-12-ST
reindex ./2018-11-08/artiklar/zoom 486-33-ST
reindex ./2018-11-08/artiklar/zoom 497-76-ST
reindex ./2018-11-08/artiklar/zoom 583-90-ST
reindex ./2018-11-08/artiklar/zoom 591-10-ST
reindex ./2018-11-08/artiklar/zoom 609-02-ST
reindex ./2018-11-08/artiklar/zoom 609-03-ST
reindex ./2018-11-08/artiklar/zoom 612-18-ST
reindex ./2018-11-08/artiklar/zoom 650-00-ST
reindex ./2018-11-08/artiklar/zoom 680-57-ST
reindex ./2018-11-08/artiklar/zoom 680-73-ST
reindex ./2018-11-08/artiklar/zoom 680-82-ST
reindex ./2018-11-08/artiklar/zoom 680-84-ST
reindex ./2018-11-08/artiklar/zoom 680-86-ST
reindex ./2018-11-08/artiklar/zoom 686-40-ST
reindex ./2018-11-08/artiklar/zoom 690-12-ST
reindex ./2018-11-08/artiklar/zoom 700-23-ST
reindex ./2018-11-08/artiklar/zoom 700-24-ST
reindex ./2018-11-08/artiklar/zoom 700-26-ST
reindex ./2018-11-08/artiklar/zoom 700-27-ST
reindex ./2018-11-08/artiklar/zoom 726-01-ST
reindex ./2018-11-08/artiklar/zoom 726-61-ST
reindex ./2018-11-08/artiklar/zoom 802-26-ST
reindex ./2018-11-08/artiklar/zoom 803-40-ST
reindex ./2018-11-08/artiklar/zoom 990-09-ST
reindex ./2018-11-08/artiklar/zoom 990-61-ST
reindex ./2018-11-08/artiklar/zoom 990-99-84-ST
reindex ./2018-11-08/artiklar/zoom 991-17-ST
reindex ./2018-11-08/artiklar/zoom 991-18-ST
reindex ./2018-11-08/artiklar/zoom 991-19-ST
reindex ./2018-11-08/artiklar/zoom 991-50-ST
reindex ./2018-11-08/artiklar/zoom 992-18-ST
reindex ./2018-11-08/artiklar/zoom 992-19-ST
