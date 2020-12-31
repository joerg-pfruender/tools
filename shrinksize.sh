#!/bin/bash

#   Copyright 2020 Jörg Pfründer
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

if [[ "$1" == "-h" ]]; then
  echo "decreases the quality off all jpg files in the directory using imagemagick"
  echo "Usage: shrinksize.sh quality"
  echo "where quality should be between 1 and 99, default is 60"
  exit 0
fi

set -euo pipefail

QUALITY_VALUE=${1:-60} 

for i in *.jpg; 
do 
   convert ${i} -quality $QUALITY_VALUE small-${i}
done;
