interface ZIF_IF_INTERFACE PUBLIC.
    METHODS: addition
    IMPORTING value1 TYPE INT8
    value2 TYPE INT8
    RETURNING VALUE(result) TYPE INT8,

    multiplikation
    IMPORTING value1 TYPE INT8
    value2 TYPE INT8
    RETURNING VALUE(result) TYPE INT8,

    potenz
    IMPORTING basis TYPE INT8
    varexponent TYPE INT8
    RETURNING VALUE(result) TYPE INT8
    EXCEPTIONS CX_SY_CONVERSION_OVERFLOW.
endinterface.
