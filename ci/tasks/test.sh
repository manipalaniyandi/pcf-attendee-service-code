#!/bin/bash
( echo '#!/bin/sh' ; echo echo You can run executables on this fs ) > test.sh chmod +x test.sh

set -ex
pushd attendee-service-source
  echo "Fetching Dependencies"
  ./mvnw clean compile > /dev/null

  echo "Running Tests"
  ./mvnw test
popd

exit 0
