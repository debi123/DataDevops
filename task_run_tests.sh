1 #!/bin/sh 
2 
 
3 set -e 
4 
 
5 # task script is in resource-tutorial/10_job_inputs/ folder 
6 # application input is in gopath/src/github.com/cloudfoundry-community/simple-go-web-app folder 
7 # $GOPATH is gopath/ folder 
8 export GOPATH=$(pwd)/gopath:$(pwd)/gopath/src/github.com/cloudfoundry-community/simple-go-web-app/Godeps/_workspace 
9 cd gopath/src/github.com/cloudfoundry-community/simple-go-web-app/ 
10 
 
11 go test ./... 
