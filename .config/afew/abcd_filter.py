from afew.filters.BaseFilter  import Filter
from afew.FilterRegistry import register_filter

@register_filter
class ABCDFilter(Filter):
    message = 'Create tags for ABCD lists'
    query = 'to:abcd.harvard.edu OR subject:[abcd*'

    def handle_message(self, message):
        original_to = message.get_header('X-Original-To')
        if '@' in original_to: 
            abcd_list = original_to.split('@')[0]
            self.add_tags(message, 'abcd', abcd_list)
            self.remove_tags(message, 'new')
