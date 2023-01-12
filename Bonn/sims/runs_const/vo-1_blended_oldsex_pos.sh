#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclid5/euclid5_raid3/aanavarroa/catalogs/MomentsML/fullimages_constimg/vo-blended-16384

cd $SCRIPTDIR

python run_sim_meas_constimg2.py --workdir=$WORKDIR --cat_args=$SCRIPTDIR/configfiles_const/vo-blended-16384.yaml --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --ncpu=60 --ncat=200 --typecat=tw



