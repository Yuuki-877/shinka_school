# frozen_string_literal: true

class TemporarySchedule < ApplicationRecord
  belongs_to :mentor

  validate :start_end_check
  validates :start_time, presence: true
  validates :end_time, presence: true

  scope :a_week_ago, -> { where("start_time >= ?", Date.today.since(7.days)) }

  # 時間の矛盾を防ぐ
  def start_end_check
    if self.start_time.present? && self.end_time.present?
      errors.add(:end_time, "が開始時刻を上回っています。正しく記入してください。") if self.start_time > self.end_time
    end
  end

  def to_ja_wday
    wday = { '0': "日", '1': "月", '2': "火", '3': "水", '4': "木", '5': "金", '6': "土" }
    wday[:"#{self.start_time.wday}"]
  end
end
