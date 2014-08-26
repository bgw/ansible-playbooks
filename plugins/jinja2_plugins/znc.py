from jinja2.ext import Extension
from hashlib import sha256

class znc(Extension):
    def __init__(self, environment):
        super(znc, self).__init__(environment)
        environment.globals["irc_znc_hash"] = self.__hash_pw

    def __hash_pw(self, pw, salt):
        return "sha256#%s#%s#" % (sha256(pw + salt).hexdigest()[:64], salt)
