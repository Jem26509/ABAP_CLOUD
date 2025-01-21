CLASS zjem_cl_art DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjem_cl_art IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lt_art TYPE STANDARD TABLE OF zjem_tab_art.

    lt_art = VALUE #(
      ( client = sy-mandt
        id_art = 1
        descr = 'Protector Carter'
        desc2 = 'Protector de Carter de Embrague por Cable'
        color = 'Negro'
        piezs = 1
        stock = 20
        url = 'https://www.carbon4us.com/22460-home_default/protector-de-carter-de-embrague-por-cable.jpg' )
      ( client = sy-mandt
        id_art = 2
        descr = 'Kid Paramanos'
        desc2 = 'Kit completo de paramanos en carbono'
        color = 'Negro'
        piezs = 2
        stock = 50
        url = 'https://www.carbon4us.com/13267-home_default/kit-paramanos-carbono-ducati-multistrada-1200-dvt.jpg' )
      ( client = sy-mandt
        id_art = 3
        descr = 'Limpiador'
        desc2 = 'Limpiador premium Fullsix para superficies'
        color = 'No Aplica'
        piezs = 1
        stock = 100
        url = 'https://www.carbon4us.com/12493-home_default/limpiador-de-carbono-fullsix.jpg' )
      ( client = sy-mandt
        id_art = 4
        descr = 'Protector Correas'
        desc2 = 'Kit de Protector de Correas en Carbono'
        color = 'Negro'
        piezs = 2
        stock = 10
        url = 'https://www.carbon4us.com/8257-home_default/protector-de-correas-monster-821-1200.jpg' )
     ).

    INSERT zjem_tab_art FROM TABLE @lt_art.
    IF sy-subrc IS INITIAL.
      out->write( 'Insert Correcto' ).
    ELSE.
      out->write( 'Insert Incorrecto' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
