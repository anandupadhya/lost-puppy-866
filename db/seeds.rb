require 'date'

p Pet.create(name: "Hari", address: "Jianguo Rd.", species: "dog", found_on:Date.yesterday)
p Pet.create(name: "Chabon", address: "Changning Rd.", species: "dog", found_on:Date.today)
p Pet.create(name: "Blink", address: "Jiashan Rd.", species: "cat", found_on:Date.tomorrow)
