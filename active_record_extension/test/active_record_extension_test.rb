require 'test_helper'

class ActiveRecordExtensionTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, ActiveRecordExtension
  end
end
