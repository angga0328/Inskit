require 'test_helper'

class GuidingTest < ActionDispatch::IntegrationTest
  def setup
    @guide = guides(:anto)
    @wisata = wisatas(:transtudio)
    log_in_as(@guide)
  end

  test "should guide a wisata the standard way" do
    assert_difference '@guide.wisatas.count', 1 do
      post guide_wisatas_path, wisata_id: @wisata.id
    end
  end
end
