class adrianconfig::config::autopkg (
    ){

    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    mac_admin::osx_defaults { 'AutoPkg Munki Repo':
        user   => $my_username,
        domain => 'com.github.autopkg',
        key    => 'MUNKI_REPO',
        value  => '/Volumes/Munki/repo',
    }

    file {"$my_homedir/Dropbox/Config/bin/autopkg-repos.sh":
        owner  => $my_username,
        group  => 'staff',
        mode   => '0755',
        source => 'puppet:///modules/adrianconfig/autopkg/autopkg-repos.sh',
    }

    package { 'autopkg':
        ensure   => installed,
        provider => pkgdmg,
        source   => 'https://github.com/autopkg/autopkg/releases/download/v0.4.2/autopkg-0.4.2.pkg',
    } ->

    exec { 'AutoPkg recipes':
        user     => $my_username,
        command  => "$my_homedir/Dropbox/Config/bin/autopkg-repos.sh",
        creates  => "$my_homedir/Library/AutoPkg/RecipeRepos",
    }
}
