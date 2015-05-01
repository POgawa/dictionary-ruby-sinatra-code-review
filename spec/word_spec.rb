require "rspec"
require "pry"
require "word"
require "definition"


describe(Word) do
  describe'#initialize' do
    it'initializes the word object with a name' do
      test_word = Word.new'computer'
      expect(test_word.name).to eq'computer'
    end
  end

  describe('#all') do
    it('returns all teh words') do
      test_word1 = Word.new('this is the word')
      test_word1.save
      test_word2 = Word.new('this is the other word')
      test_word2.save
      expect(Word.all.length).to(eq(2))
    end
  end

   describe('#clear') do
    it('clears the words array') do
      test_word = Word.new('this is the word')
      words = Word.all
      test_word.save
      expect(words.clear).to(eq([]))
    end
  end

  describe("#save") do
    it('saves the word to the words array') do
      test_word = Word.new('this is theword')
      test_word.save
      words = Word.all
      expect(words.length).to(eq(1))

    end
  end






end
