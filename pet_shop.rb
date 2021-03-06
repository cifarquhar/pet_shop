def pet_shop_name(shop)
  shop[:name]
end


def total_cash(shop)
  shop[:admin][:total_cash]
end


def add_or_remove_cash(shop,cash)
  shop[:admin][:total_cash] += cash
end


def pets_sold(shop)
  shop[:admin][:pets_sold]
end


def increase_pets_sold(shop,sales)
  shop[:admin][:pets_sold] += sales
end


def stock_count(shop)
  shop[:pets].length
end


def pets_by_breed(shop,breed)
  breed_array = []
  for pet in shop[:pets]
    breed_array.push(pet) if pet[:breed] == breed 
  end
  return breed_array
end


def find_pet_by_name(shop,pet_name)

  for pet in shop[:pets]
    found_pet = pet if pet[:name] == pet_name
  end

  return found_pet
end


def remove_pet_by_name(shop,pet_name)
  for pet in shop[:pets]
    shop[:pets].delete(pet) if pet[:name] == pet_name
  end
end


def add_pet_to_stock(shop,pet)
  shop[:pets].push(pet)
end


def customer_pet_count(customer)
  customer[:pets].length
end


def add_pet_to_customer(customer,pet)
  customer[:pets].push(pet)
end


def customer_can_afford_pet(customer,pet)
  if pet == nil
    return false
  else
    funds = customer.values_at(:cash)[0]
    cost = pet.values_at(:price)[0]
    if funds >= cost
      return true
    else
      return false
    end
  end
end


def sell_pet_to_customer(shop,pet,customer)
  stock_check = true if pet != nil
  fund_check = true if customer_can_afford_pet(customer,pet)
  if pet == nil
    pet_cost = 0
  else
    pet_cost = pet[:price]
  end

  if stock_check == true && fund_check == true
    shop[:pets].delete(pet)
    increase_pets_sold(shop,1)
    add_pet_to_customer(customer,pet)
    add_or_remove_cash(shop,pet_cost)
  end
end


