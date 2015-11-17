# systemjs-order

Building a project on a new computer, I found a strange behaviour in systemjs-builder 0.14.10.

This code
```
import 'first.css!';
import 'second.css!';
```

produce this result with 0.14.9

```
$__System.register('first.css!github:systemjs/plugin-css@0.1.19', [], false, function() {});
$__System.register('second.css!github:systemjs/plugin-css@0.1.19', [], false, function() {});
```

and that result with 0.14.10

```
$__System.register('second.css!github:systemjs/plugin-css@0.1.19', [], false, function() {});
$__System.register('first.css!github:systemjs/plugin-css@0.1.19', [], false, function() {});
```

This repository try to repoduce the problem in the simplest way.
Run `build.sh` and observe the result (npm and jspm required in $PATH)
