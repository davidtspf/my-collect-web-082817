def my_collect(array)
  i = 0
  new_array = []
  while i < array.length
    new_array.push(yield(array[i]))
    puts new_array[i]
    i += 1
  end

  return new_array

end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end
