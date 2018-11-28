# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)      not null
#  password_digest :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  birthday        :date
#
# Indexes
#
#  index_users_on_name  (name) UNIQUE
#

require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#age' do
    context '20年前の生年月日の場合' do
      let(:user) { User.new(birthday: Time.zone.now - 20.years) }

      it '年齢が20歳であること' do
        expect(user.age).to eq 20
      end
    end
  end
end
