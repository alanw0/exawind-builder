#!/usr/bin/env bash
#
# ExaWind environment source script for system: %%SYSTEM%%
#
# Autogenerated by exawind-builder
#
# 1. See https://exawind-builder.readthedocs.io for documentation
# 2. Use create-pyenv.sh to regenerate this script
#

#
# Setup variables used by functions
#
export EXAWIND_SRCDIR=%%SRCDIR%%
export EXAWIND_SYSTEM=%%SYSTEM%%
export EXAWIND_COMPILER=%%COMPILER%%
export EXAWIND_CFGFILE=exawind-config
export EXAWIND_PROJECT_DIR=${EXAWIND_PROJECT_DIR:-$(dirname ${EXAWIND_SRCDIR})}

# Source scripts necessary for determining environment
source ${EXAWIND_SRCDIR}/src/environment.bash
source ${EXAWIND_SRCDIR}/envs/${EXAWIND_SYSTEM}.bash
source ${EXAWIND_SRCDIR}/src/python-env.bash

export EXAWIND_INSTALL_DIR=${EXAWIND_INSTALL_DIR:-${EXAWIND_PROJECT_DIR}/install/${EXAWIND_COMPILER}}

# Source any user specific configuration
exawind_load_user_configs

export CONDA_ROOT_DIR=${CONDA_ROOT_DIR:-%%CONDA_ROOT%%}
export EXAWIND_CONDA_ENV=${EXAWIND_CONDA_ENV:-%%CONDA_ENV%%}

# Finally load the environment
exawind_env
exawind_py_env
