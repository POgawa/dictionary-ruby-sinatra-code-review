class Word

  @@words =[]

  attr_reader(:name, :definitions, :id)

  def initialize attributes
    @name = attributes[:name]
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

  def self.find identification
    @@words.each do |word|
      if word.id == identification
        return word
      end
    end
  end


end
