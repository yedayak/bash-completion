import pytest


class Test(object):

    @pytest.mark.complete("vgrename -",
                          skipif="! vgrename --help &>/dev/null")
    def test_dash(self, completion):
        assert completion.list
