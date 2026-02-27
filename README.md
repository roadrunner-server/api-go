<p align="center">
  <a href="https://roadrunner.dev" target="_blank">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://github.com/roadrunner-server/.github/assets/8040338/e6bde856-4ec6-4a52-bd5b-bfe78736c1ff">
      <img align="center" src="https://github.com/roadrunner-server/.github/assets/8040338/040fb694-1dd3-4865-9d29-8e0748c2c8b8">
    </picture>
  </a>
</p>

<p align="center">
  <a href="https://pkg.go.dev/github.com/roadrunner-server/api-go/v5"><img src="https://godoc.org/github.com/roadrunner-server/api-go/v5?status.svg"></a>
  <a href="https://goreportcard.com/report/github.com/roadrunner-server/api-go/v5"><img src="https://goreportcard.com/badge/github.com/roadrunner-server/api-go/v5"></a>
  <a href="https://discord.gg/TFeEmCs"><img src="https://img.shields.io/badge/discord-chat-magenta.svg"></a>
</p>

# RoadRunner API Go

Generated Go files from the RoadRunner [api](https://github.com/roadrunner-server/api) repository.

> **Note:** Changes merged to [api](https://github.com/roadrunner-server/api) automatically trigger a GitHub workflow that recompiles proto files and commits results to master.

## How to use

```bash
go get github.com/roadrunner-server/api-go/v5
```

## Rebuild

- `make` — installs plugins and tools ([`buf`](https://buf.build) must be available)
- `make update-proto` — updates the `proto/api` submodule and recompiles the generated Go code

## License

[MIT License](LICENSE)
