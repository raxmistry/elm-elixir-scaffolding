module Main exposing (..)

import Html exposing (Html, text, div)
import Models exposing (..)
import Msgs exposing (..)
import Update exposing (update)
import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid
import Bootstrap.Button as Button
import Navigation exposing (program, Location)


init : Location -> ( Model, Cmd Msg )
init location =
    ( initialModel
    , Cmd.none
    )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Html Msg
view model =
    case model.page of
        Home ->
            div []
                [ text "Hello world"

                --        , div []
                --            [ Button.linkButton
                --                [ Button.primary, Button.attrs [] ]
                --                [ text "Module" ]
                --            ]
                ]

        Clients ->
            div []
                [ text "This is the clients page"
                ]


main : Program Never Model Msg
main =
    Navigation.program Msgs.OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
