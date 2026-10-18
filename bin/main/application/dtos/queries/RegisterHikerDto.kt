package application.dtos.queries

import java.time.LocalDate

data class RegisterHikerDto(
    val invitationCode: String,
    val email: String,
    val password: String,
    val firstName: String,
    val lastName: String,
    val birthDate: LocalDate,
    val skillLevel: String,
    val waiverAccepted: Boolean,
    val guardianName: String? = null
)
