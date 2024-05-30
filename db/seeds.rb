

Brand.create!([
  { name: 'Armani' },
  { name: 'Chanel' },
  { name: 'Dior' },
  { name: 'Yves Saint Laurent' },
  { name: 'Tom Ford' },
  { name: 'Creed' },
  { name: 'Jo Malone' },
  { name: 'Giorgio Armani' },
  { name: 'Versace' },
  { name: 'Aromatherapy Associates' },
  { name: 'NEOM Organics' },
  { name: 'Diptyque' },
  { name: 'L\'Occitane' },
  { name: 'The Body Shop' }
])

Category.create!([
  { category_name: 'Парфуми' },
  { category_name: 'Дім' },
  { category_name: 'Догляд' }
])


Subcategory.create!([
  { category_id: 1, subcategory_name: 'Чоловічі' },
  { category_id: 1, subcategory_name: 'Жіночі' },
  { category_id: 1, subcategory_name: 'Унісекс' },
  { category_id: 2, subcategory_name: 'Арома свічки' },
  { category_id: 2, subcategory_name: 'Аромадифузори' },
  { category_id: 3, subcategory_name: 'Крем для рук' },
  { category_id: 3, subcategory_name: 'Лосьйон для тіла' },
  { category_id: 3, subcategory_name: 'Гель для душа' }
])


Product.create!([
    { product_name: 'Dior Sauvage', description: 'Вишуканий та сміливий аромат з нотами лаванди, бергамоту, пачулі, папороті та сандалового дерева.', price: 3900, quantity: 30, added_date: '2024-05-29', category_id: 1, subcategory_id: 1, brand_id: 3 },
    { product_name: 'Yves Saint Laurent Black Opium', description: 'Сенсуальний та енергійний аромат з нотами кави, апельсину, жасмину, ванілі та кедру.', price: 4300, quantity: 20, added_date: '2024-05-29', category_id: 1, subcategory_id: 2, brand_id: 4 },
    { product_name: 'Tom Ford Tobacco Vanille', description: 'Звабливий та димний аромат з нотами тютюну, ванілі, какао, імбиру та сушених фруктів.', price: 4600, quantity: 15, added_date: '2024-05-29', category_id: 1, subcategory_id: 3, brand_id: 5 },
    { product_name: 'Creed Aventus', description: 'Елегантний та вишуканий аромат з нотами ананаса, яблука, бергамоту, пачулі, мускусу та дубового моху.', price: 8500, quantity: 10, added_date: '2024-05-29', category_id: 1, subcategory_id: 2, brand_id: 6 },
    { product_name: 'Jo Malone English Pear & Freesia', description: 'Свіжий та фруктовий аромат з нотами груші, фрезії, амбри, деревини та мускусу.', price: 3200, quantity: 30, added_date: '2024-05-29', category_id: 1, subcategory_id: 2, brand_id: 7 },
    { product_name: 'Giorgio Armani Si', description: 'Солодкий та жіночний аромат з нотами чорної смородини, рожевого перцю, ванілі, фрезії та пачулі.', price: 2800, quantity: 25, added_date: '2024-05-29', category_id: 1, subcategory_id: 2, brand_id: 8 },
    { product_name: 'Versace Eros', description: 'Силий та пристрасний аромат з нотами м\'яти, зеленого яблука, лимона, тонких дерев, ванілі та мускусу.', price: 3900, quantity: 35, added_date: '2024-05-29', category_id: 1, subcategory_id: 3, brand_id: 9 },
    { product_name: 'Aromatherapy Associates Relax Candle', description: 'Покращить ваш настрій та створить атмосферу спокою з нотами лаванди, герані, ромашки та кедру.', price: 1100, quantity: 20, added_date: '2024-05-29', category_id: 2, subcategory_id: 4, brand_id: 10 },
    { product_name: 'NEOM Organics Reed Diffuser', description: 'Підняти ваш настрій та покращити атмосферу з ароматом нот лимона, бергамоту, розмарину та лаванди.', price: 1200, quantity: 15, added_date: '2024-05-29', category_id: 2, subcategory_id: 5, brand_id: 11 },
    { product_name: 'Diptyque Baies Scented Candle', description: 'Свіжий та фруктовий аромат з нотами чорної смородини та болгарської троянди.', price: 1500, quantity: 25, added_date: '2024-05-29', category_id: 2, subcategory_id: 4, brand_id: 12 },
    { product_name: 'Jo Malone London Lime Basil & Mandarin Cologne', description: 'Свіжий та цитрусовий аромат з нотами лайма, базиліку та мандарина.', price: 2500, quantity: 20, added_date: '2024-05-29', category_id: 2, subcategory_id: 5, brand_id: 7 },
    { product_name: 'L\'Occitane Shea Butter Hand Cream', description: 'Зволожить та заспокоїть ваші руки з маслом ши та нотами меду, апельсина та лаванди.', price: 29.99, quantity: 35, added_date: '2024-05-29', category_id: 3, subcategory_id: 6, brand_id: 5 },
    { product_name: 'The Body Shop Body Yogurt', description: 'Легкий та зволожуючий засіб для тіла з нотами маракуйї, алое вера та зеленого чаю.', price: 19.99, quantity: 40, added_date: '2024-05-29', category_id: 3, subcategory_id: 7, brand_id: 6 },
    { product_name: 'Chanel No. 5', description: 'Легендарний та елегантний аромат з нотами троянди, жасмину, апельсину, ветіверу та ванілі.', price: 5500, quantity: 25, added_date: '2024-05-29', category_id: 1, subcategory_id: 2, brand_id: 2 },
    { product_name: 'Nest Fragrances Grapefruit Reed Diffuser', description: 'Свіжий та фруктовий аромат з нотами грейпфрута, лимона та мандарина.', price: 2800, quantity: 20, added_date: '2024-05-29', category_id: 2, subcategory_id: 5, brand_id: 13 },
    { product_name: 'Kiehl\'s Ultimate Strength Hand Salve', description: 'Інтенсивний та зволожуючий крем для рук з нотами алое вера, евкаліпту та вазеліну.', price: 25.00, quantity: 30, added_date: '2024-05-29', category_id: 3, subcategory_id: 6, brand_id: 14 },
    { product_name: 'Cire Trudon Abd El Kader Scented Candle', description: 'Екзотичний та містичний аромат з нотами м\'яти, зеленого чаю, кедру та гвоздики.', price: 3800, quantity: 15, added_date: '2024-05-29', category_id: 2, subcategory_id: 4, brand_id: 15 },
    { product_name: 'Bath & Body Works Japanese Cherry Blossom Body Lotion', description: 'Ніжний та квітковий лосьйон для тіла з нотами вишні, півонії та амбри.', price: 15.99, quantity: 35, added_date: '2024-05-29', category_id: 3, subcategory_id: 7, brand_id: 16 },
    { product_name: 'The Body Shop Shower Gel', description: 'Освіжаючий та зволожуючий гель для душу з нотами лимона та м\'яти.', price: 12.99, quantity: 2, added_date: '2024-05-29', category_id: 3, subcategory_id: 8, brand_id: 17 },
    { product_name: 'Dove Sensitive Skin Body Wash', description: 'Ніжний та зволожуючий гель для душа для чутливої шкіри з нотами алое вера та оливкової олії.', price: 9.99, quantity: 2, added_date: '2024-05-29', category_id: 3, subcategory_id: 8, brand_id: 18 }
])
