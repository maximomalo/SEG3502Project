package application.dtos.queries

data class UpdateMembershipDto(
    val actorId: String,
    val hikerId: String,
    val membershipStatus: String
)
