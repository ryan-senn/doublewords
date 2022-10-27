module Example exposing (..)

import Doublewords exposing (unzipDoubleWords)
import Expect
import Test exposing (..)


suite : Test
suite =
    test "split words"
        (\_ -> Expect.equal (unzipDoubleWords [ "a-b", "c-d", "e-f" ]) ( [ "a", "c", "e" ], [ "b", "d", "f" ] ))
