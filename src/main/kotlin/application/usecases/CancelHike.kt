package application.usecases

import application.dtos.queries.CancelHikeDto

interface CancelHike {
    fun cancelHike(request: CancelHikeDto)
}
