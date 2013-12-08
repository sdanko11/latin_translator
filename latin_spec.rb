require 'rspec'
require 'pry'
require_relative 'latin'

describe PigLatinTranslation do
    it 'should split up all the letters in a phrase' do
      expect(PigLatinTranslation.new('i am happy').words).to eql(['iway','amway','appyhay'])
    end

    it "should translate words that start with a vowel" do
      expect(PigLatinTranslation.new(@words_in_phrase = 'happy').words).to eql('appyhay')
    end

    it "should translate words that start with a constant" do
      expect(PigLatinTranslation.new(@words_in_phrase = 'duck').words).to eql('uckday')
    end

    it "should translate words that start with a constant" do
      expect(PigLatinTranslation.new("duck glove").words).to eql(['uckday', 'oveglay'])
    end

    it "should translate words that start with a contants" do
      expect(PigLatinTranslation.new("glgove").words).to eql('oveglgay')
    end

    it "should translate words that start with a vowel" do
      expect(PigLatinTranslation.new("eight").words).to eql('eightway')
    end
end