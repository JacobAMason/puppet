define common::wget (
    $site,
    $cwd,
    $user = undef,
) {
    ensure_packages('wget')
    
    exec { "wget $name" :
        command => "/usr/bin/wget $site$name",
        cwd     => $cwd,
        creates => "$cwd/$name",
        user    => $user,
        timeout => 0,
        require => Package['wget'],
    }
}

