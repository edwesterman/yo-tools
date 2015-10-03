#!/bin/bash
set -x
sass style.scss:style.css;
bin/builder.rb < $1 | bin/process.rb;
bin/send_specmail.rb $2 $3;
bin/cleanup.sh
