FROM golang

# Copy the local package files to the container's workspace.
COPY . /go/src/github.com/pivotal-nader-ziada/gohelloworld/

RUN pwd

RUN ls src/github.com/pivotal-nader-ziada/gohelloworld/test/gohelloworld/

RUN go install github.com/pivotal-nader-ziada/gohelloworld/test/gohelloworld/

ENTRYPOINT /go/bin/gohelloworld

# Document that the service listens on port 8080.
EXPOSE 8080