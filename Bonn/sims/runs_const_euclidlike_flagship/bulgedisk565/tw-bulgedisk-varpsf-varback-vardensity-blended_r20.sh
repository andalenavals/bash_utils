#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid-flagship/tw-bulgedisk-varpsf-varback-blended-vardensity-big
SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_sexcat_w_20_ss
KSBDIR=$WORKDIR/ksb_sexcat_w
GROUPCATS=groupcat.fits
PSFFILESDIR=/vol/euclidraid4/data/aanavarroa/catalogs/PSFs_PSFToolkit2022_test_shiftUm2.0/
ADAMOMPSFCAT=/vol/euclidraid4/data/aanavarroa/catalogs/all_adamom_PSFToolkit_2022_test_shiftUm2.0.fits
CAT_ARGS=$SCRIPTDIR/configfiles_const/flagship-tw-blended-vardensity-big.yaml
#CAT_ARGS=$SCRIPTDIR/configfiles_const/tw-blended-test.yaml
SEX_ARGS=$SCRIPTDIR/configfiles_const/oldsexconf.yaml
cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=INFO --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR  --ksbdir=$KSBDIR --psffilesdir=$PSFFILESDIR --adamompsfcatalog=$ADAMOMPSFCAT --groupcats=$GROUPCATS --cat_args=$CAT_ARGS --sex_args=$SEX_ARGS --tru_type=2 --const_type=sc8 --pixel_conv --dist_type=flagship --cattype=sex --ncpu=200 --ncat=200 --typegroup=tw --skipdone --substractsky --runsims --usepsfimg --usevarsky --usevarpsf --runsex --run_check --runadamom --use_weight --aperture_r=20



