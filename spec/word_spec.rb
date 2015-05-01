require "rspec"
require "pry"
require "word"
require "definition"


describe(Word) do

  before() do
    Word.clear()
 end


  describe'#initialize' do
    it'initializes the word object with a name' do
      test_word = Word.new({name:'word'})
      expect(test_word.name).to eq'word'
    end
  end

  describe('#all') do
    it('returns all the words') do
      test_word1 = Word.new({name:'word'})
      test_word1.save
      test_word2 = Word.new({name:'other word'})
      test_word2.save
      expect(Word.all.length).to(eq(2))
    end
  end

   describe('#clear') do
    it('clears the words array') do
      test_word = Word.new({name:'word'})
      words = Word.all
      test_word.save
      expect(words.clear).to(eq([]))
    end
  end

  describe("#save") do
    it('saves the word to the words array') do
      test_word = Word.new({name:'word'})
      test_word.save
      words = Word.all
      expect(words.length).to(eq(1))

    end
  end

  describe('#add definition') do
    it('adds a definition to the word object') do
      test_word = Word.new({name:'word'})
      test_definition = Definition.new({definition:'this is a word'})
      test_word.add_definition(test_definition)
      expect(test_word.definitions()).to(eq([test_definition]))
    end
  end


  describe('self#find') do
    it('finds the word by id') do
      test_word = Word.new({name:'word'})
      test_word.save
      expect(test_word.find(1)).to(eq(1))
    end
  end

end
