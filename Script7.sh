#7 -  Write a shell script which displays the date in desired formats :
# 1.	Thursday, 02 July 2020.
# 2.	July 25,2020
# 3.	02-07-2020, Thursday
# 4.	dd-mm-yy
# 5.	dd/mm/yyyy

date +'%A, %d %B %Y'

date +'%B %d, %Y'

date +'%d-%m-%Y, %A'

date +'%d-%m-%Y'

date +'%D'

read