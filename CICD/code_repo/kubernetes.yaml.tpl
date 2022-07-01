apiVersion: apps/v1
kind: Deployment
metadata: 
  name: my-first-app-deployement
spec: 
  replicas: 5
  selector: 
    matchLabels: 
      app: gcp-6m9
  template: 
    metadata: 
      labels: 
        app: gcp-6m9
    spec: 
      containers: 
        - image: gcr.io/GOOGLE_CLOUD_PROJECT/banking_app:COMMIT_SHA
          name: my-first-app-container
