# Helm chart for deploying the nikto scanner 

## Begin with set you targets
In the values file setup you target that you want to scan.
The target can be a domain name like samma.io an ip address.

The helm scarts will loop over you targets and setup cronjob for any of the targets.
Its better to have one ip ore domain here. Nikto can be slow when scanning a large target

## Deploy with nikto
Easy run nikto in kubernetes with helm. Ore test it localy med docker images that run.


## Settings

### Tuning
When running nikto you can set some scanning tunings. This can be good to improve the speed of the scans.
And deside on what you want to run 

https://cirt.net/nikto2-docs/options.html#id2791140

You can set the tuning with envoriment TUNINIG settings.
It defaults to 23


### Ports
Sometime your app is running on a diffrent port.
Here you can set the port to be scanned with the PORT enviroment setting


## Helm
You can setup one target when using the target value. Ore if you want to use multipel targets use a values file and annd your targets in that file.

```
helm install nikto --dry-run --debug nikto/

helm install nikto --dry-run --debug  --set target=dn.se --set tuning=23 --set port=8443 nikto/
```

## Docker
To run the nikto scanner in docker to fast test a site run the following command

```
docker run -it -e TARGET=samma.io sammascanner/nikto
```