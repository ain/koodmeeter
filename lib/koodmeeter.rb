module Koodmeeter
  def self.test(password)
    raise ArgumentError.new 'Password argument required!' if password.nil?
  end
end