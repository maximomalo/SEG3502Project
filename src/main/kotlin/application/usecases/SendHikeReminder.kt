package application.usecases

import application.dtos.queries.SendHikeReminderDto

interface SendHikeReminder {
    fun sendHikeReminders(request: SendHikeReminderDto)
}
