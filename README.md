This Git repository is about a back-end test.

In this test, you have the following data :

SUPPLIERS = [
    { name: "FunePlus", advitam_grade: 3, works: [ { type: "embalming", price: 350 }, {type: "transport_before_casketing", price: 450} ]},
    { name: "FuneTop", works: [ { type: "graving", price: 10 } ]},
    { name: "FuneTruc", advitam_grade: 5, works: [ { type: "embalming", price: 750 }]},
    { name: "FuneCorp", advitam_grade: 2, works: [ { type: "digging", price: 350 }]}
]

To achieve this, we have :
- The advitam grade on 5 points (advitam_grade)
- The supplier's work
- The price of each work (works[].price => work_type_price)

You must have a Class SelectSupplier which contain the way the supplier will be selected. In this class, several methods :

- work(work_type) => Return the supplier with the best global_grade
- work_all => Return all the supplier with the best work type sort by the global_grade
- suppliers => Return all the suppliers sort by the best advitam_grade
- supplier_grade(supplier_name, work_type) => Return the global_grade of a specific work_type
- grade_weight = Return the grade_weight (It will influence the global_note, if it 0, then only the price matters, if it 20, then the advitam_grade will matter more)


The global_grade is calculating by the following : (grade_weight * advitam_grade) + work_type_price

You will call the call with this =
  select = SelectSupplier.new(suppliers)

