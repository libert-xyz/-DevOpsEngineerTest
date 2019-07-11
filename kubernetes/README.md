



`kubectl apply -f namespace.yml`

`bash create_ssl.sh`

** replace output from the command above in secret.yml

`kubectl apply -f deployment.yml`
`kubectl apply -f secret.yml`
`kubectl apply -f service.yml`
