class adrianconfig::config::alfred (
    ){

    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    mac_admin::osx_defaults { 'Set Alfred theme to Lion':
        domain  => 'com.runningwithcrayons.Alfred-Preferences',
        key     => 'appearance.theme',
        value   => 'alfred.theme.lion',
        user    => $my_username,
    }

}
