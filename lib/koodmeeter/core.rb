module Koodmeeter
  def self.test(password)
    raise ArgumentError.new 'Password argument required!' if password.nil?
    return 0 unless blacklist.index(password.to_s).nil?
  end

  def self.blacklist
    file = File.read('data/blacklist.json')
    JSON.parse(file)['blacklist']
  end
end