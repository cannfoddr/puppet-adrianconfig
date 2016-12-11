class adrianconfig (
    $my_username  = 'adrian',
    $my_homedir   = '/Users/adrian',
    $my_sourcedir = '/Users/adrian/Projects',
    ){
        class {'adrianconfig::homebrew': }
        class {'adrianconfig::gems': } ->
        class {'adrianconfig::directories': } ->
        class {'adrianconfig::repositories': } ->
        class {'adrianconfig::config': } ->
        class {'adrianconfig::dock': } ->
        class {'adrianconfig::wallpaper': } ->
        class {'adrianconfig::fonts': } ->
        class {'adrianconfig::ssh_keys': } ->
        class {'adrianconfig::git': } ->
        class {'adrianconfig::osquery': } ->
        class {'adrianconfig::crashplan': } ->
        class {'adrianconfig::munki': } ->
        class {'adrianconfig::munki_ssl': }
}
