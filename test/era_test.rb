require_relative 'helper'

describe Era do
  it 'returns the value unaltered' do
    assert_equal Era.time { :yup }, :yup
  end
  
  it 'prints the time it took' do
    assert_output(/^Elapsed time: 100\d\./) { Era.time { sleep 1 } }
  end
end
