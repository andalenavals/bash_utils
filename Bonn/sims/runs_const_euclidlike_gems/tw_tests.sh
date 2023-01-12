#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid/tw-test-ksb-random
SIMDIR=$WORKDIR/sim
SHEAREDSIMDIR=$WORKDIR/sim_sheared
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_trucat_w
#ADAMOMDIR=$WORKDIR/adamom_sexcat_w
#KSBDIR=$WORKDIR/ksb_sexcat_nw
KSBDIR=$WORKDIR/ksb_trucat_nw
GROUPCATS=groupcat.fits

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=DEBUG --simdir=$SIMDIR --shearedsimdir=$SHEAREDSIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --ksbdir=$KSBDIR --groupcats=$GROUPCATS --cat_args=$SCRIPTDIR/configfiles_const/tw-test.yaml --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --dist_type=gems --cattype=tru --ncpu=1 --ncat=20 --typegroup=tw --runsims --runsex --run_check --usepsfimg --usevarpsf --skipdone --runneis --matchinput --runadamom --use_weight  #--runksb --add_ics --plotstrucat --nsubcases=4 --savetrugalimg #--skipdone  #--usepsfimg #--usevarpsf  --rot_pair --runsims_sheared



