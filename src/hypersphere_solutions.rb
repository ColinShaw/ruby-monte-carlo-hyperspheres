class HyperSphereSolutions

    PI = Math::PI

    def self.ans_by_dim(dim)
        ans = 0
        case dim
            when 1
                ans = PI**0 * 2
            when 2
                ans = PI**1
            when 3
                ans = PI**1 * 4 / 3
            when 4
                ans = PI**2 / 2
            when 5
                ans = PI**2 * 8 / 15
            when 6
                ans = PI**3 / 6
            when 7
                ans = PI**3 * 15 / 105
            when 8
                ans = PI**4 / 24
        end
        ans
    end

    def self.err_by_dim(dim,val)
        (val - (self.ans_by_dim dim)).abs
    end

end
