dir | awk '{ print; total += $4 }; END { print "total size: ",total }'