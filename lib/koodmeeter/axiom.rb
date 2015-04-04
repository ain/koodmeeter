module Koodmeeter
  class Axiom
    def self.list
      [
        { :regex => /[a-z]/, :score => 1 },
        { :regex => /[A-Z]/, :score => 5 },
        { :regex => /([a-z].*[A-Z])|([A-Z].*[a-z])/, :score => 2 },
        { :regex => /(.*[0-9].*[0-9].*[0-9])/, :score => 7 },
        { :regex => /.[!@#$%^&*?_~]/, :score => 5 },
        { :regex => /(.*[!@#$%^&*?_~].*[!@#$%^&*?_~])/, :score => 7 },
        { :regex => /([a-zA-Z0-9].*[!@#$%^&*?_~])|([!@#$%^&*?_~].*[a-zA-Z0-9])/, :score => 3 },
        { :regex => /(.)\1+$/, :score => 2 }
      ]
    end
  end
end