class MaxArraySum

  def initialize(array)
    
    if array.flatten.uniq.all?{|i| i.is_a?(Integer)}

      max_index = 0
      min_index = 0
      max_sum   = 0
      sub_array = []
  
      for i in 0..array.length() - 1
        array_sum = 0
        for j in i..array.length() - 1
          array_sum   = array[j] + array_sum
          if array_sum > max_sum
            max_sum   = array_sum
            min_index = i
            max_index = j
          end
        end
      end  
      
      for i in min_index..max_index
        sub_array << array[i]
      end
  
      puts sub_array

    else
      puts "Please Input Array of Integers!"
    end
  end
end

arr_object = MaxArraySum.new([1,0,2,-3,1,2,1])