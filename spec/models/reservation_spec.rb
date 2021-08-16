# frozen_string_literal: true

require "rails_helper"

RSpec.describe Reservation, type: :model do
  before do
    user = create(:user)
    mentor = create(:mentor)
    @reservation = build(:reservation, user: user, mentor: mentor)
  end

  describe "バリデーション" do
    it "全ての値が正しく設定されていれば @reservation.valid? が trueになること" do
      expect(@reservation.valid?).to(eq(true))
    end

    describe "start_date" do
      it "start_dateが空だと @reservation.valid? が falseになること" do
        @reservation.start_date = ""
        expect(@reservation.valid?).to(eq(false))
      end
    end

    describe "start_end_check" do
      context "start_dateよりもend_dateの方が未来の時刻である場合" do
        it "@reservation.valid? はtrueになること" do
          @reservation.start_date = "2021/8/1 10:00"
          @reservation.end_date = "2021/8/1 12:00"
          expect(@reservation.valid?).to(eq(true))
        end
      end
      context "start_dateよりもend_dateの方が過去の時刻である場合" do
        it "@reservation.valid? はfalseになること" do
          @reservation.start_date = "2021/8/1 12:00"
          @reservation.end_date = "2021/8/1 10:00"
          expect(@reservation.valid?).to(eq(false))
        end
      end
    end
  end

  describe "アソシエーション" do
    it "紐づくuserが取得できていること" do
      expect(@reservation.user.present?).to(eq(true))
    end
    it "紐づくmentorが取得できていること" do
      expect(@reservation.mentor.present?).to(eq(true))
    end
  end
end
