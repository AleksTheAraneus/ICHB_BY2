cd /usr/local/bin/Fiji.app
# mkdir ...ICHB/results_flder

for file in $(ls); do

	./ImageJ-linux64 -macro my_macro1.ijm file

done


## renaeming

# dos1
rename 's/24/36/' *.tif
rename 's/48/60/' *.tif
rename 's/72/108/' *.tif

rename 's/GV/GV_/' *.tif
rename 's/LBA/LBA_/' *.tif

rename 's/(0A)/0_A/' *.tif
rename 's/(6A)/6_A/' *.tif
rename 's/(8A)/8_A/' *.tif

rename 's/(0B)/0_B/' *.tif
rename 's/(6B)/6_B/' *.tif
rename 's/(8B)/8_B/' *.tif

rename 's/(40)/4_0_/' *.tif
rename 's/(70)/7_0_/' *.tif
rename 's/2010/20_10_/' *.tif # !
rename 's/810/8_10_/' *.tif # !
rename 's/30/_30_/' *.tif
rename 's/90/_90_/' *.tif

# dos 2,3
rename 's/GV/GV_/' *.tif
rename 's/LBA/LBA_/' *.tif

rename 's/(0A)/0_A/' *.tif
rename 's/(0B)/0_B/' *.tif

rename 's/108/_108_/' *.tif
rename 's/860/8_60_/' *.tif
rename 's/2060/20_60_/' *.tif
rename 's/36/_36_/' *.tif


rename 's/LBA/17VI15_2_LBA/' *.tif
rename 's/GV/17VI15_2_GV/' *.tif

rename 's/LBA/24VI15_2_LBA/' *.tif
rename 's/GV/24VI15_2_GV/' *.tif

rename 's/LBA/24VI15_3_LBA/' *.tif
rename 's/GV/24VI15_3_GV/' *.tif




