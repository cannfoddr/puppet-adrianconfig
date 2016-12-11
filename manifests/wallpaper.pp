class adrianconfig::wallpaper (
){
    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    if $::sp_local_host_name == "Artoo" {
        outset::login_every{'wallpaper.sh':
            script => 'puppet:///modules/adrianconfig/wallpaper/set_wallpaper_home.sh'
        }
    }else{
        outset::login_every{'wallpaper.sh':
            script => 'puppet:///modules/adrianconfig/wallpaper/set_wallpaper_work.sh'
        }
    }

    file {'/Library/Management/bin/set_desktops.py':
        owner  => root,
        group  => wheel,
        mode   => '0755',
        source => 'puppet:///modules/adrianconfig/wallpaper/set_desktops.py'
    }

    file {'/Library/Management/bin/set_random_desktop.py':
        owner  => root,
        group  => wheel,
        mode   => '0755',
        source => 'puppet:///modules/adrianconfig/wallpaper/set_random_desktop.py'
    }
}
