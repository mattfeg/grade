# 2026.1 classrooms
classrooms = [ { name: "Raciocínio Lógico e algorítmico", cod: "T160-10/11", time_slot: :mcd, room: "I22" },
  { name: "Raciocínio Lógico e algorítmico", cod: "T160-45/46", time_slot: :mef, room: "K10" },
  { name: "Raciocínio Lógico e algorítmico", cod: "T160-81/82", time_slot: :tef, room: "N11" },
  { name: "Raciocínio Lógico e algorítmico", cod: "T160-79/80", time_slot: :ncd, room: "J16" },
  { name: "Programação Orientada a Objetos", cod: "T164-62/63", time_slot: :tab, room: "C24" },
  { name: "Estrutura de Dados", cod: "T390-18/19", time_slot: :mcd, room: "I20" },
  { name: "Estrutura de Dados", cod: "T390-63/64", time_slot: :tab, room: "J16" },
  { name: "Resolução de Problemas com Grafos", cod: "T290-40/41", time_slot: :mab, room: "N11" },
  { name: "Resolução de Problemas com Grafos", cod: "T290-60/61", time_slot: :tcd, room: "D26" },
  { name: "Técnicas de Integração de Sistemas", cod: "T342-90", time_slot: :nab, room: "I05" } ]

Classroom.create!(classrooms)
