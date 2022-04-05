apiVersion: apps/v1
	  kind: Deployment
	  metadata:
	    name: simplegoserver
	  spec:
	    selector:
	      matchLabels:
	        run: simplegoserver
	    replicas: 3
	    template:
	      metadata:
	        labels:
	          run: simplegoserver
	      spec:
	        containers:
	          - name: simplegoserver
	            image: dailytiplabs/simplegoserver:latest
	            ports:
	            - containerPort: 8080
	        imagePullSecrets:
	          - name: dockerhub-creds
