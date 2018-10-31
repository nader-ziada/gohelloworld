FROM golang


# Copy the local package files to the container's workspace.
ADD . /go/src/github.com/pivotal-nader-ziada/gohelloworld

RUN go install github.com/pivotal-nader-ziada/gohelloworld

RUN  /usr/bin/curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
    && chmod +x ./kubectl  \
    &&  mv ./kubectl /usr/local/bin/kubectl

ENTRYPOINT /go/bin/gohelloworld

# Document that the service listens on port 8080.
EXPOSE 8080