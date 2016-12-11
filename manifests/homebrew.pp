class adrianconfig::homebrew {
    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username
    class {'homebrew':
        user  => "${my_username}",
        group => 'staff',
    } ->

    package {'youtube-dl':
        ensure   => 'present',
        provider => 'brew',
    } ->

    package {'htop-osx':
        ensure   => 'present',
        provider => 'brew',
    } ->

    package {'awscli':
        ensure   => 'present',
        provider => 'brew',
    } ->

    package {'tree':
        ensure   => 'present',
        provider => 'brew',
    } ->

    package {'terraform':
        ensure   => 'present',
        provider => 'brew',
    }
}
