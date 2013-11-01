require 'minitest_helper'

describe Ducksboard::Completion do

  describe '#completion=' do
    let(:completion) { Ducksboard::Completion.new(1) }

    before { completion.current = 200 }

    it { counter.data[:current].must_equal(200) }

    before { completion.min = 0 }

    it { counter.data[:min].must_equal(0) }

      before { completion.min = 5000 }

    it { counter.data[:min].must_equal(5000) }
  end
end
