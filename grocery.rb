def read_grocery_list(grocery_list)
  list_length = grocery_list.size
  grocery_list.each_with_index do |item, position|
    if position == 0
      puts "Start by buying #{item}"
    elsif position == list_length - 1
      puts "and, finally buy #{item}."
    else
      puts "then buy #{item}"
    end
  end
end

read_grocery_list(["tomatoes", "lettuce", "dressing", "milk", "cat food"])
