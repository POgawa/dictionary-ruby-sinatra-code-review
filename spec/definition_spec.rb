require "rspec"
require "pry"
require "word"
require "definition"


describe(Definition) do
  describe('#definition') do
    it('initializes a description') do
      test_definition = Definition.new('this is the definition')
      expect(test_definition.definition()).to(eq('this is the definition'))
    end
   end

   describe("id") do
     it('adds an id to the definitions') do
       test_definition = Definition.new('this is the definition')
       test_definition.save
       expect(test_definition.id()).to(eq(1))
     end
   end
end
