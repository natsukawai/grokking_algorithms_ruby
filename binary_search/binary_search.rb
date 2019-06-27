class Array
  def binary_search(item)
    low = 0
    high = length - 1

    while low <= high
      mid = (low + high) / 2
      guess = self[mid]
      if guess == item
        return mid
      elsif guess > item
        high = mid - 1
      else
        low = mid + 1
      end
    end
  end
end