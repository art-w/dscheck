module TracedAtomic = TracedAtomic

module Open = struct
  module Atomic = TracedAtomic
  module Domain = struct
    let spawn = TracedAtomic.spawn
  end
end
