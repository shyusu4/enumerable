module enumerable
    def all? 
        each {|number| return false unless yield number}
        trur
    end

    def any?
        each {|number| return true if yield number}
        false
    end
end