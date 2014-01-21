require 'pry'
class PigLatinTranslation

attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
    @words_in_phrase = []
    @translated_phrase = []
    @constants = []
  end

  def words
    if @phrase.include?(' ')
      @words_in_phrase = @phrase.split(' ')
      @words_in_phrase
      multiple_word_translation
    else
      @phrase
      one_word_translation
    end
  end

  def multiple_word_translation
    @words_in_phrase.each do |word|
      if word.downcase.start_with?('a','e','i','o','u')
        @translated_phrase << "#{word}way"
      else
      while !['a','e','i','o','u'].include?(word[0])
        first_letter = word[0]
        word += first_letter
        word.slice!(0)
        word[0]
      end
        @translated_phrase << "#{word.downcase}ay"
      end
    end
    @translated_phrase.each do |word|
      print "#{word} "
    end
  end

  def one_word_translation
    if @phrase.downcase.start_with?('a','e','i','o','u')
     "#{@phrase}way"
    else
      while !['a','e','i','o','u'].include?(@phrase[0])
        first_letter = @phrase[0]
        @phrase += first_letter
        @phrase.slice!(0)
        @phrase[0]
      end
        "#{@phrase.downcase}ay"
    end
  end

end

word = PigLatinTranslation.new("glove glove gllove")
word.words