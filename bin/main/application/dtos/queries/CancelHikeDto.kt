package application.dtos.queries

data class CancelHikeDto(
    val hikeId: String,
    val actorId: String,
    val reason: String
)
