@echo off
setlocal
cd /D %~dp0

set GO111MODULE=on
set GOFLAGS=-mod=mod -v
go mod download
:: strip debug info during build
go generate ./...
go build -tags "" -ldflags="-s -w" -o picoclaw.exe cmd/picoclaw/main.go
