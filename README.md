# ubooquity-base
Base kustomize files for homelab ubooquity deployment. 
This includes a deployment for 1 ubooquity server and an ingress that forwards
to both user and admin interfaces.  The expectation is that you extend this base, 
add your own persistent drives for comics and ebooks, and then change the URL as
appropriate.  If you run the build it just builds and pushes the container to my 
repo.  Doesn't deploy the base as I expect you'll add an overlay for your local
environment.
