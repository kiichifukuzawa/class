class Drink
end
drink = Drink.new

p drink.class 

class Drink1
    def name
        "カフェラテ"
    end 
end
drink1 = Drink1.new
puts drink1.name

class Drink2 
    def order(name)
        puts "#{name}をください"
    end
end
drink = Drink.new
drink.order("カフェラテ")


module WhippedCream
    def whipped_cream
        @name += "ホイップクリーム"
    end
end
 class Drink
    include WhippedCream
    def initialize(name)
        @name = name
    end 
    def name
        @name
    end
end
drink = Drink.new("モカ")
drink.whipped_cream
puts drink.name


