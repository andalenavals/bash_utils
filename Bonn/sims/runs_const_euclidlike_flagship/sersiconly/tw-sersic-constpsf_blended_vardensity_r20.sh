#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid-flagship/tw-sersic-constpsf-constback-blended-vardensity-big
SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_sexcat_w_20
KSBDIR=$WORKDIR/ksb_sexcat_w
GROUPCATS=groupcat.fits
PSFFILESDIR=/vol/euclidraid4/data/aanavarroa/catalogs/PSFs_PSFToolkit2022_test_shiftUm2.0/
#CAT_ARGS=$SCRIPTDIR/configfiles_const/tw-blended-vardensity-big.yaml
CAT_ARGS=$SCRIPTDIR/configfiles_const/tw-blended-test.yaml

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=INFO --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --ksbdir=$KSBDIR --psffilesdir=$PSFFILESDIR --groupcats=$GROUPCATS --cat_args=$CAT_ARGS --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --tru_type=1 --const_type=sc8 --pixel_conv --dist_type=gems --cattype=sex --ncpu=100 --ncat=2 --typegroup=tw --skipdone --runsims --usepsfimg #--runsex --run_check --runadamom --use_weight --aperture_r=20 --runneis 



