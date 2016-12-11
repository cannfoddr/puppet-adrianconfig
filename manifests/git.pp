class adrianconfig::git (
){
    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    $boxen_user = $my_username

    git::config::global{ 'credential.helper':
        value => 'osxkeychain',
    }

    git::config::global{ 'user.name':
        value => 'Adrian Merwood',
    }

    git::config::global{ 'user.email':
        value => '"(none)"',
    }

    if !defined(File['/usr/local/bin']){
        file {'/usr/local/bin':
            ensure => directory,
        }
    }

    file {'/usr/local/bin/git-fat':
        ensure => present,
        source => 'puppet:///modules/adrianconfig/git-fat',
        mode   => '0755',
        owner  => 0,
        group  => 0,
    }
}
