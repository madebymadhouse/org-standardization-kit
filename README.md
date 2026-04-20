# org-standardization-kit

Reusable scripts and runbooks for a full Mad House org standardization pass.

## What this repo is for

- Pull the current repo roster directly from GitHub.
- Generate a local audit checklist for consistency checks.
- Standardize repo contracts (`README`, `CONTRIBUTING`, issue/PR templates, workflows).
- Keep work branch-first and PR-first.

## Quick start

```bash
./scripts/standardize-org.sh madebymadhouse
```

The command creates an `output/<org>-repos.txt` roster and an `output/<org>-checklist.md` checklist you can execute repo-by-repo.

## Next build targets

- Add an optional mode that clones missing repos to a target directory.
- Add a drift report command that compares repo contracts against canonical templates.
- Add a PR creation helper that opens one PR per repo with a shared title prefix.
