package application.usecases

import application.dtos.queries.CancelRegistrationDto

interface CancelRegistration {
    fun cancelRegistration(request: CancelRegistrationDto)
}
