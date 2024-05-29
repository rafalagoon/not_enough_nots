port module Not exposing (main)

import Browser
import Html exposing (Html)
import Platform


port send : Bool -> Cmd msg


type alias Flags =
    ()


type alias Model =
    ()


type alias Msg =
    ()


model : Model
model =
    ()


init : () -> ( Model, Cmd Msg )
init _ =
    ( model, send notnot )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update _ _ =
    ( model, send notnot )


view : Model -> Html Msg
view _ =
    let
        boolToString : Bool -> String
        boolToString b =
            if b then
                "True"

            else
                "False"
    in
    Html.p [] [ Html.text (boolToString notnot) ]


workerMain : Program Flags Model Msg
workerMain =
    Platform.worker
        { init = init
        , update = update
        , subscriptions = subscriptions
        }


browserMain : Program Flags Model Msg
browserMain =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


main : Program Flags Model Msg
main =
    workerMain


notnot : Bool
notnot =
    False
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        -- 759: limit in Chrome
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        -- 1035: limit in Node.js
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        |> not
        -- 1175: limit in Firefox
