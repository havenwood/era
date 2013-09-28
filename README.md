# Era

Print the time a block takes but still return its value. Inspired by Clojure's `time` function but with the addition of the ability to run a number of times and still return the value from the block's last run.

Evaluates a block and prints the time it took. Returns the block value. Takes an optional argument for number of times to run the block.

## Usage

```ruby
time do
  sleep 2
  1 + 1
end  
#>> Elapsed time: 0.00476 ms
#=> 2
```
```ruby
time(1_000_000) { 1 + 1 }
#>> Elapsed time: 0.076912 ms
#=> 2
```
```ruby
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
