#!/usr/bin/python2
import sys, os, re

section = sys.argv[1]
fn = sys.argv[2]
f = open(fn, "r")

section_found = False
def starts_with_lowercase(s):
	return s[1] == s[1].lower()

while 1:
	s = f.readline()
	if s == '': break
	s = s.rstrip("\n")
	if s.startswith("."):
		if section_found: break
		if s == "." + section:
			section_found = True
		continue
	elif not section_found: continue
	m = re.match(r"([a-zA-Z_]+)\$[0-9]:.*", s)
	if m and not starts_with_lowercase(m.groups(0)[0]):
		# strip off $N suffix
		print m.groups(0)[0] + ":"
		sys.stderr.write(m.groups(0)[0] + '\n')
	else:
		print s
