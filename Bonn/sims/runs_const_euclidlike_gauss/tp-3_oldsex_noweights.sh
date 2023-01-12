#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclid2/euclid2_raid2/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid-gauss/tp3
SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_sexcat_nw
GROUPCATS=$ADAMOMDIR/groupcat.fits

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --groupcats=$GROUPCATS --cat_args=$SCRIPTDIR/configfiles_const/tp2.yaml --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --dist_type=uni --cattype=sex --ncpu=60 --ncat=4000 --skipdone --typecat=tp --runadamom #--runsims --runsex

