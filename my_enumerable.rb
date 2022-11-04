
module MyEnumerable
    def all? 
        each {|number| return false unless yield number}
        true
    end

    def any?
        each {|number| return true if yield number}
        false
    end
end