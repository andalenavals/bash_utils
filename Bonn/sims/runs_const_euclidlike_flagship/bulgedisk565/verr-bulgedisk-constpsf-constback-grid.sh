#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid-flagship/verr-bulgedisk-constpsf-constback-grid
SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_trucat_nw_ss
KSBDIR=$WORKDIR/ksb_trucat_nw
GROUPCATS=groupcat.fits
PSFFILESDIR=/vol/euclidraid4/data/aanavarroa/catalogs/PSFs_PSFToolkit2022_test_shiftUm2.0/
CAT_ARGS=$SCRIPTDIR/configfiles_const/terr.yaml

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=INFO --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --ksbdir=$KSBDIR --psffilesdir=$PSFFILESDIR --groupcats=$GROUPCATS --cat_args=$CAT_ARGS --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --tru_type=2 --const_type=sc8 --pixel_conv --substractsky --dist_type=uniflagship --cattype=tru --ncpu=200 --ncat=10000 --skipdone --typegroup=tp --runsims --usepsfimg --runadamom #--savetrugalimg #--adamom_weight --runsex
