def my_select(collection)
  # your code here!
  if block_given?
    i = 0
    new_collection = []
    while i < collection.size
      yield collection[i] ? new_collection.push(collection[i]) : nil
      i += 1
    end
    new_collection
  else
    "No block was given"
  end
end
