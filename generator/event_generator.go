package main

type EventDateTime struct {
	EventId string `json:"eventId"`
	Title string `json:"title"`
	EventTime dateTime `json:"eventTime"`
}

//type Event {
//    eventId: ID!
//    title: String! @search(by: [hash, term])
//    eventTime: Int
//}
func main() {

}
