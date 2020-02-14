def lunch_lady_app
    puts "-------------------------------"
    puts "*** Welcome to Ruby's Cafe ***"
    puts "-------------------------------"
    @main_dish.each.with_index do |dish, index|
       puts "#{index + 1}) #{dish[:item]} $#{dish[:price]}.00"
    end
    puts "-------------------------------"
    main_dish_selection
    puts "-------------------------------"
    @side_dish1.each.with_index do |dish, index|
       puts "#{index + 1}) #{dish[:item]} $#{dish[:price]}.00"
    end
    puts "-------------------------------"
    side_dish1_selection
    puts "-------------------------------"
    @side_dish2.each.with_index do |dish, index|
       puts "#{index + 1}) #{dish[:item]} $#{dish[:price]}.00"
    end
    puts "-------------------------------"
    side_dish2_selection
    puts "-------------------------------"
    display_order
    puts "-------------------------------"
    submit_order
    puts "-------------------------------"
    order_total
    puts "-------------------------------"
    new_order
 end


def main_dish_selection
    puts "  Please Select A Main Dish"
    input = gets.strip.to_i
    @cart << input
    @main_dish[input - 1]
end

def side_dish1_selection
    puts "Please Select Your First Side Dish"
    input = gets.strip.to_i
  # When 1
  #     @side_dish1[0]
  #     puts "#{side_dish1[:item]}"
  # When 2
  #     @side_dish1[1]
  #     puts "#{side_dish1[:item]}"
  # When 3
  #     @side_dish1[3]
  #     puts "#{side_dish1[:item]}"
  # end

    @cart << input
    @side_dish1[input - 1]
  end


def side_dish2_selection
    puts "Please Select Your Second Side Dish"
    input = gets.strip.to_i
    @cart << input
    @side_dish2[input - 1]
end

  def display_order
    puts "      Review Your Order:"
    puts "-------------------------------"
    @cart.each do |item|
      puts item 
    end
  end

  def submit_order
    puts "      Ready to purchase?"
    puts "Yes to Proceed or No to Begin Again"
    response = gets.strip.downcase
      if response == "yes"
        order_total
      else response == "no"
        @cart.clear
        lunch_lady_app
      end
  end

  def order_total
    puts "Thank you for your order. You owe $#{@total.sum}."
  end

  def new_order
    puts "Would you like to place another order? Yes/No"
    response = gets.strip.downcase
      if response == "yes"
      lunch_lady_app
    else response == "no"
      puts "Goodbye. Enjoy your meal."
      exit!
      end
  end

# def display_total
#     puts      "Here is your total:"
#     puts "-------------------------------"
#     @total =
# end


@cart =[]
@total = 0

@main_dish = [
  { item: "Spaghetti", price: 4},
  { item: "Sandwich", price: 5},
  { item: "Hot Dog", price: 3}
]

@side_dish1 = [
  { item: "Salad", price: 2},
  { item: "Soup", price: 2},
  { item: "Bread Stick", price: 1}
]

@side_dish2 = [
  { item: "Mixed Veggies", price: 2},
  { item: "Fruit Cup", price: 2},
  { item: "Chips", price: 1}
]

lunch_lady_app
