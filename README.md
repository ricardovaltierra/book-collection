# Instrucciones

* Version de Ruby requerida

 3.1.2

* Dependencias del sistema

Postgresql 12

* Instalar dependencias

```bash
bundle install
```

* Crear la base de datos

```bash
bin/rails db:create
```

* Correr las pruebas

```bash
bin/rails test:system test
```

* Implementar las funcionalidades necesarias para hacer pasar las pruebas. Ejemplo de salida esperada:

```bash
Running 4 tests in a single process (parallelization threshold is 50)
Run options: --seed 32398

# Running:

DEBUGGER: Attaching after process 99628 fork to child process 99652
Capybara starting Puma...
* Version 5.6.4 , codename: Birdie's Version
* Min threads: 0, max threads: 4
* Listening on http://127.0.0.1:45227
....

Finished in 3.714372s, 1.0769 runs/s, 5.1153 assertions/s.
4 runs, 19 assertions, 0 failures, 0 errors, 0 skips
Running 2 tests in a single process (parallelization threshold is 50)
Run options: --seed 6948

# Running:

..

Finished in 0.034576s, 57.8433 runs/s, 115.6866 assertions/s.
2 runs, 4 assertions, 0 failures, 0 errors, 0 skips
```
