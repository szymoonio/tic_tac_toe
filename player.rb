class Player
  @@players = 0

  def self.get_pc
    @@players
  end

  attr_accessor :name, :sign

  def initialize(name)
    @@players += 1
    self.name = name
    if @@players == 1
      self.sign = '+'
    else 
      self.sign = 'o'
    end
  end
end
