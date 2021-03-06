#! /bin/bash

function ebr () {
  mvn ebr:create-recipe -DgroupId=$1 -DartifactId=$2 -Dversion=$3 -DbundleSymbolicName=$4
}

# Edit these as needed
GID='org.apache.lucene'
VERSION='8.0.0'
ARTIDS=(
lucene-analyzers-common
lucene-analyzers-smartcn
lucene-core
lucene-misc
lucene-queryparser
)
BSNS=(
org.apache.lucene.analyzers-common
org.apache.lucene.analyzers-smartcn
org.apache.lucene.core
org.apache.lucene.misc
org.apache.lucene.queryparser
)

for (( i=0; i< ${#ARTIDS[@]}; i++ )); do
  ebr ${GID} ${ARTIDS[${i}]} ${VERSION} ${BSNS[${i}]}
done
