package application.dtos.queries

import java.time.LocalDate

data class BrowseHikesDto(
    val trailId: String? = null,
    val date: LocalDate? = null,
    val difficulty: String? = null,
    val hikerId: String? = null,
    val matchSkillLevel: Boolean = false
)
