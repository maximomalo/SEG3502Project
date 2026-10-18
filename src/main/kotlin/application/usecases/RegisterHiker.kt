package application.usecases

import application.dtos.queries.RegisterHikerDto

interface RegisterHiker {
    fun registerHiker(request: RegisterHikerDto)
}
