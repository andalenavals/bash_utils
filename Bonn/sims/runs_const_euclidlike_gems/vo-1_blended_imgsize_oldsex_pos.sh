#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclid2/euclid2_raid2/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid/vo-blended-imgsize

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --workdir=$WORKDIR --cat_args=$SCRIPTDIR/configfiles_const/vo-blended-imgsize.yaml --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --dist_type=gems --ncpu=120 --ncat=200 --typecat=tw --skipdone --typecat=tw --usepsfimg



