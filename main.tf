resource "null_resource" "first" {
	for_each = var.teams
}

resource "null_resource" "second" {
		for_each = {
		for team, value in var.teams:
		team => team
		if ! contains(var.exclude_teams, value.team_name)
		}
}
