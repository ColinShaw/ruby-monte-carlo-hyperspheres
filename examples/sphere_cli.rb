# First argument is dimentions, second is iterations

require '../src/hypersphere_montecarlo.rb'

puts HyperSphereMonteCarlo.new(ARGV[0].to_i)
                          .compute(ARGV[1].to_i)
