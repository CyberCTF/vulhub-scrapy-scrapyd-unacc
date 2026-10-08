# Upstream

| | |
| --- | --- |
| Project | Vulhub |
| Repository | https://github.com/vulhub/vulhub |
| Environment | `scrapy/scrapyd-unacc` |
| Version | default branch (Vulhub has no releases) |
| Commit | 8fd63916f7a8711e2e01dda0d27237e4d6175d38 |
| Licence | MIT |

| Here | Vulhub path |
| --- | --- |
| `app/` | [`scrapy/scrapyd-unacc`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/scrapy/scrapyd-unacc) |
| `base/scrapyd/1.2.1/` | [`base/scrapyd/1.2.1`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/scrapyd/1.2.1): the Dockerfile of `vulhub/scrapyd:1.2.1` |

The vendored folders are that commit, unchanged. The lab runs Vulhub's published image `vulhub/scrapyd:1.2.1`, pinned by tag (as Vulhub's own compose file does); its Dockerfile is vendored under `base/` to show how it is built. Building from `base/` instead would download the vulnerable software from its original sources, some of which are gone.

To update, replace the vendored folders with a newer Vulhub commit, then change this file.
