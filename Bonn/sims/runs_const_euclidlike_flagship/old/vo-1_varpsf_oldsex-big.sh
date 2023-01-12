#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclid5/euclid5_raid3/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid/vo-varpsf-grid-big

SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_trucat_nw
GROUPCATS=$ADAMOMDIR/groupcat.fits

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --groupcats=$GROUPCATS --cat_args=$SCRIPTDIR/configfiles_const/tw-big.yaml --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --dist_type=gems --cattype=tru  --ncpu=100 --ncat=200 --skipdone --typegroup=tw --runsims #--runadamom --runsims --usepsfimg --usevarpsf --rot_pair #--adamom_weight --runsex
