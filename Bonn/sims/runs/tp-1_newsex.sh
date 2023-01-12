#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas

#WORKDIR=/users/aanavarroa/test2
#CATARGS=$SCRIPTDIR/configfiles/tp-small.yaml
#SEXCONF=$SCRIPTDIR/configfiles/sexconf-small.yaml

WORKDIR=/vol/euclid5/euclid5_raid3/aanavarroa/catalogs/MomentsML/fullimages/tp
CATARGS=$SCRIPTDIR/configfiles/tp.yaml
SEXCONF=$SCRIPTDIR/configfiles/sexconf.yaml

cd $SCRIPTDIR

python run_sim_meas.py --workdir=$WORKDIR --cat_args=$CATARGS --sex_args=$SEXCONF --ncpu=1 --nthreads=250 --ncat=1 #--skipdone
