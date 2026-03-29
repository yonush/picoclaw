@echo off
set GO111MODULE=on
set GOFLAGS=-mod=vendor -v
go mod vendor
:: strip debug info during build
go build  -tags "" -ldflags="-s -w" -o picoclaw.exe cmd/picoclaw/main.go
