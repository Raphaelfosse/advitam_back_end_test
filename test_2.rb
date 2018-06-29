SUPPLIERS = [
    { name: "FunePlus", advitam_grade: 3, works: [ { type: "embalming", price: 350 }, {type: "transport_before_casketing", price: 450} ]},
    { name: "FuneTop", works: [ { type: "graving", price: 10 } ]},
    { name: "FuneTruc", advitam_grade: 5, works: [ { type: "embalming", price: 750 }]},
    { name: "FuneCorp", advitam_grade: 2, works: [ { type: "digging", price: 350 }]}
]



class SelectSupplier

  def work(work_type)

  end

  def work_all(work_type)

  end

  def self.suppliers_sort
    SUPPLIERS.sort_by { |e| e[:advitam_grade].to_i }.reverse
  end

  def supplier_grade(supplier_name, work_type)

  end

  def self.grade_weight(value=0)
    return value
  end

  def self.global_grade(name, grade_weight)
    select_supply = SUPPLIERS.find {|x| x[:name] == name }

    if select_supply[:works].count == 1
      work_type_price = 0
      select_supply[:works].each { |e, x| work_type_price = e[:price] }
    else
      work_type_price = []
      puts  select_supply[:works].each { |e, x| work_type_price << e[:price] }
    end

    if select_supply.count == 3
      puts 'hello'
      result = (select_supply[:advitam_grade] * grade_weight) + work_type_price
    else
      puts 'hello 2'
      result = work_type_price
    end
    puts "The global grade for #{name} is #{result}€"
  end

end


SelectSupplier.global_grade("FuneTruc", 0)
