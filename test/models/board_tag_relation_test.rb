# == Schema Information
#
# Table name: board_tag_relations
#
#  id         :integer          not null, primary key
#  board_id   :integer
#  tag_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_board_tag_relations_on_board_id  (board_id)
#  index_board_tag_relations_on_tag_id    (tag_id)
#
# Foreign Keys
#
#  fk_rails_...  (board_id => boards.id)
#  fk_rails_...  (tag_id => tags.id)
#

require 'test_helper'

class BoardTagRelationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
