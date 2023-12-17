# Compose Starters

A set of docker-compose files setup for convenience purposes.

## Requirements

This project requires the following software to be installed:

- docker\*
- docker-compose\* (included as `docker compose` by default in recent docker versions)

Optionally, you can also install:

- [Taskfile](https://taskfile.dev/) (This is used for convenience to run the services. If not installed, you can simply check the [file itself](/Taskfile.yml) for the required commands)

## Usage

To run any of the services, simply

```bash
task up COMPOSE_NAME=<compose_bare_name>
```

where the `COMPOSE_NAME` is the name of the file without the leading path and the extension.

### Example

If you have [Taskfile](https://taskfile.dev/) installed

```bash
task up COMPOSE_NAME=elastic-stack
```

or alternatively if `task` is not installed.

```bash
docker-compose -f ./compose/elastic-stack.yml up -d
```
