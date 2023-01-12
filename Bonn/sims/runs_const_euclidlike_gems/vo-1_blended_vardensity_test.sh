#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid/vo-constpsf-blended-vardensity-big-test
SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_sexcat_w
KSBDIR=$WORKDIR/ksb_sexcat_w
GROUPCATS=groupcat.fits
#CATARGS=$SCRIPTDIR/configfiles_const/tw-blended-vardensity-big.yaml
CATARGS=$SCRIPTDIR/configfiles_const/tw-blended-test.yaml
SEXARGS=$SCRIPTDIR/configfiles_const/oldsexconf.yaml

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=INFO --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --ksbdir=$KSBDIR --groupcats=$GROUPCATS --cat_args=$CATARGS --sex_args=$SEXARGS --dist_type=gems --cattype=sex --ncpu=100 --ncat=4 --typegroup=tw --skipdone --runneis --runadamom --use_weight --aperture_r=30 --runsims #--usepsfimg --runsex --run_check



