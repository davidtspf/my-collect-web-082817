def my_collect(array)
  i = 0

  fixed = []

  while i < array.length
    fixed << yield(array[i])
    i += 1
  end

  return fixed

end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end
