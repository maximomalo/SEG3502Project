package application.dtos.queries

import java.time.ZonedDateTime

data class CreateHikeDto(
    val organizerId: String,
    val trailId: String,
    val title: String,
    val description: String,
    val startDateTime: ZonedDateTime,
    val durationMinutes: Int,
    val capacity: Int,
    val registrationDeadline: ZonedDateTime
)
