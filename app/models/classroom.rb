class Classroom < ApplicationRecord
  enum :time_slot, {
    not_defined: 0,
    mab: 1,
    mcd: 2,
    mef: 3,
    tab: 4,
    tcd: 5,
    tef: 6,
    nab: 7,
    ncd: 8
  }

  TIME_SLOT_MAP = {
    mab: ("07:30".."09:10"),
    mcd: ("09:30".."11:10"),
    mef: ("11:30".."13:10"),
    tab: ("13:30".."15:10"),
    tcd: ("13:30".."17:10"),
    tef: ("17:30".."19:00"),
    nab: ("19:00".."20:40"),
    ncd: ("21:00".."22:40")
  }

  validates :cod, uniqueness: true

  scope :now, -> { where(time_slot: current_time_slot) }

  def self.current_time_slot
    now = Time.current.strftime("%H:%M")
    TIME_SLOT_MAP.find { |_slot, range| range.cover?(now) }&.first
  end
end
