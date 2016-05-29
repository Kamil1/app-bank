package models

import java.time.LocalDate

case class User(userID: Int,
                username: String,
                email: String,
                firstName: String,
                lastName: String,
                gender: String,
                birthday: LocalDate,
                age: Integer) {

}
