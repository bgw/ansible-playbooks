from jinja2 import contextfunction
from jinja2.ext import Extension

class openttd(Extension):
    def __init__(self, environment):
        super(openttd, self).__init__(environment)
        environment.globals["openttd_auto"] = self.__auto

    @contextfunction
    def __auto(self, context, key):
        """
        Shorthand for creating a ``key = value`` entry in an openttd config.
        """

        config_key = context["openttd"]["config"]
        config = context["openttd"]["config_def"][config_key]
        value = config[key]

        if isinstance(value, bool):
            value = "true" if value else "false"
        return "%s = %s" % (key, value)
