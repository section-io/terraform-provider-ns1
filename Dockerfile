FROM golang:1.10.4-alpine

RUN apk add make bash

WORKDIR /go/src/github.com/terraform-providers/terraform-provider-ns1
COPY . .

RUN make build

ENTRYPOINT ["cat", "/go/bin/terraform-provider-ns1"]
