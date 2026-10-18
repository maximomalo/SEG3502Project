package application.dtos.queries

import java.time.LocalDate

data class AddOrganizerCertificationDto(
    val actorId: String,
    val hikerId: String,
    val certificationNumber: String,
    val issueDate: LocalDate,
    val expirationDate: LocalDate,
    val organizerLevel: String
)
