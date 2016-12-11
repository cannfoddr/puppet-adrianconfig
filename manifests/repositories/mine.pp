class adrianconfig::repositories::mine (
){
    $my_homedir   = $adrianconfig::my_homedir
    $my_sourcedir = $adrianconfig::my_sourcedir
    $my_username  = $adrianconfig::my_username

    class {'adrianconfig::repositories::mine::luggage_local': }
    class {'adrianconfig::repositories::mine::puppet_run': }
}
