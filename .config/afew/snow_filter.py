from afew.filters.BaseFilter  import Filter
from afew.FilterRegistry import register_filter

@register_filter
class SnowFilter(Filter):
    message = 'split out SNOW emails'
    query = 'from:harvard@service-now.com'

    def handle_message(self, message):
        is_snow = message.get_header('X-ServiceNow-Generated')
        subject = message.get_header('Subject')
        if is_snow == 'true':
            self.add_tags(message, 'snow');
            self.remove_tags(message, 'new');
        if 'has been assigned to you.' in subject or 'Additional information received' in subject or 'has been updated' in subject:
            self.add_tags(message, 'snow', 'todo');
