require ["fileinto", "variables", "mailbox", "editheader"];

if header :matches "x-original-to" "root*" {
    fileinto "root";
} elsif header :matches "x-original-to" "*@*" {
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
