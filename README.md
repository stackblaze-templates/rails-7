# Ruby on Rails [![Version](https://img.shields.io/badge/version-7-cc0000)](https://github.com/stackblaze-templates/rails-7) [![Maintained by StackBlaze](https://img.shields.io/badge/maintained%20by-StackBlaze-blue)](https://stackblaze.com) [![Weekly Updates](https://img.shields.io/badge/updates-weekly-green)](https://github.com/stackblaze-templates/rails-7/actions) [![License](https://img.shields.io/github/license/stackblaze-templates/rails-7)](LICENSE) [![Deploy on StackBlaze](https://img.shields.io/badge/Deploy%20on-StackBlaze-orange)](https://stackblaze.com)

<p align="center"><img src="logo.png" alt="rails-7" width="120"></p>

A full-stack Ruby web framework optimized for developer happiness. Rails follows convention over configuration and includes everything needed to build modern web apps.

> **Credits**: Built on [Ruby on Rails](https://rubyonrails.org) by [Rails Core Team](https://github.com/rails). All trademarks belong to their respective owners.

## Deploy on StackBlaze

This template includes a `stackblaze.yaml` for one-click deployment on [StackBlaze](https://stackblaze.com).

## Local Development

```bash
docker compose up
```

See the project files for configuration details.

## Security & Production Configuration

Before deploying to production, you **must** set the following environment variables:

| Variable | Description |
|---|---|
| `SECRET_KEY_BASE` | Secret key for encrypting cookies and sessions. Generate with `rails secret`. |
| `RAILS_MASTER_KEY` | Master key to decrypt `config/credentials.yml.enc`. See `config/master.key` (never commit this file). |
| `DATABASE_URL` | Full PostgreSQL connection string (e.g. `postgres://user:pass@host/dbname`). |

> **Warning**: The app enforces SSL in production (`config.force_ssl = true`). Ensure your hosting environment terminates TLS before the Rails process, or configure your load balancer/proxy accordingly.

> **Warning**: `config.require_master_key = true` is enabled. The app will refuse to start in production if `RAILS_MASTER_KEY` is not set or `config/master.key` is absent.

---

### Maintained by [StackBlaze](https://stackblaze.com)

This template is actively maintained by StackBlaze. We perform **weekly automated checks** to ensure:

- **Up-to-date dependencies** — frameworks, libraries, and base images are kept current
- **Security scanning** — continuous monitoring for known vulnerabilities and CVEs
- **Best practices** — configurations follow current recommendations from upstream projects

Found an issue? [Open a ticket](https://github.com/stackblaze-templates/rails-7/issues).
