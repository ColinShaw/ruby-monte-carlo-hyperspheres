class HyperSphereMonteCarlo
    
    def initialize(dims)
        @inside_count    = 0
        @total_count     = 0
        @dimensions      = dims
        @bounding_volume = 2**dims
        self
    end

    def kernel
        total = Array.new(@dimensions)
                     .map       { |v|   v = Random::rand() }
                     .reduce(0) { |s,v| s + v**2 }
        (Math::sqrt total) <= 1.0 ? true : false
    end

    def thread_compute(iter)
        iter.times do
            kernel ? @inside_count += 1 : nil
            @total_count += 1
        end
    end

    def compute(iter, workers=1)
        Array.new(workers)
             .map  { |t| Thread.new { thread_compute (iter/workers) } }
             .each { |t| t.join }
        @bounding_volume * @inside_count.to_f / @total_count.to_f
    end
   
end
