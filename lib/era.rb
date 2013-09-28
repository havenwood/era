require 'era/version'
require 'era/kernel'
require 'benchmark'

module Era
  ##
  # Evaluates a block and prints the time it took. Returns the block value.
  # Takes an optional argument for number of times to run the block.
  def self.time this_many = 1
    value = nil
    ms = Benchmark.realtime do
      this_many.pred.times do
        yield
      end
      value = yield
    end
    puts "Elapsed time: #{ms} ms"
    value
  end
end
