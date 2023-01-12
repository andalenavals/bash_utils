#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclid5/euclid5_raid3/aanavarroa/catalogs/MomentsML/fullimages/tw

cd $SCRIPTDIR

python run_sim_meas.py --workdir=$WORKDIR --cat_args=$SCRIPTDIR/configfiles/tw.yaml --sex_args=$SCRIPTDIR/configfiles/sexconf.yaml --ncpu=60 --nthreads=1 --ncat=1 --skipdone



