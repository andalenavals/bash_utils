#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid-gauss/vo-blended-vardensity-big

SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_sexcat_w
#ADAMOMDIR=$WORKDIR/adamom_trucat_w
KSBDIR=$WORKDIR/ksb_sexcat_w
GROUPCATS=groupcat.fits


cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=INFO --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --ksbdir=$KSBDIR --groupcats=$GROUPCATS --cat_args=$SCRIPTDIR/configfiles_const/tw-blended-vardensity-big.yaml --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --dist_type=gems --cattype=sex  --ncpu=100 --ncat=200 --typegroup=tw --runsims --runsex --run_check --runadamom --use_weight --runneis --rot_pair --skipdone #--match_pairs #--add_ics --runsims --runsex --nsubcases=2 --match_pairs



