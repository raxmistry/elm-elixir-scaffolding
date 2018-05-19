module View exposing (view)

import Msgs exposing (..)
import Models exposing (..)
import Bootstrap.Button as Button
import Debug exposing (log)
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import Clients exposing (Client, getClients)


view : Model -> Html Msg
view model =
    let
        _ =
            Debug.log "Just checking" model
    in
        case model.page of
            Home ->
                homePage model

            Clients ->
                clientPage model


homePage : Model -> Html Msg
homePage model =
    div []
        [ text "This is the Home Page"
        , div []
            [ div []
                [ text "Could I put some text here?"
                , Button.button
                    [ Button.primary
                    , Button.onClick (ChangeToClientPage getClients)
                    , Button.attrs []
                    ]
                    [ text "Clients" ]
                ]
            , div
                [ style
                    [ ( "backgroundColor", "red" )
                    ]
                ]
                [ text "Should have a red background" ]
            ]
        ]


clientPage : Model -> Html Msg
clientPage model =
    div []
        [ text "This is the clients page"
        , div []
            [ Button.button
                [ Button.primary
                , Button.onClick ChangeToHomePage
                , Button.attrs []
                ]
                [ text "Home" ]
            ]
        ]
