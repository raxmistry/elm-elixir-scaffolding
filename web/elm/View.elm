module View exposing (view)

import Msgs exposing (..)
import Models exposing (..)
import Bootstrap.Button as Button
import Bootstrap.Table as Table
import Debug exposing (log)
import Html exposing (Html, div, text, thead, tr, td, span)
import Html.Attributes exposing (style, class)
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
                [ Button.button
                    [ Button.primary
                    , Button.onClick (ChangeToClientPage getClients)
                    , Button.attrs []
                    ]
                    [ text "Clients" ]
                ]
            , div
                [ style
                    [ ( "backgroundColor", "grey" )
                    ]
                ]
                [ text "Should have a grey background" ]
            ]
        ]


clientPage : Model -> Html Msg
clientPage model =
    div []
        [ text "Clients"
        , clientTable model
        , div []
            [ Button.button
                [ Button.primary
                , Button.onClick ChangeToHomePage
                , Button.attrs []
                ]
                [ text "Home" ]
            ]
        ]


clientTable : Model -> Html Msg
clientTable model =
    div []
        [ Table.table
            { options = [ Table.striped, Table.hover ]
            , thead =
                Table.simpleThead
                    [ Table.th [] [ text "Name" ]
                    , Table.th [] [ text "Surname" ]
                    , Table.th [] [ text "Age" ]
                    , Table.th [] [ text "Actions" ]
                    ]
            , tbody = clientTableData model
            }
        ]


clientTableData : Model -> Table.TBody Msg
clientTableData model =
    Table.tbody []
        (model.clients
            |> List.map clientTableRow
        )


clientTableRow : Client -> Table.Row Msg
clientTableRow client =
    Table.tr []
        [ Table.td [] [ text client.name ]
        , Table.td [] [ text client.surname ]
        , Table.td [] [ text (toString client.age) ]
        , Table.td [] [ span [ class "glyphicon glyphicon-star" ] [] ]
        ]
