---
description: Create PR
agent: pr-manager
---

Analyze the current git diff against $ARGUMENTS branch and create a pull request.

Current changes:
!`git diff $ARGUMENTS...HEAD`

Based on these changes, generate:

1. A conventional commit-style PR title (following conventional commits specification)
2. A detailed description including:
   - Summary
   - What changes were made

Then execute these commands to create the PR:
!`git push -u origin $(git branch --show-current)`
!`gh pr create --title "[GENERATED TITLE]" --body "[GENERATED DESCRIPTION]"`

If any of those commands fail, cancel the operation.
