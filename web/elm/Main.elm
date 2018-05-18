module Main exposing (..)

import Models exposing (..)
import Msgs exposing (..)
import Update exposing (update)
import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid
import Navigation exposing (program, Location)
import Debug exposing (log)
import View exposing (view)


init : Location -> ( Model, Cmd Msg )
init location =
    ( initialModel
    , Cmd.none
    )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Never Model Msg
main =
    Navigation.program Msgs.OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
