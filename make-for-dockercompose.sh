#!/usr/bin/env -S bash

set -exuo pipefail

# make-for-dockercompose.sh (Ver.20240721)

DIR_CURRENT=$(pwd)
DIR_ME=$(cd $(dirname $0) && pwd)
DIR_BUILD='_build'

# latexpdf
sphinx-build -M latexpdf . ${DIR_BUILD}

# html
sphinx-build -M html . ${DIR_BUILD}

# live reload (2024-07-21現在、Docker Container「Sphinx v7.4.7」で動作させることができていない)
#sphinx-autobuild --host 0.0.0.0 --port 8000 . ${DIR_BUILD}/html
