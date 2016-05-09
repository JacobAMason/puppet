common::wget { 'index.html' :
    site => 'example.com/',
    cwd  => '/home/jacob/Downloads',
    user => 'jacob',

}
