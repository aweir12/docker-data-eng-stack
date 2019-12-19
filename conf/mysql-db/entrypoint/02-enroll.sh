 #!/bin/bash

if [ $ENROLL = "true" ]; then
  echo "  - job_name: ${MYSQL_DATABASE}
    static_configs:
      - targets: ['${PR_LOC}']
        labels:
          alias: ${PR_ALIAS}" > scrape-config.yml
fi