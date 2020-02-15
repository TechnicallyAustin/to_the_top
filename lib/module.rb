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



    # def self.chart_elements
    #     @charting.each_slice(5) { |i| @chart_arr << i }
    #     row_counter = 0 
    #     @chart_arr.each do |row|
    #         while row_counter < row.length 

    #             #this is the entire row. Inititializes objects here
    #             # creates an artist object and associates the other elements to that artist.
    #             row[0] #=> Rank.new(row[0])
    #             row[1] #=> Song.new(row[1])
    #             row[2] #=> Artist.new(row[2])
    #             row[3] #=> Peak.new(row[3])
    #             row[4] #=> PeakDate.new(row[4])
    #             binding.pry
    #             row.each do |element|
    #                 binding.pry
    #                 element.each do |i|
    #             binding.pry
    #             end
    #         end
    #     end
    # end
            
    
end