#!/bin/bash
set -x
sass style.scss:style.css;
bin/builder.rb | bin/process.rb;
bin/testmail.rb;
set +x 
echo "Test mail sent"
set -x 
bin/sendmail.rb;
bin/cleanup.sh