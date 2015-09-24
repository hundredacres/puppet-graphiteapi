# == Class: graphiteapi
#
# Full description of class graphite here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class graphiteapi (
  $graphiteapi_user         = $graphiteapi::params::graphiteapi_user,
  $graphiteapi_group        = $graphiteapi::params::graphiteapi_group,
  $virtualenv_path          = $graphiteapi::params::virtualenv_path,
  $finders                  = $graphiteapi::params::finders,
  $whisper_paths            = $graphiteapi::params::whisper_paths,
  $graphiteapi_tz           = $graphiteapi::params::graphiteapi_tz,
  $graphiteapi_search_index = $graphiteapi::params::graphiteapi_search_index,
  $graphiteapi_log_path     = $graphiteapi::params::graphiteapi_log_path,
  $create_search_index      = $graphiteapi::params::create_search_index,
  $bind_addr                = $graphiteapi::params::bind_addr,
  $bind_port                = $graphiteapi::params::bind_port,
  $manage_repo              = $graphiteapi::params::manage_repo,

) inherits graphiteapi::params {

  # validate parameters here

  class { 'graphiteapi::install': } ->
  class { 'graphiteapi::config': } ~>
  class { 'graphiteapi::service': } ->
  Class['graphiteapi']
}
