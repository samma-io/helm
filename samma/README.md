# Samma Security Scanner Helm Base

![Samma-io!](/assets/samma_logo.png)




## Samma Security Scanners
This scanner is part of the Samma Security Scanners

The Samma Security Scanners are all small openspurce scanners. That have ben docerixed and print there result in JSON format.
The result is then sent to ElasticSerarch for storage and displayed using Kibana ore Grafana.

To see all the scanners please go to [Samma.io](https://samma.io)

## Getting started
This is the default helm repo to deploy the samma scanner. In the repo you can setup to run the scanner in 

### Headless mode
If you set elastic and grafana to be off you can run the samma scanner in headless mode. Here logs are to be collected by your log pipeline and then stored on your own log setup.
Ore you can modifie the filebeat config to send log to your own destination.


### Gui Mode
Ad defult when deploying samma scanner a defult elasticsearch, grafana and kibana is deployed. The defult elasticsearch is only a singel node and will not be good for large scale elasticsearch deployments.


### Proxy access
With the helm chart is a simple webb proxy. This proxy will open access to Kibana, Elasticsearch and Grafana from one IP. Super handy for loadbalanser and in minikube.

the proxy access is disabled as defualt


## Console at Samma.io
To keep a updated target and get actions when new targets are add please visit http://console.samma.io.
Signe up and get the api key for your account.
add the api key as value when you deploy to connect the operator with your account.


## Quick start


### Add samma repo and update repo
```
helm repo add http://repo.samma.io
helm repo update 
```


### Install 
```
helm upgrade --install --set value samma_io.key=KEY_FROM_CONSOLE samma-io samma-io
```

### Verify
```
kubectl get all -n samma-io
```

### Add your first scanner
In the test folder you can find a test scanner to add to your installation 


