#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclid9/euclid9_1/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid-gauss/vo

SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_sexcat_nw
GROUPCATS=$ADAMOMDIR/groupcat_match.fits


cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike_fly.py --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --groupcats=$GROUPCATS --cat_args=$SCRIPTDIR/configfiles_const/vo.yaml --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf-fly.yaml --dist_type=gems --cattype=sex --ncpu=50 --ncat=55 --typegroup=tw  --runadamom --runsex --run_sheared --rot_pair --skipdone --keepimgs --match_pairs #--runfly --runadamom #--runsims --runadamom --adamom_weight --runsims --runsex


