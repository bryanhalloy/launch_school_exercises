class BeerSong
  SOME_BEER_FIRST_PROC = Proc.new do |n|
    "#{n} bottle#{get_plural_suffix(n)} of beer on the wall, " \
      "#{n} bottle#{get_plural_suffix(n)} of beer.\n"
  end

  SOME_BEER_SECOND_PROC = Proc.new do |n|
    "Take one down and pass it around, #{n} " \
      "bottle#{get_plural_suffix(n)} of beer on the wall.\n"
  end

  NO_BEER_SECOND_PROC = Proc.new do
    "Take it down and pass it around, " \
      "no more bottles of beer on the wall.\n"
  end

  ZERO_FULL_PROC = Proc.new do
    "No more bottles of beer on the wall, no more bottles of beer." \
      "\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def self.verse(current_beers)
    next_beers = current_beers - 1
    build_verse(current_beers, next_beers)
  end

  def self.verses(first_num, last_num)
    verses_array = []
    first_num.downto(last_num) do |num|
      verses_array << verse(num)
    end
    verses_array.join("\n")
  end

  def self.lyrics
    verses(99, 0)
  end

  def self.build_verse(current_beers, next_beers)
    return_s = ""
    return_s << SOME_BEER_FIRST_PROC.call(current_beers) if current_beers > 0
    return_s << ZERO_FULL_PROC.call if current_beers <= 0

    return_s << SOME_BEER_SECOND_PROC.call(next_beers) if next_beers > 0
    return_s << NO_BEER_SECOND_PROC.call(next_beers) if next_beers == 0

    return_s
  end

  def self.get_plural_suffix(num)
    num > 1 ? 's' : nil
  end
end
