/*-----------------------------------------------------------------
-- Description  :   Purge Nomenclature
-- Pré requis   :   Articles et fournisseurs purgés
-----------------------------------------------------------------*/
DELETE FROM mgubs;
DELETE FROM mgsfa;
DELETE FROM mgrfc;
DELETE FROM mgfam;
DELETE FROM mgpac;
DELETE FROM mgpacc;
DELETE FROM MGVRY;
DELETE FROM mgray;
DELETE FROM rfcnd;
DELETE FROM rfcne;
DELETE FROM mgdep;
COMMIT; 