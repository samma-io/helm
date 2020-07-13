# Helm chart for deploying the Openvas scanner 
http://www.openvas.org/

## Begin with set you targets
In the values file setup you target that you want to scan.
The target can be a domain name like samma.io an ip address.


The helm chart will loop over you targets and setup cronjob for any of the targets.


## Scheduler
The cronjob will run after the scedule settings


## Output
When the scanner is done it will send out the finding in json format.
Ose your regular pipline to collect the logs.


## Example

### Create your values file ore use helm comman 


###This will show the ymal for create and run schdule a nmap scanner against the ip 10.0.0.1 (Remove --dry-run to apply)
```
 helm install openvas --dry-run  --debug --set target=https://samma.io openvas/
 ```

(Remove --dry-run to install the chart)

###Run with docker great for devs
```
docker run -it -e TARGET=10.100.0.10 -e CONFIG="Full and fast" sammascanner/openvas-scanner

```
