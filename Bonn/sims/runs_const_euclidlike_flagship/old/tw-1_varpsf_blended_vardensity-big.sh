#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid-flagship/tw-varpsf-blended-vardensity-big
SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_sexcat_w
KSBDIR=$WORKDIR/ksb_sexcat_w
GROUPCATS=groupcat.fits
PSFFILESDIR=/vol/euclidraid4/data/aanavarroa/catalogs/PSFs_PSFToolkit2022_test_shiftUm2.0/

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=INFO --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --ksbdir=$KSBDIR --psffilesdir=$PSFFILESDIR --groupcats=$GROUPCATS --cat_args=$SCRIPTDIR/configfiles_const/tw-blended-vardensity-big.yaml --tru_type=2 --const_type=sc8 --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --dist_type=flagship --cattype=sex --ncpu=2 --ncat=2 --typegroup=tw --skipdone --runsims --usepsfimg #--runadamom --use_weight #--usepsfimg --usevarpsf --runsims --runsex --run_check
