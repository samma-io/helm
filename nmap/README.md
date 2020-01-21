# Helm chart for deploying the nmap scanner 

## Begin with set you targets
In the values file setup you target that you want to scan.
The target can be a domain name like samma.io an ip address.

The helm scarts will loop over you targets and setup cronjob for any of the targets.
Its better to have one ip ore domain here. NMAP also suppprt ip range like 10.0.0.0/24 ore standalon ip



## Cronjob
The cronjob will run after the scedule settings


## Output
When the scanner is done it will send out the finding in json format.
Ose your regular pipline to collect the logs.


## Example

### Create your values file ore use helm comman 


###This will show the ymal for create and run schdule a nmap scanner against the ip 10.0.0.1 (Remove --dry-run to apply)
```
 helm install nmap --dry-run --debug --set target=10.0.0.1 nmap/
 ```


###Run with docker great for devs
```
docker run -it -e TARGET=10.0.0.1 sammascanner/nmap

docker run -it -e TARGET=10.0.0.1 sammascanner/nmap python /code/nmap_httprecon.py
```
