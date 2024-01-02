#!/bin/bash
pdl(){
  echo "====================================="
  echo "====================================="
}
pdl
currPath=$(pwd)
#if [[ ${PATH} == *${currPath}* ]] ; then
if [[ ${PATH} =~ ${currPath} ]] ; then
  #echo ${PATH} contrains $currPath
  echo "PATH=${PATH}"
  echo "currPath=${currPath}"
  echo "Do nothing and exiting .........."

else
  echo "PATH=${PATH}"  
  echo "Current folder's Path=${currPath}"
  echo "Adding currPath to PATH" 
  export PATH="${currPath}:${PATH}"
  echo "Done and PATH=${PATH}"
fi
pdl
#go run build/main.go 
