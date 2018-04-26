require 'towers_of_hanoi'
require 'rspec'

RSpec.describe TowersOfHanoi do
  
    subject(:towers) {TowersOfHanoi.new}
    
    describe '#initialize' do 
      it 'will have 3 towers at the beginning' do 
        expect(towers.stacks).to eq([[3,2,1],[],[]])
      end 
    end
    
    describe '#valid_move?' do 
      let(:input1) {[0,2]}
      # let(:input2) {[1,2]}
    
    
      it 'checks if start position is empty' do 
        expect(towers.valid_move?(input1)).to eq(true)
      end
      
      it 'checks if disk at end position is larger than disk at start position' do 
        towers.stacks = [[3,2],[],[1]]
        expect(towers.valid_move?(input1)).to eq(false)
        
      end
        
    end   
end