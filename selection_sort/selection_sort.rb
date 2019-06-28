class Array
  def selection_sort
    self_array = self.dup
    new_array = []
    
    self.length.times do
      smallest_index = self_array.find_smallest_index
      new_array.push(self_array.delete_at(smallest_index))
    end
    
    new_array
  end

  def find_smallest_index
    smallest = self[0]
    smallest_index = 0

    self.each_with_index do |value, i|
      if value < smallest
        smallest = value
        smallest_index = i
      end
    end
    
    smallest_index
  end
end