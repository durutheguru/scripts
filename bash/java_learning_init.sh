#!/bin/bash

tar -xf ${1}
mv ${1%.*} ~/IdeaProjects/Private/Learning
cd ~/IdeaProjects/Private/Learning/${1%.*}
open -na "IntelliJ IDEA CE.app" --args "."

