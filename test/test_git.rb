require 'helper'

module GitChain
  class TestGit < MiniTest::Test
    include RepositoryTestHelper

    def test_chains
      with_test_repository('a-b-c-chain') do
        assert_equal({ "master" => "default", "a" => "default", "b" => "default", "c" => "default" }, Git.chains)
      end
    end
  end
end
