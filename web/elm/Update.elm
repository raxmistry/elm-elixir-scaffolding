module Update exposing (update)

import Msgs exposing (..)
import Models exposing (..)
import Debug exposing (log)
import Clients exposing (getClients)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    let
        _ =
            Debug.log "Update" msg
    in
        case msg of
            OnLocationChange location ->
                ( { model | page = getPage (location.pathname) }, Cmd.none )

            ChangeToClientPage clients ->
                ( { model | page = Clients, clients = clients }, Cmd.none )

            ChangeToHomePage ->
                ( { model | page = Home }, Cmd.none )


updateClientsOnModel : Model -> Model
updateClientsOnModel model =
    { model | clients = getClients }


updateModelPage : Model -> Page -> Model
updateModelPage model page =
    { model | page = page }


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
                Home
