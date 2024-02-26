require "test_helper"

class ShortCodeTest < ActiveSupport::TestCase
  test "Encode 0" do
    assert_equal "0", ShortCode.encode(0)
  end

  test "Encode 1" do
    assert_equal "1", ShortCode.encode(1)
  end

  test "Encode 10" do
    assert_equal "a", ShortCode.encode(10)
  end

  test "Encode 62" do
    assert_equal "10", ShortCode.encode(62)
  end

  test "Encode 1024" do
    assert_equal "gw", ShortCode.encode(1024)
  end

  test "Encode 999_999" do
    assert_equal "4c91", ShortCode.encode(999_999)
  end
end
