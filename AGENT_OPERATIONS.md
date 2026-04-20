# Agent Operations

This repository uses the full Mad House agent fleet under `.github/agents/`.

## Delegation Rules

- Start with `delegator.agent.md` for routing.
- Use `librarian.agent.md` for cross-repo audits and unification passes.
- Use `updater.agent.md` for implementing audit fixes.
- Use `git-keeper.agent.md` for branch/PR/merge hygiene.
- Use `playbook-builder.agent.md` to convert repeated work into reusable runbooks.

## Standard Workflow

1. Audit current state.
2. Generate fix plan.
3. Implement targeted changes.
4. Validate checks.
5. Open PR with What/Why/Validation.
6. Capture lessons in playbook docs.
