class adrianconfig::repositories (
){
    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    # class {'adrianconfig::repositories::mine': }
    # class {'adrianconfig::repositories::others': }
}
