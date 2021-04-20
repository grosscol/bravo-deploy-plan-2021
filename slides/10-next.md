---
author: Colin A. Gross
title: BRAVO Development
date: 2021-04-20
---

# BRAVO 2021 Goals

## Architecture Changes
- API Flask app 
  - Auth at data access point
- Vue JS application
  - staticly served

\* see [this repo](https://github.com/grosscol/scenery-bailiff) for auth demo 

## Development
- Single responsibility repositories
    - [Bravo API](https://github.com/statgen/bravo_api)
    - [Bravo UI](https://github.com/statgen/bravo_ui)
    - Bravo DataPrep
- Local machine
  - Pre-packaged data vignette (chr11 subset) 
- Linting pre-commit (PyFlakes)

## Testing
- Unit tests: fast & local
- Integration tests
    - Run in our environment, browser-dev
    - Testing against copy of actual data

## Deployment Options
- Provisioning e.g. [Ansible](https://www.ansible.com/use-cases/application-deployment)
- Containerized 
  - [Docker Swarm](https://docs.docker.com/engine/swarm/)
  - [Kubernetes](https://kubernetes.io/docs/concepts/workloads/pods/)
  - [Nomad](https://www.nomadproject.io/docs/job-specification)

## Deploy Dirs
- API and UI have been split.
- Instance config separate from app code.

```
/var/bravo/
├── instance
│   ├── config.py
│   └── venv
└── ui_instance
    ├── config.py
    └── venv
```
