#! /bin/bash

npm test  --prefix ./tests
status=$?

cp -r tests/playwright-report/* /report

exit $status
