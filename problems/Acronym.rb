=begin
Convert a phrase to its acronym.
Techies love their TLA (Three Letter Acronyms)!

Help generate some jargon by writing a program that converts a
long name like Portable Network Graphics to its acronym (PNG).

Punctuation is handled as follows: hyphens are word separators (like whitespace);
all other punctuation can be removed from the input.
=end
class Acronym
  def self.abbreviate(word)
    word_seperated = word.split(/[\s-]+/)
    capitalize = word_seperated.map {|each_word|each_word.capitalize.strip.slice(0,1)}
                               .join.to_s
    capitalize
  end
end

p Acronym.abbreviate("Complementary metal-oxide semiconductor")