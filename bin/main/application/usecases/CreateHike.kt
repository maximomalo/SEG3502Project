package application.usecases

import application.dtos.queries.CreateHikeDto

interface CreateHike {
    fun createHike(request: CreateHikeDto)
}
