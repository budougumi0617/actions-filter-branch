workflow "filter branch" {
  on = "push"
  resolves = ["Shell"]
}

action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Shell" {
  uses = "actions/bin/sh@master"
  needs = ["Filters for GitHub Actions"]
  args = ["echo success"]
}
