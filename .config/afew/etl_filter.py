from afew.filters.BaseFilter  import Filter
from afew.FilterRegistry import register_filter

@register_filter
class ETLFilter(Filter):
    message = 'Split off ETL notifications'
    query = 'to:seas-aws-dev-ops@g.harvard.edu'

    def handle_message(self, message):
        subject = message.get_header('Subject')
        received = message.get_header('Received')
        if 'winetl.int.seas.harvard.edu' in received:
            self.add_tags(message, 'etl', 'winetl')
            self.remove_tags(message, 'new')
        elif 'etl.int.seas.harvard.edu' in received:
            self.add_tags(message, 'etl', 'mongoetl')
            self.remove_tags(message, 'new')
        if '[The job failed.]' in subject:
            self.add_tags(message, 'todo');
