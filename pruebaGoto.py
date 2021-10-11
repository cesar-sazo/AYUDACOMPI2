from goto import with_goto

@with_goto  # Decorador necesario.
def llamada():
    print("IMPRIMIR ESTO")
llamada()

@with_goto  # Decorador necesario.
def principal():

    goto .inicio
    # t - temporales
    # a - parametros
    # v1 - retornos
    a
    b

    label .condicion
    t2 = True
    if a == b:
        goto .L0
    else:
        goto .L1

    label .L0
    print("Codigo si es Verdadero.")
    print(a)
    print(b)
    goto .Salto

    label .L1
    print("Codigo si es Falso.")
    goto .Salto

    label .inicio
    a = 123
    b = 123

    goto .condicion

    label .Salto
principal()

