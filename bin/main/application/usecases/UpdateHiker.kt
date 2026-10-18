package application.usecases

import application.dtos.queries.UpdateHikerProfileDto
import application.dtos.queries.UpdateMembershipDto
import application.dtos.queries.AddOrganizerCertificationDto

interface UpdateHiker {
    fun updateProfile(request: UpdateHikerProfileDto)
    fun updateMembership(request: UpdateMembershipDto)
    fun addOrganizerCertification(request: AddOrganizerCertificationDto)
}
