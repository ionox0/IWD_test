import os

w = open('3.txt', 'w')

for f in os.listdir('.'):
    r = open(f, 'rb').read()
    w.write(r)
    w.write('\n')

w.close()
