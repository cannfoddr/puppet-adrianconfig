class grahamconfig::config::autopkg (
    ){

    $my_homedir   = $grahamconfig::my_homedir
    $my_sourcedir = $grahamconfig::my_sourcedir
    $my_username  = $grahamconfig::my_username

    mac_admin::osx_defaults { 'AutoPkg Munki Repo':
        user   => $my_username,
        domain => 'com.github.autopkg',
        key    => 'MUNKI_REPO',
        value  => '/Volumes/Munki',
    }

    file {"$my_homedir/Dropbox/Config/bin/autopkg-repos.sh":
        owner  => $my_username,
        group  => 'staff',
        mode   => '0755',
        source => 'puppet:///modules/grahamconfig/autopkg/autopkg-repos.sh',
    }

    exec { 'AutoPkg recipes': 
        user => $my_username,
        command => "$my_homedir/Dropbox/Config/bin/autopkg-repos.sh",
        creates => "$my_homedir/Library/AutoPkg/RecipeRepos",
    }
}