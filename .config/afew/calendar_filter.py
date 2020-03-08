from afew.filters.BaseFilter  import Filter
from afew.FilterRegistry import register_filter

@register_filter
class CalendarFilter(Filter):
    message = 'split off calendar invites'
    query = 'mimetype:text/calendar OR mimetype:application/ics'

    def handle_message(self, message):
        self.add_tags(message, 'calendar', 'todo')
