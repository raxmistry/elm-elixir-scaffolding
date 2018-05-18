module View exposing (view)

import Msgs exposing (..)
import Models exposing (..)
import Bootstrap.Button as Button
import Debug exposing (log)
import Html exposing (Html, div, text)


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
            [ Button.button
                [ Button.primary
                , Button.onClick ChangeToClientPage
                , Button.attrs []
                ]
                [ text "Clients" ]
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
