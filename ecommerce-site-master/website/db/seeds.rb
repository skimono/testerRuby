#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create(title: 'CoffeeScript',
  description: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
  functionality wrapped in a cleaner, more succinct syntax. In the first
  book on this exciting new language, CoffeeScript guru Trevor Burnham
  shows you how to hold onto all the power and flexibility of JavaScript
  while writing clearer, cleaner, and safer code.
      </p>},
  image_url:   'cs.jpg',    
  price: 36.00)
# . . .
Product.create(title: 'Programming Ruby 1.9',
  description:
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  image_url: 'ruby.jpg',
  price: 49.95)
# . . .

Product.create(title: 'Rails Test Prescriptions',
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95)
  

VmtFile.create(filename: 'test1.vmt',
description: 'A test VMT file.', 
vmtdata: 'Lorem ipsem something something\nsomething something\nsomething something',
is_locked: false,
last_updated: DateTime.strptime("09/01/2012 06:00", "%m/%d/%Y %H:%M"),
last_update_by: 'Benjamin Clark',
eco: false,
in_agile: false,
oem: 'HP',
oem_group: 'BCS',
revision:1)

VmtFile.create(filename: 'test2.vmt',
description: 'Another test VMT file.', 
vmtdata: 'Lorem ipsem something something\nsomething something\nsomething something',
is_locked: false,
last_updated: DateTime.strptime("09/01/2012 06:01", "%m/%d/%Y %H:%M"),
last_update_by: 'Udrekh Gavale',
eco: false,
in_agile: false,
oem: 'EMC',
revision:1)

VmtFile.create(filename: 'test3.vmt',
description: 'Yet another test VMT file.', 
vmtdata: 'Lorem ipsem something something\nsomething something\nsomething something',
is_locked: false,
last_updated: DateTime.strptime("09/01/2012 06:02", "%m/%d/%Y %H:%M"),
last_update_by: 'John Inda',
eco: false,
in_agile: false,
oem: 'Fujitsu',
revision:1)


VmtFile.create(filename: 'test4.vmt',
description: 'And yes, still *another* test VMT file.', 
vmtdata: 'Lorem ipsem something something\nsomething something\nsomething something',
is_locked: false,
last_updated: DateTime.strptime("09/01/2012 06:03", "%m/%d/%Y %H:%M"),
last_update_by: 'John Inda',
eco: false,
in_agile: false,
oem: 'Fujitsu',
revision:1)