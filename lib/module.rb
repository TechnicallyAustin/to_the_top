module AllClasses
    module ClassMethods
        def all
            self.all
        end

        def clear_all
            self.all.clear
        end

        def finder(searching)
            self.all.detect {|item| item == searching}
        end

            
    end
end