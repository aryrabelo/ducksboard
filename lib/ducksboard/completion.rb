require 'base64'
require 'json'
module Ducksboard
  class Completion < Widget
   
    def initialize(*args)
      super
      @data[:value] ||={}
    end
    
    def current; @data[:value][:current] end
    def min; @data[:value][:min] end
    def max; @data[:value][:max] end

    def current=(number)
      @data[:value][:current] = number
    end
    
    def min=(number)
      @data[:value][:min] = number
    end

    def max=(number)
      @data[:value][:max] = number
    end

  end
end

