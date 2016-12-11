class adrianconfig::vagrant (
){
    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username


    $license = "${my_homedir}/Dropbox/Config/Vagrant/fusion-8-license.lic"

    File {
        owner => $my_username,
        group => 'staff'
    }

    # file { "/Users/${my_username}/.vagrant.d":
    #     ensure => directory,
    # }

    # file { "/Users/${my_username}/.vagrant.d/license-vagrant-vmware-fusion.lic":
    #     ensure  => present,
    #     mode    => '0644',
    #     source  => $license,
    # }

    if $::macosx_productversion_major != '10.10'{

        vagrant_plugin { 'vagrant-vmware-fusion':
            ensure => present
        } ->
        file {"/Users/${my_username}/.vagrant.d/gems":
            owner   => $my_username,
            group   => 'staff',
            recurse => true,
        }
    }

}
