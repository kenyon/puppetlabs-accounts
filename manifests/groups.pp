# Class: accounts::groups
#
#   Manage basic groups
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class accounts::groups (
  $groups_hash
) {

  validate_hash($groups_hash)
  $groups_hash_real = $groups_hash

  # JJM FIXME This will need to be re-factored
  # When Puppet 2.7 is included in PE since the create_resources
  # function will be part of core.
  create_resources('group', $groups_hash)

}
