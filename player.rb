class Player
  @@players = 0

  def self.get_pc
    @@players
  end

  attr_accessor :name, :sign, :result

  def initialize(name, sign)
    @@players += 1
    self.name = name
    if @@players == 1
      self.sign = '+'
    else 
      self.sign = 'o'
    end
    self.result = 'tbd'
  end
end
