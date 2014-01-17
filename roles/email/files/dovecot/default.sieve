require ["fileinto", "variables", "mailbox", "editheader"];
if address :matches "delivered-to" "*@*" {
    set "target" "${1}";
    if mailboxexists "${target}" {
        fileinto "${target}";
        if header :matches "subject" "*" {
            deleteheader "subject";
            addheader "subject" "[${target}] ${1}";
        }
        keep;
    }
}
