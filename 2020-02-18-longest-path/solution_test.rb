require 'minitest/autorun'
require 'minitest/pride'
require_relative 'solution'

describe Solution do
  describe '.longest_path' do
    it 'returns the length of the longest path' do
      # dir
      #     subdir1
      #     subdir2
      #         file.ext
      assert_equal 20,
        Solution.longest_path("dir\n\tsubdir1\n\tsubdir2\n\t\tfile.ext")


      # dir
      #     subdir1
      #         file1.ext
      #         subsubdir1
      #     subdir2
      #         subsubdir2
      #             file2.ext
      assert_equal 32,
        Solution.longest_path(
          "dir\n\tsubdir1\n\t\tfile1.ext\n\t\tsubsubdir1\n\tsubdir2\n\t\tsubsubdir2\n\t\t\tfile2.ext"
        )

      # dir
      #     subdir1
      #     subdir2
      assert_equal 0, Solution.longest_path("dir\n\tsubdir1\n\tsubdir2")
    end
  end
end
