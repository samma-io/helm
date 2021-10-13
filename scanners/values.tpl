#
# Global values for the scanner 
#

# Here are the targets to be used.
#
# (have not found how i cna use one target for all)
nmap:
  target: "$TARGET"
  cron:
    enable: "true" # false for no crantab true for enabling cront scans
    schedule: "01 13 * * *"
  #Send logs with filebeat to elasticsearch
  filebeat: "enable" # any other string will disable it enbale to enable it
  elasticsearch: http://elasticsearch:9200
nikto:
  target: "$TARGET"
  cron:
    enable: "true" # false for no crantab true for enabling cront scans
    schedule: "01 13 * * *"
  #Send logs with filebeat to elasticsearch
  filebeat: "enable" # any other string will disable it enbale to enable it
  elasticsearch: http://elasticsearch:9200
base:
  target: "$TARGET"
  cron:
    enable: "true" # false for no crantab true for enabling cront scans
    schedule: "01 13 * * *"
  #Send logs with filebeat to elasticsearch
  filebeat: "enable" # any other string will disable it enbale to enable it
  elasticsearch: http://elasticsearch:9200
tsunami:
  target: "$TARGET"
  #targetip: "1.1.1.1"
  cron:
    enable: "true" # false for no crantab true for enabling cront scans
    schedule: "01 14 * * *"
  #Send logs with filebeat to elasticsearch
  filebeat: "enable" # any other string will disable it enbale to enable it
  elasticsearch: http://elasticsearch:9200

