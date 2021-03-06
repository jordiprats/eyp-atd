# == Class: atd
#
# === atd documentation
#
class atd(
            $manage_package        = true,
            $package_ensure        = 'installed',
            $manage_service        = true,
            $manage_docker_service = true,
            $service_ensure        = 'running',
            $service_enable        = true,
          ) inherits atd::params{

  class { '::atd::install': } ->
  class { '::atd::config': } ~>
  class { '::atd::service': } ->
  Class['::atd']

}
