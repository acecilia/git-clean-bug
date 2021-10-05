#!/bin/bash

set -euo pipefail

git_clean_ignored() {
    git clean -ffdX
}

prepare_ignored_files() {
    mkdir -p vendor/subdir
    touch vendor/subdir/file1.c
    touch vendor/subdir/file2.c
}

${@}
