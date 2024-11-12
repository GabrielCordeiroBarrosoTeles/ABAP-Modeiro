*&---------------------------------------------------------------------*
*& Report ZFAJR_GCBT_RP_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zfajr_gcbt_rp_1.

" ZFAJR_GCBT_03 - Caabaçalho de Vendas
" ZFAJR_GCBT_04 - Intns de Vendas

" Adcionar Cabeçalho
DATA(ls_header) = VALUE zfajr_gcbt_03(
  id = 2
  username = sy-uname
  data = sy-datum
  hora = sy-uzeit
).
MODIFY zfajr_gcbt_03 FROM ls_header.

" Adcionar Itens
TYPES: tt_itens TYPE TABLE OF zfajr_gcbt_04 WITH DEFAULT KEY.
DATA(lt_items) = VALUE tt_itens(
  ( id = 2 item = 1 produto = 2 quantidade = 2 )
  ( id = 2 item = 2 produto = 3 quantidade = 2 )
).
MODIFY zfajr_gcbt_04 FROM TABLE lt_items.