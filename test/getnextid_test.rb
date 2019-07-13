require "test_helper"

class GetnextidTest < Minitest::Test
    def test_that_it_has_a_version_number
        refute_nil ::Getnextid::VERSION
    end
    
    def test_it_gets_id
        res = Getnextid.get('mgz.getnextid.rubygem.test', 'wnHAJwIFoFab')
        assert res > 0
    end

    def test_it_increments_id
        res = Getnextid.get('mgz.getnextid.rubygem.test', 'wnHAJwIFoFab')
        next_res = Getnextid.increment_and_get('mgz.getnextid.rubygem.test', 'wnHAJwIFoFab')
        assert next_res > res
    end
end
