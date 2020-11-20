# :nodoc:
# require 'active_support/number_helper/rounding_helper'
module BetterRound
  module RoundingHelper
    def better_round(number, symbol = nil, appendix = nil)
      s = ''
      s += "#{symbol} " if symbol
      s += round(number).to_s
      s += " #{appendix}" if appendix
      s
    end
  end
end

Integer.include(BetterRound::RoundingHelper)
Float.include(BetterRound::RoundingHelper)