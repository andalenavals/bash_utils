#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid/tp-constpsf
SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_sexcat_nw_ss
KSBDIR=$WORKDIR/ksb_sexcat_nw
GROUPCATS=groupcat.fits
CATARGS=$SCRIPTDIR/configfiles_const/tp2.yaml
#CATARGS=$SCRIPTDIR/configfiles_const/tp-test.yaml
SEXARGS=$SCRIPTDIR/configfiles_const/oldsexconf.yaml
#SEXARGS=$SCRIPTDIR/configfiles_const/sexconf.yaml

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=INFO --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --ksbdir=$KSBDIR --groupcats=$GROUPCATS --cat_args=$CATARGS --sex_args=$SEXARGS --dist_type=uni --cattype=sex --ncpu=10 --nthreads=1 --ncat=4000 --skipdone --typegroup=tp #--runadamom --substractsky --runsex #--runsims --usepsfimg #--adamom_weight --runsex
