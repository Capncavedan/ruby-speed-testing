Ruby Speed Testing
==================

Speed comparisons of hash vs array lookups.

Sample output from `ruby ./speedster.rb`:

````
Checking hash inclusion against 1 keys: 0.0125444489531219 sec
Checking array inclusion against 1 elements: 0.008137346943840384 sec
    0.65x

Checking hash inclusion against 2 keys: 0.012622058973647654 sec
Checking array inclusion against 2 elements: 0.009535184944979846 sec
    0.76x

Checking hash inclusion against 3 keys: 0.013312652008607984 sec
Checking array inclusion against 3 elements: 0.011170912999659777 sec
    0.84x

Checking hash inclusion against 4 keys: 0.013109563034959137 sec
Checking array inclusion against 4 elements: 0.012821946991607547 sec
    0.98x

Checking hash inclusion against 5 keys: 0.013072662986814976 sec
Checking array inclusion against 5 elements: 0.013064387952908874 sec
    1.00x

Checking hash inclusion against 10 keys: 0.012698053033091128 sec
Checking array inclusion against 10 elements: 0.020492904004640877 sec
    1.61x

Checking hash inclusion against 100 keys: 0.013129858067259192 sec
Checking array inclusion against 100 elements: 0.12727448402438313 sec
    9.69x

Checking hash inclusion against 1000 keys: 0.013166279066354036 sec
Checking array inclusion against 1000 elements: 1.017755387001671 sec
    77.30x

Checking hash inclusion against 10000 keys: 0.013236182974651456 sec
Checking array inclusion against 10000 elements: 12.605561239062808 sec
    952.36x

Checking hash inclusion against 100000 keys: 0.013059977907687426 sec
Checking array inclusion against 100000 elements: 159.66854496102314 sec
    12225.79x

Checking hash inclusion against 1000000 keys: 0.013554240926168859 sec
Checking array inclusion against 1000000 elements: 1745.190012272913 sec
    128756.01x
````