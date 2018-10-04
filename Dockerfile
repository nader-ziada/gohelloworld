FROM golang

# Copy the local package files to the container's workspace.
ADD . /go/src/github.com/pivotal-nader-ziada/gohelloworld

# Build the outyet command inside the container.
# (You may fetch or manage dependencies here,
# either manually or with a tool like "godep".)
RUN go install github.com/pivotal-nader-ziada/gohelloworld

# Run the outyet command by default when the container starts.
ENTRYPOINT /go/bin/main

# Document that the service listens on port 8080.
EXPOSE 8080