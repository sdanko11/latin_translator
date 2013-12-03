class PigLatinTranslation

attr_reader :phrase

  def initialize(phrase)
      @phrase = phrase
      @words_in_phrase = []
  end

  def translate
      starts_with_vowel?
  end 

  def words
    @words_in_phrase = @phrase.split(' ')
  end

  private

  def starts_with_vowel?
    @words_in_phrase.each do |word|
      if word.start_with?('a','e','i','o','u')
        print "#{word}way "
      else
        first_letter = word[0]
        word.slice!(0)
        print "#{word}#{first_letter.downcase}ay "
      end
    end
  end

end

word = PigLatinTranslation.new("This is a story all about how my life got fliped turned upside down")
word.words
word.translate