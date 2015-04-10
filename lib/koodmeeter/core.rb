module Koodmeeter

  LEVELS = (0..5).to_a
  MIN_CHARS = 6

  @@scores = [10, 15, 25, 45]

  class << self

    def check(password)
      password = password.to_s

      raise ArgumentError.new 'Password argument required!' if password.nil?
      return 0 unless blacklist.index(password).nil?

      length = password.length
      diff = length - MIN_CHARS
      scores_dupe = @@scores.dup
      score = calculate_diff_increment(diff)

      Axiom.list.each do |axiom|
        if axiom[:regex].match(password)
          score += axiom[:score]
        end
      end

      score += length
      if score < 0 && score > -199
        index = 0
      else
        scores_dupe.push(score).sort!
        index = scores_dupe.index(score) + 1
      end

      return LEVELS[index].nil? ? LEVELS.last : LEVELS[index]
    end

    def blacklist
      file = File.read('data/blacklist.json')
      JSON.parse(file)['blacklist']
    end

    private

    def calculate_diff_increment(diff)
      score = 0;
      if diff < 0
        score -= 100
      elsif diff >= 5
        score += 18
      elsif diff >= 3
        score += 12
      elsif diff == 2
        score += 6
      end
      return score
    end

  end
end