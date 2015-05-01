require "rspec"
require "pry"
require "word"
require "definition"


describe(Definition) do

  before() do
    Definition.clear()
 end

  describe('#definition') do
    it('initializes a description') do
      test_definition = Definition.new({definition:'this is the definition'})
      expect(test_definition.definition()).to(eq('this is the definition'))
    end
   end

   describe("id") do
     it('adds an id to the definitions') do
       test_definition = Definition.new({definition:'this is the definition'})
       test_definition.save
       expect(test_definition.id()).to(eq(1))
     end
   end

   describe('#all') do
     it('returns all teh definitions') do
       test_definition1 = Definition.new({definition:'this is the definition'})
       test_definition1.save
       test_definition2 = Definition.new({definition:'this is the  other definition'})
       test_definition2.save
       expect(Definition.all.length).to(eq(2))
     end
   end

    describe('#clear') do
     it('clears the definitions array') do
       test_definition = Definition.new({definition:'this is the definition'})
       definitions = Definition.all
       test_definition.save
       expect(definitions.clear).to(eq([]))
     end
   end

   describe("#save") do
     it('saves the definition to the definitions array') do
       test_definition = Definition.new({definition:'this is the definition'})
       test_definition.save
       definitions = Definition.all
       expect(definitions.length).to(eq(1))

     end
   end

end
