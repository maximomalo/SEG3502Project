package application.usecases

import application.dtos.queries.BrowseHikesDto
import application.dtos.queries.ViewHikeDetailsDto

interface BrowseHikes {
    fun browseHikes(request: BrowseHikesDto)
    fun viewHikeDetails(request: ViewHikeDetailsDto)
}
