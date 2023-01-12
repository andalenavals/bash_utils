#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/         

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclid2/euclid2_raid2/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid-gauss/tw-blended-vardensity-big

SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
#ADAMOMDIR=$WORKDIR/adamom_sexcat_w
ADAMOMDIR=$WORKDIR/adamom_trucat_w
GROUPCATS=$ADAMOMDIR/groupcat.fits

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --groupcats=$GROUPCATS --cat_args=$SCRIPTDIR/configfiles_const/tw-blended-vardensity-big.yaml --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --dist_type=gems --cattype=tru --adamom_weight --ncpu=100 --ncat=100 --typegroup=tw --skipdone --runadamom --runsims --runsex --run_check #--add_ics --runadamom #--plotstrucat #--runsims --runsex --add_ics  --runsex --run_check --runadamom --nsubcases=2


