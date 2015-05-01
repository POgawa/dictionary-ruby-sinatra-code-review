class Definition

  @@definitions = []

  attr_reader(:definition, :id)

  define_method(:initialize) do |definition|
    @definition = definition
    @id = @@definitions.length + 1

  end

def save
  @definition<<@@definitions
end

end
