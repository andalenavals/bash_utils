#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclid9/euclid9_1/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid/tw-test-fly
#WORKDIR=/vol/euclid2/euclid2_raid2/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid/tw-test-fly

SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_trucat_nw
GROUPCATS=$ADAMOMDIR/groupcat.fits

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike_fly.py --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --groupcats=$GROUPCATS --cat_args=$SCRIPTDIR/configfiles_const/tw-test.yaml --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf-fly.yaml --dist_type=uni --cattype=sex --ncpu=250 --ncat=2 --typegroup=tw  --runfly --runadamom --runsex --run_sheared --rot_pair --skipdone --keepimgs #--usepsfimg --usevarpsf --keepimgs --runfly #--runsex --runadamom skipdone



