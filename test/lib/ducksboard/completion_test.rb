require 'minitest_helper'

describe Ducksboard::Completion do

  describe '#completion=' do
    let(:completion) { Ducksboard::Completion.new(1) }

    before { 
    	completion.current = 200
    	completion.min = 0
    	completion.max = 5000 
     }

    it { completion.data[:value][:current].must_equal(200) }
    it { completion.data[:value][:min].must_equal(0) }
    it { completion.data[:value][:max].must_equal(5000) }
  end
end
