class adrianconfig::directories (
){
    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    file {'/etc/facter':
        ensure => 'directory'
    }

    file {'/etc/facter/facts.d':
        ensure => 'directory'
    }

    file {'/etc/facter/facts.d/boxen_user.txt':
        ensure => 'present',
        content => "boxen_user=${my_username}",
    }

    File {
        owner   => $my_username,
        group   => 'staff',
    }

    file {"${my_homedir}/.ngrok":
        ensure => link,
        target => "/Users/${my_username}/Dropbox/Config/Ngrok/ngrok",
    }

    if !defined(File["${my_sourcedir}"]){
        file {"${my_sourcedir}":
            ensure => directory,
        }
    }

    # file {"${my_homedir}":
    #     owner   => $my_username,
    #     recurse => true,
    # }

    file {"${my_sourcedir}/Mine":
        ensure => link,
        target => "/Users/${my_username}/Dropbox/src/Mine",
    }

    file {"${my_sourcedir}/Vagrant":
        ensure => link,
        target => "/Users/${my_username}/Dropbox/Vagrant",
    }

    file {"/Users/${my_username}/Dropbox":
        ensure => link,
        target => "/Users/${my_username}/Dropbox (Personal)",
        notify => Exec['Hide Dropbox'],
    }

    exec{'Hide Dropbox':
        command     => "/usr/bin/chflags -h hidden /Users/${my_username}/Dropbox",
        refreshonly => true
    }

    file {"${my_sourcedir}/Others":
        ensure => link,
        target => "/Users/${my_username}/Dropbox/src/Others",
    }

    file {"${my_sourcedir}/airbnb":
        ensure => link,
        target => "/Users/${my_username}/Dropbox/src/airbnb",
    }

    file {"${my_sourcedir}/puppet_modules":
        ensure => link,
        target => "/Users/${my_username}/Dropbox/src/puppet_modules",
    }

    file {"${my_homedir}/chef-repo":
        ensure => link,
        target => "/Users/${my_username}/Dropbox/src/chef-repo",
    }

    if !defined(File['/Library/Management']){
        file {'/Library/Management':
            ensure => directory,
        }
    }

    if !defined(File['/Library/Management/bin']){
        file {'/Library/Management/bin':
            ensure => directory,
        }
    }

    # Install the ksdiff tool
    if !defined(File['/usr/local']){
        file {'/usr/local':
            ensure => 'directory',
            owner  => "$my_username",
            group  => 'staff',
        }
    }

    if !defined(File['/usr/local/bin']){
        file {'/usr/local/bin':
            ensure => 'directory',
            owner  => "$my_username",
            group  => 'staff',
        }
    }
}
