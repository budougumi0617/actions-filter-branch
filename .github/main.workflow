workflow "filter branch" {
  on = "push"
  resolves = ["Shell"]
}

action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@b2bea0749eed6beb495a8fa194c071847af60ea1"
  args = "branch master"
}

action "Shell" {
  uses = "actions/bin/sh@master"
  needs = ["Filters for GitHub Actions"]
  args = ["echo success"]
}
