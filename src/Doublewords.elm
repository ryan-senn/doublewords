module Doublewords exposing (..)


unzipDoubleWords : List String -> ( List String, List String )
unzipDoubleWords doubleWords =
    let
        step : String -> ( List String, List String ) -> ( List String, List String )
        step doubleWord ( listA, listB ) =
            case String.split "-" doubleWord of
                [ a, b ] ->
                    ( a :: listA, b :: listB )

                _ ->
                    ( listA, listB )
    in
    List.foldr step ( [], [] ) doubleWords
