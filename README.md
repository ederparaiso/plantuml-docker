# plantuml-docker

A docker image with PlantUML.

## Build

- Locate desired version in https://github.com/plantuml/plantuml/releases
- Set environment variable without "v"
- Run build command

Example:
```sh
PLANTUML_VERSION=1.2022.5
docker build --build-arg PLANTUML_VERSION=$PLANTUML_VERSION -t plantuml-docker:latest -t plantuml-docker:v$PLANTUML_VERSION .
```

## Usage

Reference: https://plantuml.com/command-line

Examples:

```sh
# display help
docker run --rm plantuml:latest -help

# process local file and generate outputs as non root user
docker run --rm -v "$(pwd):/data" -u "$(id -u):$(id -g)" plantuml:latest -tpng /data/file.puml
```
