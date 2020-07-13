# Helm chart for deploying the artillery loadtester 
https://artillery.io/

## Begin with set you targets
Set your target with full url https://samma.io 

## Cronjob
The cronjob will run after the scedule settings


## Output
The load test will run a quick loadtest aginst the target and provide a simple json output.
This is only to get a small fingerprint how fast your app will reploy to request.
And then monitor the app during deployments to verify loadtest would not go down.


## Example

### Create your values file ore use helm comman 


###This will show the ymal for create and run schdule a nmap scanner against the ip 10.0.0.1 (Remove --dry-run to apply)
```
 helm install artillery --dry-run  --debug   artillery//
 ```

(Remove --dry-run to install the chart)

###Run with docker great for devs
```
docker run -it -e TARGET=https://ollebo.com sammascanner/artillery

```
