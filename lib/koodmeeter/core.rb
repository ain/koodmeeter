module Koodmeeter

  LEVELS = (0..5).to_a
  SCORES = [10, 15, 25, 45]

  @@mimimum_chars = 6

  def self.test(password)
    raise ArgumentError.new 'Password argument required!' if password.nil?
    return 0 unless blacklist.index(password.to_s).nil?
  end

  def self.blacklist
    file = File.read('data/blacklist.json')
    JSON.parse(file)['blacklist']
  end
end