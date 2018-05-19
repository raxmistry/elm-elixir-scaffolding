module Msgs exposing (..)

import Navigation exposing (Location)
import Clients exposing (Client)


type Msg
    = OnLocationChange Location
    | ChangeToClientPage (List Client)
    | ChangeToHomePage
