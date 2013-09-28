# Era
Ever want to benchmark some Ruby but still get the return value not the time it took? The Era gem prints the time a block takes but still return its value. Era is inspired by Clojure's `time` function but with the addition of the ability to run a number of times and still return the value from the block's last run.

Era adds the the `Era.time` method to `Kernel` so you can just `time do` instead of `Era.time do` to benchmark your block.

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
