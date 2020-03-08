from afew.filters.BaseFilter  import Filter
from afew.FilterRegistry import register_filter

@register_filter
class GitHubFilter(Filter):
    message = 'Create tags based on github projects'
    query = 'from:github.com OR from:github.huit.harvard.edu OR from:code.seas.harvard.edu'

    def handle_message(self, message):
        gh_project = message.get_header('List-ID').split(' ')[0]
        if '/' in gh_project:
            org, repo = gh_project.split(' ')[0].split('/')
            self.add_tags(message, 'github', 'notifications', org, repo)
        gh_reason = message.get_header('X-GitHub-Reason')
        if gh_reason == 'review_requested':
            self.add_tags(message, 'pull-request', 'todo')
        if gh_reason == 'subscribed':
            self.remove_tags(message, 'new')
