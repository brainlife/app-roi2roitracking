#!/bin/bash
module load matlab/2019a
mkdir -p compiled

cat > build.m <<END
addpath(genpath('/N/u/hayashis/git/vistasoft'))
%addpath(genpath('/N/u/brlife/git/encode'))
addpath(genpath('/N/u/brlife/git/jsonlab'))
%addpath(genpath('/N/u/brlife/git/spm'))
addpath(genpath('/N/u/brlife/git/wma_tools'))
mcc -m -R -nodisplay -d compiled classificationGenerator
exit
END
matlab -nodisplay -nosplash -r build
