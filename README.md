# koodmeeter [![Build Status](http://img.shields.io/travis/ain/koodmeeter.svg)](https://travis-ci.org/ain/koodmeeter)

koodmeeter (codemeter) is a password strength score tool.

## Usage

``` ruby
# Returns number representing password strength score:
#   0 - lowest
#   5 - highest
Koodmeeter.check('mypassword')
```

Optionally, minimum chars option can be used, affecting score:

``` ruby
# Returns 0, since "mypassword" is less than 12 chars
Koodmeeter.check('mypassword', 12)
```

## License

Copyright © 2015 Ain Tohvri. Licensed under [GPLv3](LICENSE).