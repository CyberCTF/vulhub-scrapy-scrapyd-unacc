# Scrapyd Unauthenticated Egg Upload RCE

[Vulhub](https://vulhub.org)'s [`scrapy/scrapyd-unacc`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/scrapy/scrapyd-unacc) environment, by
phith0n and the Vulhub contributors: Scrapyd 1.2.1 with its JSON API open and no authentication, so anyone uploads a project egg whose code runs on the server. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine runs Vulhub's published image `vulhub/scrapyd:1.2.1`; the environment folder is vendored in [`app/`](app) and the image's Dockerfile in [`base/`](base).

| Machine | Service |
| --- | --- |
| scrapyd | Scrapyd 1.2.1 on port 6800 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:6800/ (the Scrapyd web UI and JSON API). The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/scrapy/scrapyd-unacc/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
