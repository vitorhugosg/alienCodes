# Security configuration

- Keep runtime configuration in `backend/.env`; never commit environment files or credentials.
- Set `MAILJET_API_KEY` and `MAILJET_API_SECRET` in the backend environment.
- Set `PORTFOLIO_ADMIN_EMAILS` to a comma-separated list of trusted administrator emails. Portfolio uploads require a Passport API token and an allowlisted account.
- Set `APP_DEBUG=false` on public deployments.
- Set `TINYMCE_API_KEY` when building the frontend. It is delivered to browsers, so rotate it and restrict its allowed domains in the TinyMCE account; an environment variable does not make a browser key secret.
- This repository uses legacy Laravel/PHP and JavaScript dependencies. Plan a framework and dependency upgrade before deploying it as a public production service.
