#!/bin/bash

set -ex
chmod a+x ./test.sh
pushd attendee-service-source
  echo "Fetching Dependencies"
  ./mvnw clean compile > /dev/null

  echo "Running Tests"
  ./mvnw test
popd

exit 0