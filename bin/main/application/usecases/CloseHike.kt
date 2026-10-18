package application.usecases

import application.dtos.queries.CloseHikeDto

interface CloseHike {
    fun closeHike(request: CloseHikeDto)
}
