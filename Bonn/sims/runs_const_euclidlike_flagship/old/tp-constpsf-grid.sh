#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid/tp-constpsf
SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_trucat_nw
KSBDIR=$WORKDIR/ksb_sexcat_nw
GROUPCATS=groupcat.fits

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=INFO --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --ksbdir=$KSBDIR --groupcats=$GROUPCATS --cat_args=$SCRIPTDIR/configfiles_const/tp2.yaml --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --dist_type=uni --cattype=tru --ncpu=50 --ncat=4000 --skipdone --typegroup=tp --runadamom --runsims --usepsfimg #--adamom_weight --runsex
