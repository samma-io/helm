# Helm chart for deploying the nikto scanner 

## Begin with set you targets
In the values file setup you target that you want to scan.
The target can be a domain name like samma.io an ip address.

The helm scarts will loop over you targets and setup cronjob for any of the targets.
Its better to have one ip ore domain here. NMAP also suppprt ip range like 10.0.0.0/24 ore standalon ip



## Cronjob
If you enable the setting cron job the scanners will be deploy as cronjob and run a scedule



## Output
By enabling filebeat the result is send into elasticsearch.
If not then result are logs into stout.


## Example

### Create your values file ore use helm comman 


###This will show the yaml for create and run schdule a nmap scanner against the ip 10.0.0.1 (Remove --dry-run to apply)
```
 helm install nikto --dry-run --debug --set target=10.0.0.1 nikto/
 ```


