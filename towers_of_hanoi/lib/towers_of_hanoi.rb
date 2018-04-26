class TowersOfHanoi 
  
    attr_reader :stacks
  
  def initialize 
    @stacks = [[3,2,1],[],[]]
  end
  
  def move 
    
  end 
  
  def valid_move?(move)
    start_pos,end_pos = move
    return false if @stacks[start_pos].empty?
    return false if @stacks[start_pos].last > @stacks[end_pos].last
    true
  end 
  
  
  def won?
    
  end 
  
  
end 