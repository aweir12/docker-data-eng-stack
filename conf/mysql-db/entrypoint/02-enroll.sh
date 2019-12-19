 #!/bin/bash

if [ "${PR_ENROLL}" == "true" ]; then
  echo "  - job_name: ${MYSQL_DATABASE}
    static_configs:
      - targets: ['${PR_IP_LOC}']
        labels:
          alias: ${PR_ALIAS}" > ${PR_LOC_TGT}/scrape-config.yml
fi