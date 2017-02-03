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
  funds = :cash
  cost = :price
  if funds >= cost
    return true
  else
    return false
  end
end