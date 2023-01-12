#!/bin/bash
export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/momentsml/                               
#export PYTHONPATH=${PYTHONPATH}:/users/aanavarroa/mygitrepos/tenbilac/

GLOBAL=/users/aanavarroa/original_gitrepos/
SCRIPTDIR=$GLOBAL/TF_MomentsML_experiments/examples/TF_fullimages_sims-meas
WORKDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid-flagship0.05/tw-bulgedisk-constpsf-constback-grid-big
BLENDEDDIR=/vol/euclidraid4/data/aanavarroa/catalogs/MomentsML/fullimages_constimg_euclid-flagship0.05/tw-bulgedisk-constpsf-constback-blended-vardensity-big/sim
SIMDIR=$WORKDIR/sim
SEXDIR=$WORKDIR/sex1.0
ADAMOMDIR=$WORKDIR/adamom_sexcat_nw_ss1.0
KSBDIR=$WORKDIR/ksb_trucat_nw
GROUPCATS=groupcat.fits
PSFFILESDIR=/vol/euclidraid4/data/aanavarroa/catalogs/PSFs_PSFToolkit2022_shiftUm2.0/
ADAMOMPSFCAT=/vol/euclidraid4/data/aanavarroa/catalogs/all_adamom_PSFToolkit_2022_shiftUm2.0.fits
CAT_ARGS=$SCRIPTDIR/configfiles_const/tw-big.yaml
SEX_ARGS=$SCRIPTDIR/configfiles_const/oldsexconf_test.yaml
cd $SCRIPTDIR

python run_sim_meas_constimg_euclidlike.py --loglevel=INFO --transformtogriddir=$BLENDEDDIR --simdir=$SIMDIR --sexdir=$SEXDIR --adamomdir=$ADAMOMDIR --ksbdir=$KSBDIR --psffilesdir=$PSFFILESDIR --adamompsfcatalog=$ADAMOMPSFCAT --groupcats=$GROUPCATS --cat_args=$CAT_ARGS --sex_args=$SEX_ARGS --tru_type=2 --const_type=sc8 --pixel_conv --dist_type=flagship --cattype=sex --ncpu=120 --ncat=200 --typegroup=tw --skipdone --substractsky --transformtogrid --runsims --usepsfimg --runsex --runadamom #--usevarpsf --usevarsky --use_weight --runsex --run_check



