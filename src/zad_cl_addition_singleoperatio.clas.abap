CLASS zad_cl_addition_singleoperatio DEFINITION PUBLIC.
  PUBLIC SECTION.
    INTERFACES ZIF_IF_INTERFACE.
ENDCLASS.

CLASS zad_cl_addition_singleoperatio IMPLEMENTATION.
  METHOD zif_if_interface~addition.
    result = value1 + value2.
  ENDMETHOD.

  METHOD zif_if_interface~multiplikation.
    DATA i TYPE I VALUE 0.
    WHILE i < value1.
    result = me->zif_if_interface~addition( value1 = result
    value2 = value2 ).
    i = i + 1 .
    ENDWHILE.
  ENDMETHOD.

  METHOD zif_if_interface~potenz.
    DATA i TYPE I VALUE 1.
    result = basis .
    IF varexponent = 0.
    result = 1.
    ELSE.
    WHILE i < varexponent.
    result = me->zif_if_interface~multiplikation( value1 = result
    value2 = basis ).
    i = i + 1 .
    ENDWHILE.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
