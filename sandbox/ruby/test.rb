require 'date'

module Mixin
end

class MixinConsumer
  include Mixin

  def run
    run_mixin
  end
end

MixinConsumer

MixinConsumer.run

MixinConsumer.new
