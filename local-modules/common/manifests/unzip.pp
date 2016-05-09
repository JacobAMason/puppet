define common::unzip (
    $source,
    $dest,
) {
    ensure_packages('unzip')

    exec { "unzip $source$name to $dest" :
        command => "/usr/bin/unzip $name -d $dest",
        cwd     => $source,
        require => Package['unzip'],
    }
}

