#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclid2/euclid2_raid2/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid-gauss/vo

SIMDIR=$WORKDIR/sim
SHEAREDSIMDIR=$WORKDIR/sim_sheared
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_trucat_nw
GROUPCATS=$ADAMOMDIR/groupcat.fits


cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --simdir=$SIMDIR --shearedsimdir=$SHEAREDSIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --groupcats=$GROUPCATS --cat_args=$SCRIPTDIR/configfiles_const/vo.yaml --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --dist_type=gems --cattype=tru --ncpu=10 --ncat=200 --skipdone --typegroup=tw  --rot_pair --runsims --runadamom #--runsims_sheared #--runadamom #--runsims --runadamom --adamom_weight --runsims --runsex --match_pairs


