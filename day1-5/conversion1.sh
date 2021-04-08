#!/bin/bash -x
ft=12
echo "42 inch in feet is:"
awk "BEGIN{print 42/$ft}"

echo "Rectangle plot of 60 feet x 40 feet in meter is"
area=`awk "BEGIN{print  ((60/3.28084)*(40/3.28084))}"`
echo $area
plot=`awk "BEGIN{print  ((60 * 40) / 43560)}"`
echo "Area of one plot is $plot sq ft"
echo "for area of 25 such plot in acres is"
awk "BEGIN{print ($plot * 25)}"
