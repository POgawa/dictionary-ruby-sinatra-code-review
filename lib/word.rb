class Word

  @@words =[]

  attr_reader(:name, :definition)

  def initialize name
    @name = name
    @definition = definition
    @definitions = []
    @id = @@words.length + 1

  end


  def add_definition definition
    @definitions<<definition
  end

  def save
    @@words<<self
  end

  def self.all
    @@words
  end

  def self.clear
    @@words = []
  end
end
