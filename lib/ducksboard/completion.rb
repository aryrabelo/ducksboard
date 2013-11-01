require 'base64'
require 'json'
module Ducksboard
  class Completion < Widget
   
    def initialize(*args)
      super
      @data[:value] ||={}
    end
    
    def current; @data[:current] end
    def min; @data[:min] end
    def max; @data[:max] end

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


# curl -v -u YOUR_API_KEY:unused -d '{
#     "value": {
#         "current": 19790,
#         "min": 0,
#         "max": 25000 }}' \
#     https://push.ducksboard.com/values/236