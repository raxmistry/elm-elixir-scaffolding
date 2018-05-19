module Models exposing (..)

import Clients exposing (Client)


type alias Model =
    { page : Page
    , clients : List Client
    }


initialModel : Model
initialModel =
    { page = Home
    , clients = []
    }


type Page
    = Home
    | Clients
