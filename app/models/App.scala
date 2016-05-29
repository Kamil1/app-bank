package models

case class App(appID: Int,
               name: String,
               developer: Developer,
               logo: String,
               description: String,
               screenshots: List[String],
               price: Int) {

}
