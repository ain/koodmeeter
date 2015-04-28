# koodmeeter [![Build Status](http://img.shields.io/travis/ain/koodmeeter.svg)](https://travis-ci.org/ain/koodmeeter) [![Gem Version](https://badge.fury.io/rb/koodmeeter.svg)](http://badge.fury.io/rb/koodmeeter) [![Coverage Status](https://coveralls.io/repos/ain/koodmeeter/badge.svg)](https://coveralls.io/r/ain/koodmeeter)

koodmeeter (codemeter) is a password strength score tool.

- Supported Ruby versions:
  - 2.2.2 (recommended)
  - 2.2.1
  - 2.1.0
  - 2.0.0

If you need just a JavaScript version, check [koodmeeter.js](https://github.com/ain/koodmeeter.js).

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

## Contributing

### Bug reports, suggestions

- File all your issues, feature requests [here](https://github.com/ain/koodmeeter/issues)
- If filing a bug report, follow the convention of _Steps to reproduce_ / _What happens?_ / _What should happen?_
- __If you're a developer, write a failing test instead of a bug report__ and send a Pull Request

### Code

1. Fork it ( https://github.com/[my-github-username]/koodmeeter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Develop your feature by concepts of [TDD](http://en.wikipedia.org/wiki/Test-driven_development). Run `guard` in parallel to automatically run your tests
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


## License

Copyright © 2015 Ain Tohvri. Licensed under [GPLv3](LICENSE).