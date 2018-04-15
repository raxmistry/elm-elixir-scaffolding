module Update exposing (update)

import Msgs exposing (..)
import Models exposing (..)
import Debug exposing (log)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    let
        _ =
            Debug.log "Update" msg
    in
        case msg of
            OnLocationChange location ->
                ( { model | page = getPage (location.pathname) }, Cmd.none )


getPage : String -> Page
getPage pathname =
    let
        _ =
            Debug.log "pathname" pathname
    in
        case pathname of
            "clients" ->
                Clients

            _ ->
                Clients
