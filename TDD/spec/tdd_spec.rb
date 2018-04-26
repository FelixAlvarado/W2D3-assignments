require 'tdd'
require 'rspec'

RSpec.describe do

  describe "#my_uniq" do 
    let(:arr) {[1,2,3,2,5,5]}
    it "removes duplicates of array" do
      expect(my_uniq(arr)).to eq([1,2,3,5])
    end
  end
  
  describe "#my_two_sum" do 
    it "return indeces that sum to zero" do 
      expect(my_two_sum([-1, 0, 2, -2, 1])).to eq([[0, 4], [2, 3]])
    end 
  end 
  
  describe "#my_tanspose" do 
    it "transposes an array" do 
      expect(my_transpose([[0, 1, 2], [3, 4, 5],[6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end 
  end
  
  describe "#stock_picker" do 
    
    it "returns most profitable days" do
      expect(stock_picker([3,2,4,5,8])).to eq([1,4])
    end
    
    it "buys stock before selling" do 
      expect(stock_picker([11,2,5,1,6])).to eq([3,4])      
    end
  end
   
end

