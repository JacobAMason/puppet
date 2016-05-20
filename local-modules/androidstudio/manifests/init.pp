class androidstudio (
    $buildNumber = "143.2790544",
) {
    include java

    common::wget { "android-studio-ide-$buildNumber-linux.zip" :
        site => 'https://dl.google.com/dl/android/studio/ide-zips/2.1.0.9/',
        cwd  => '/tmp/',
    }

    common::unzip { "android-studio-ide-$buildNumber-linux.zip" :
        source  => '/tmp/',
        dest    => '/opt/',
        require => Common::Wget["android-studio-ide-$buildNumber-linux.zip"],
    }
}

