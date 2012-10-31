import sfml/Network
include SFML/Network/Http
use csfml-network

HttpMethod : cover from sfHttpMethod {
    get : extern(sfHttpGet) static Int
    post : extern(sfHttpPost) static Int
    head : extern(sfHttpHead) static Int
}

HttpStatus : cover from sfHttpStatus {
    ok : extern(sfHttpOk) static Int
    created : extern(sfHttpCreated) static Int
    accepted : extern(sfHttpAccepted) static Int
    noContent : extern(sfHttpNoContent) static Int
}