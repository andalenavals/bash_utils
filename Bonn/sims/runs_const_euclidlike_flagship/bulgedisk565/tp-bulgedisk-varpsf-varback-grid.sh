#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid-flagship/tp-bulgedisk-varpsf-varback-grid
SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_sexcat_nw_ss
KSBDIR=$WORKDIR/ksb_sexcat_nw
GROUPCATS=groupcat.fits
PSFFILESDIR=/vol/euclidraid4/data/aanavarroa/catalogs/PSFs_PSFToolkit2022_test_shiftUm2.0/
ADAMOMPSFCAT=/vol/euclidraid4/data/aanavarroa/catalogs/all_adamom_PSFToolkit_2022_test_shiftUm2.0.fits
CAT_ARGS=$SCRIPTDIR/configfiles_const/tp2.yaml
#CAT_ARGS=$SCRIPTDIR/configfiles_const/tp-test.yaml

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=INFO --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --ksbdir=$KSBDIR --psffilesdir=$PSFFILESDIR --adamompsfcatalog=$ADAMOMPSFCAT --groupcats=$GROUPCATS --cat_args=$CAT_ARGS --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --tru_type=2 --const_type=sc8 --pixel_conv --substractsky --dist_type=uniflagship --cattype=sex --ncpu=120 --ncat=4000 --skipdone --typegroup=tp --runadamom --runsex #--runsims --usepsfimg --usevarsky --usevarpsf #--savetrugalimg #--adamom_weight --runsex 
