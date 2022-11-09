import numpy as np
import shutil
import glob
from astropy.io import fits


bias_files = glob.glob('bias_-60C_04rom_2b*')

for file in bias_files:
	print(file)
	cube = fits.getdata(file)
	frame = np.median(cube, axis=0)
	shutil.move(file, 'cubes/'+file)
	fits.writeto(file, frame)

