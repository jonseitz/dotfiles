#!/usr/bin/python
import gi
gi.require_version('Notify', '0.7')
from gi.repository import Notify
from afew.filters.BaseFilter  import Filter
from afew.FilterRegistry import register_filter


@register_filter
class Notifications(Filter):
    message = 'Show notifications when new messages are received'
    query = 'tag:new'
    def handle_message(self, message):
        Notify.init("New Mail")
        sender = message.get_header('From')
        subject = message.get_header('Subject')
        NewMail = Notify.Notification.new(sender, subject)
        NewMail.show()
