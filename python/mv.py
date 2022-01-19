import os, glob
import subprocess

dirname="/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid/vo-varpsf-blended-vardensity/sim"

'''
#l=glob.glob(os.path.join(dirname, "*-5"))
#s=["%s_img0_galimg.fis"%(f[:f.find("_img")]) for f in l]

l=glob.glob(os.path.join(dirname, "*fis"))
s=[f.replace(".fis", ".fits") for f in l]

for o,n in zip(l,s):
    bashCommand = "mv %s %s"%(o,n)
    #print(bashCommand)
    process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
    output, error = process.communicate()
'''

'''
s=glob.glob(os.path.join(dirname, "*_img/"))
l=["%s1_galimg.fits"%(f[:-1]) for f in s]
print(s)


for o,n in zip(l,s):
    bashCommand = "mv %s %s"%(o,n)
    #print(bashCommand)
    process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
    output, error = process.communicate()
'''

s=glob.glob(os.path.join(dirname, "*.fit_img"))
l=[f.replace(".fit_img",".fits") for f in s]


for o,n in zip(l,s):
    bashCommand = "mv %s %s"%(n,o)
    print(bashCommand)
    process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
    output, error = process.communicate()
