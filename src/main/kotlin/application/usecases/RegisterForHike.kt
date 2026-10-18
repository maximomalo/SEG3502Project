package application.usecases

import application.dtos.queries.RegisterForHikeDto

interface RegisterForHike {
    fun registerForHike(request: RegisterForHikeDto)
}
