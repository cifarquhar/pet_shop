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
    breed_array.push(pet) if pet.values.include?(breed) 
  end
  return breed_array
end
# This would push a pet into the array if it had a name which was also a breed, eg. a cat called "Husky". Better way of doing this?