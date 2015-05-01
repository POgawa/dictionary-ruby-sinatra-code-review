class Word

  @@words =[]

  attr_reader(:name)

  def initialize name
    @name = name
    @definitions = []
    @id = @@words.length + 1

  end


  def add_definition definition
    @definitions<<definition
  end


end
