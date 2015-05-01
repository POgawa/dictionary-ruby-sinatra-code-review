class Definition

  @@definitions = []

  attr_reader(:definition, :id)

  define_method(:initialize) do |definition|
    @definition = definition
    @id = @@definitions.length + 1

  end

  def add_definition definition

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
