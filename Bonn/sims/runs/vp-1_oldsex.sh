#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclid5/euclid5_raid3/aanavarroa/catalogs/MomentsML/fullimages/vp

cd $SCRIPTDIR

python run_sim_meas2.py --workdir=$WORKDIR --cat_args=$SCRIPTDIR/configfiles/vp.yaml --sex_args=$SCRIPTDIR/configfiles/oldsexconf.yaml --ncpu=60 --ncat=1 #--skipdone


