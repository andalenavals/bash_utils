#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclid5/euclid5_raid3/aanavarroa/catalogs/MomentsML/fullimages_constimg/vp

cd $SCRIPTDIR

python run_sim_meas_constimg.py --workdir=$WORKDIR --cat_args=$SCRIPTDIR/configfiles_const/vp.yaml --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --ncpu=1 --ncat=5000 --skipdone

