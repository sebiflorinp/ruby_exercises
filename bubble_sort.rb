def bubble_sort(array)
  sorted = false
  until sorted == true do
    for i in 0..array.length - 2 do

      if array[i] > array[i + 1]
        array[i],array[i + 1] = array[i + 1],array[i]
      end

      sorted = true

      for i in 0..array.length - 2 do
        if array[i] > array[i + 1]
          sorted = false
        end
      end
      if sorted == true
        return array
      end
    end
  end
end

p bubble_sort([4,3,78,2,0,2])
