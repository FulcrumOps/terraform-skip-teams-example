variable "teams" {
  type = map(object({
    team_name = string
    location  = string
  }))
}

variable "exclude_teams" {
	type = list
}
