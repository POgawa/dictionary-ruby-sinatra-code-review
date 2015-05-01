class Definition

  @@definitions = []

  attr_reader(:definition, :id)

  def initialize attributes
    @definition = attributes[:definition]
    @id = @@definitions.length + 1

  end

  def add_definition definition
    @@definitions<<definition
  end


  def save
    @@definitions<<self
  end

  def self.all
    @@definitions
  end

  def self.clear
    @@definitions = []

  end



end
