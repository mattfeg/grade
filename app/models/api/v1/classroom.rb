class Api::V1::Classroom < ApplicationRecord
  enum :time_slot, {
    undefined: 0,
    mab: 1, 
    mcd: 2, 
    mef: 3, 
    tab: 4, 
    tcd: 5, 
    tef: 6, 
    nab: 7, 
    ncd: 8
  }
end
