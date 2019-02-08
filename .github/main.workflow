workflow "Trigger from other workflow" {
  on = "repository_dispatch"
  resolves = ["GitHub Action for Docker"]
}

action "GitHub Action for Docker" {
  uses = "actions/docker/cli@aea64bb1b97c42fa69b90523667fef56b90d7cff"
  args = "pull tettaji/hello"
}