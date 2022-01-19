import os, glob
import subprocess

dirname="/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid/vo-varpsf-blended-vardensity/sim"


l=glob.glob(os.path.join(dirname, "*_cat.fits"))
s=set([f.replace("_cat.fits", "_img") for f in l])

for a in list(s):
    if not os.path.isdir(a):
        os.mkdir(a)
    expand="%s%s"%(a, "**_galimg_rot.fits")
    d=glob.glob(expand)
    for f in d:
        bashCommand = "mv %s %s/"%(f,a)
        process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
        output, error = process.communicate()
    

'''
for o,n in zip(l,s):
    bashCommand = "mv %s %s"%(o,n)
    #print(bashCommand)
    
'''
