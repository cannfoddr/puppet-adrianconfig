class adrianconfig::ssh_keys (
){
    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    file { "/Users/${my_username}/.ssh":
        ensure => directory,
    }

    file { "/Users/${my_username}/.ssh/config":
        source => "/Users/${my_username}/Dropbox/Config/SSH Keys/ssh_config",
        owner => "${my_username}",
        mode => '0600',
    }

    file { "/Users/${my_username}/.ssh/id_rsa":
        source => "/Users/${my_username}/Dropbox/Config/SSH Keys/id_rsa",
        owner => "${my_username}",
        mode => '0600',
    }

    file { "/Users/${my_username}/.ssh/id_rsa.pub":
        source => "/Users/${my_username}/Dropbox/Config/SSH Keys/id_rsa.pub",
        owner => "${my_username}",
        mode => '0644',
    }
}
