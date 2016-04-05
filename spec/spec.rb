require 'test/unit'
require '../src/hypersphere_montecarlo.rb'
require '../src/hypersphere_solutions.rb'

class TestHyperSphereMonteCarlo < Test::Unit::TestCase

    def test_1_thread_2_dimensions
        candidate = HyperSphereMonteCarlo.new(2)
                                         .compute(2000000)
        correct   = HyperSphereSolutions::ans_by_dim(2)
        assert_in_delta(correct, candidate, 0.01)
    end

    def test_1_thread_3_dimensions
        candidate = HyperSphereMonteCarlo.new(3)
                                         .compute(3000000)
        correct   = HyperSphereSolutions::ans_by_dim(3)
        assert_in_delta(correct, candidate, 0.01)
    end
    
    def test_1_thread_5_dimensions
        candidate = HyperSphereMonteCarlo.new(5)
                                         .compute(5000000)
        correct   = HyperSphereSolutions::ans_by_dim(5)
        assert_in_delta(correct, candidate, 0.03)
    end
    
    def test_5_threads_2_dimensions
        candidate = HyperSphereMonteCarlo.new(2)
                                         .compute(2000000,5)
        correct   = HyperSphereSolutions::ans_by_dim(2)
        assert_in_delta(correct, candidate, 0.01)
    end

    def test_5_threads_3_dimensions
        candidate = HyperSphereMonteCarlo.new(3)
                                         .compute(3000000,5)
        correct   = HyperSphereSolutions::ans_by_dim(3)
        assert_in_delta(correct, candidate, 0.01)
    end
    
    def test_5_threads_5_dimensions
        candidate = HyperSphereMonteCarlo.new(5)
                                         .compute(5000000,5)
        correct   = HyperSphereSolutions::ans_by_dim(5)
        assert_in_delta(correct, candidate, 0.03)
    end
    
    def test_100_threads_2_dimensions
        candidate = HyperSphereMonteCarlo.new(2)
                                         .compute(2000000,100)
        correct   = HyperSphereSolutions::ans_by_dim(2)
        assert_in_delta(correct, candidate, 0.01)
    end

    def test_100_threads_5_dimensions
        candidate = HyperSphereMonteCarlo.new(5)
                                         .compute(5000000,100)
        correct   = HyperSphereSolutions::ans_by_dim(5)
        assert_in_delta(correct, candidate, 0.03)
    end

end
