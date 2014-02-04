module AlphaSequencer
  class Generator
    def initialize
      @alphs = ("a".."z").to_a
    end

    def generate number
      return "" if number < 1
      alph(number)
    end

    def alph(number)
      s, q = "", number
      (q, r = (q - 1).divmod(26)) && s.prepend(@alphs[r]) until q.zero?
      s
    end
  end
end