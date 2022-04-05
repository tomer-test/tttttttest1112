apiVersion: apps/v1
2	  kind: Deployment
3	  metadata:
4	    name: simplegoserver
5	  spec:
6	    selector:
7	      matchLabels:
8	        run: simplegoserver
9	    replicas: 3
10	    template:
11	      metadata:
12	        labels:
13	          run: simplegoserver
14	      spec:
15	        containers:
16	          - name: simplegoserver
17	            image: dailytiplabs/simplegoserver:latest
18	            ports:
19	            - containerPort: 8080
20	        imagePullSecrets:
21	          - name: dockerhub-creds
