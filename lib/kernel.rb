module Kernel
  def time *args, &block
    Era.time *args, &block
  end
end
