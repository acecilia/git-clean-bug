# Git clean bug

This repository demonstrates an issue in git clean, where ignored files in a subdirectory will not be removed when running `git clean -ffdX`.

Git version: `git version 2.30.1 (Apple Git-130)`

## How to reproduce the issue:
1. Run `./run.sh prepare_ignored_files` to create ignored files under `vendor/subdir`
2. Run `./run.sh git_clean_ignored`
3. Run `ls vendor/subdir`, and see how the ignored files are still there
