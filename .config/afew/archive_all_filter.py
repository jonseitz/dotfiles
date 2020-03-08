from afew.filters.BaseFilter  import Filter
from afew.FilterRegistry import register_filter

@register_filter
class ArchiveAllFilter(Filter):
    message = 'Archive all non-sent messages'
    query = 'NOT (tag:archive OR tag:sent)'

    def handle_message(self, message):
        self.add_tags(message, 'archive')
