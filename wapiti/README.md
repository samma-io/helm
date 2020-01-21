# Helm chart for deploying the Wapiti scanner 
https://wapiti.sourceforge.io/

## Begin with set you targets
In the values file setup you target that you want to scan.
The target can be a domain name like samma.io an ip address.

Important when using the wapiti scanner you need a ending / 
So a full target must look like this https://samma.io/

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
 helm install arachni --dry-run  --debug --set target=https://samma.io arachni/
 ```

(Remove --dry-run to install the chart)

###Run with docker great for devs
```
docker run -it -e TARGET=https://ollebo.com sammascanner/arachni

```
