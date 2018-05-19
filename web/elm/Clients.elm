module Clients exposing (Client, getClients)


type alias Client =
    { name : String
    , surname : String
    , age : Int
    }


getClients : List Client
getClients =
    let
        client1 =
            Client "test" "bob" 10

        client2 =
            Client "Another" "one" 30
    in
        [ client1, client2 ]
