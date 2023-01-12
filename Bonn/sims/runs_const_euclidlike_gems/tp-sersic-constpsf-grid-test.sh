#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid/tp-constpsf-test
SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_sexcat_nw
KSBDIR=$WORKDIR/ksb_sexcat_nw
GROUPCATS=groupcat.fits
CATARGS=$SCRIPTDIR/configfiles_const/tp2.yaml
#CATARGS=$SCRIPTDIR/configfiles_const/tp-test.yaml
SEXARGS=$SCRIPTDIR/configfiles_const/oldsexconf.yaml
#SEXARGS=$SCRIPTDIR/configfiles_const/sexconf.yaml

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=INFO --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --ksbdir=$KSBDIR --groupcats=$GROUPCATS --cat_args=$CATARGS --sex_args=$SEXARGS --dist_type=gems --cattype=sex --ncpu=20 --nthreads=1 --ncat=5 --skipdone --typegroup=tp --runadamom --runsims --usepsfimg --runsex --substractsky  --usevarpsf #--adamom_weight --runsex
