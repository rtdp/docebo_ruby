module DoceboRuby
  class Parameters
    def initialize(hash)
      @hash = hash.sort.to_h
    end

    def to_s
      @hash.values.join(',')
    end
  end
end
