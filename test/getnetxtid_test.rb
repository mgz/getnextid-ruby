require "test_helper"

class GetnetxtidTest < Minitest::Test
    def test_that_it_has_a_version_number
        refute_nil ::Getnetxtid::VERSION
    end
    
    def test_it_gets_id
        res = Getnetxtid.get('mgz.getnextid.rubygem.test', 'wnHAJwIFoFab')
        assert res > 0
    end

    def test_it_increments_id
        res = Getnetxtid.get('mgz.getnextid.rubygem.test', 'wnHAJwIFoFab')
        next_res = Getnetxtid.increment_and_get('mgz.getnextid.rubygem.test', 'wnHAJwIFoFab')
        assert next_res > res
    end
end
