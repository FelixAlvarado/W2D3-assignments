class Deck
  
  def self.make_deck
    arr = []
    %w(1 2 3 4 5 6 7 8 9 10 J Q K A).each do |card|
      %w(Diamond Spade Club Heart).each do |suit|
        arr << [card,suit]
      end
    end
    arr.shuffle 
  end
  
  
  
end