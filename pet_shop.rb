def pet_shop_name(name)
  return name[:name]
end

def total_cash(shop)
  sum = shop[:admin][:total_cash]
end

def add_or_remove_cash(shop,amount)
  cash = shop[:admin][:total_cash]
  shop[:admin][:total_cash] = cash + amount
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop,amount)
  shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
  count = shop[:pets].length
end

def pets_by_breed(shop,breed)
  pets = []
    for animals in shop[:pets]
      if animals[:breed] == breed
        pets << animals[:pets]
      end
    end
    return pets
end

def find_pet_by_name(shop, name)
  for animals in shop[:pets]
    if animals[:name] == name
      pet = animals
    end
  end
  return pet
end

def remove_pet_by_name(shop,name)
  for animals in shop[:pets]
    if animals[:name] == name
      shop[:pets].delete(animals)
    end
  end
end

def add_pet_to_stock(shop,pet)
  shop[:pets].push("#{pet}")
end

def customer_cash(customer)
  cash = customer[:cash]
end

def remove_customer_cash(customer,amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  count = customer[:pets].length
end

def add_pet_to_customer(customer,pet)
  customer[:pets].push("#{pet}")
end

def customer_can_afford_pet(customer,pet)
  if customer[:cash] >= pet[:price]
    can_buy_pet = true
  else
    can_buy_pet = false
  end
end
