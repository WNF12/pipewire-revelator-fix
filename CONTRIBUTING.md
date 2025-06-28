# Contributing to pipewire-revelator-fix

We welcome PRs that improve compatibility or simplify setup.

## Workflow
1. Fork this repo
2. Create a feature branch: `git checkout -b feature-name`
3. Commit meaningful changes
4. Test:
   ./restore-pipewire.sh
   wpctl status
   pactl list sinks short
5. Push & submit a PR via GitHub CLI or web
