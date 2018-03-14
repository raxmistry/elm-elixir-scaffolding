module Models exposing (..)


type alias Model =
    { page : Page
    }


initialModel : Model
initialModel =
    { page = Home
    }


type Page
    = Home
    | Clients
