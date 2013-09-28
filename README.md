# Era
Era is just a pinch of benchmarking sugar in the form of a gem. It prints the time a block takes to execute but still returns its original return value.

Era is inspired by Clojure's `time` benchmarking function, which very similarly prints the time it took to exectue but returns the expression's value. Era also gives the option to specify the number of times to run the block but still returns the value from the last run.

Era adds the `Era.time` method to `Kernel` so you can just `time do` instead of `Era.time do` to benchmark your block.

## Usage
```ruby
require 'era'

time do
  sleep 2
  1 + 1
end  
#>> Elapsed time: 0.00476 ms
#=> 2
```
```ruby
require 'era'

time(1_000_000) { 1 + 1 }
#>> Elapsed time: 0.076912 ms
#=> 2
```
```ruby
require 'era'

time 1000 do
  (99 ** 99) / (88 ** 88)
end
#>> Elapsed time: 0.059397 ms
#=> 284059367663871701169263886
```

## Installation
```bash
gem install era
```

## Contributing
1. Fork it
2. Commit changes
3. Pull request
