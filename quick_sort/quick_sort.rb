def quick_sort(arr)
    raise ArgumentError unless arr.kind_of?(Array)
    return arr if arr.length < 2

    pivot = arr[0]
    less = arr[1..-1].select { |value| value <= pivot}
    greater = arr[1..-1].select { |value| value > pivot}

    return quick_sort(less) + [pivot] + quick_sort(greater)
end
