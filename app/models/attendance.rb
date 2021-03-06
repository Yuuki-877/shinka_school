# frozen_string_literal: true

class Attendance < ApplicationRecord
  before_update :set_working_time

  belongs_to :admin, optional: true

  validate  :start_end_check
  validates :start_time, presence: true

  scope :today_attendance_scope, -> { where(start_time: Time.zone.today.beginning_of_day..Time.zone.today.end_of_day) }
  scope :week_attendances_scope, -> { where("end_time <= ?", Time.zone.today.beginning_of_day).where.not(start_time: nil, end_time: nil).order(start_time: :desc).limit(5) }

  def set_working_time
    self.working_time = ((self.end_time - self.start_time).floor / 3600).floor(1)
  end

  def start_end_check
    if self.start_time.present? && self.end_time.present?
      errors.add(:end_time, "が開始時刻を上回っています。正しく記入してください。") if self.start_time > self.end_time
    end
  end
end
