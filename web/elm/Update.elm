module Update exposing (update)

import Msgs exposing (..)
import Models exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        OnLocationChange location ->
            ( { model | page = getPage (location.pathname) }, Cmd.none )


getPage : String -> Page
getPage pathname =
    case pathname of
        "clients" ->
            Clients

        _ ->
            Clients
