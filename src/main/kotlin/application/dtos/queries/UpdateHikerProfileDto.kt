package application.dtos.queries

data class UpdateHikerProfileDto(
    val actorId: String,
    val hikerId: String,
    val firstName: String,
    val lastName: String,
    val email: String,
    val skillLevel: String
)
