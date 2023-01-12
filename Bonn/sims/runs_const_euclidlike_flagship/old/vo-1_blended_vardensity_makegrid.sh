#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid/vo-constpsf-grid-big
BLENDEDDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid/vo-constpsf-blended-vardensity-big/sim
SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex
ADAMOMDIR=$WORKDIR/adamom_sexcat_nw
KSBDIR=$WORKDIR/ksb_sexcat_w
GROUPCATS=groupcat.fits

cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=INFO --transformtogriddir=$BLENDEDDIR --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --ksbdir=$KSBDIR --groupcats=$GROUPCATS --cat_args=$SCRIPTDIR/configfiles_const/tw-big.yaml --sex_args=$SCRIPTDIR/configfiles_const/oldsexconf.yaml --dist_type=gems --cattype=sex --ncpu=100 --ncat=200 --typegroup=tw --skipdone --runsims --usepsfimg --runsex --runadamom --rot_pair --match_pairs --matchinput #--runadamom --runsex #--transformtogrid --runsims --usepsfimg --runadamom --rot_pair #--use_weight --runneis --runsex --match_pairs --matchinput



