/*-----------------------------------------------------------------
-- Description  :   Affichage Nomenclature
-- Pré requis   :   N/A
-----------------------------------------------------------------*/
--Affichage à partir des unités de besoin
-----------------------------------------------------------------
select  
    MGDEP.DEP_CDD,MGDEP.DEP_LB,
    MGRAY.RAY_CDR,MGRAY.RAY_LB,
    MGUBS.UBS_CDF,MGFAM.FAM_LB, 
    MGUBS.UBS_CDS,MGSFA.SFA_LB, 
    MGUBS.UBS_CDUBS,MGUBS.UBS_LBUBS
from MGUBS 
inner join MGSFA 
    on MGUBS.UBS_CDS=MGSFA.sfa_cds  AND MGUBS.UBS_CDF=MGSFA.SFA_CDF
inner join  MGFAM 
    on MGUBS.UBS_CDF=MGFAM.FAM_CDF
inner join MGRAY
    on MGFAM.FAM_CDR=MGRAY.RAY_CDR
inner join MGDEP
    on MGDEP.DEP_CDD=MGRAY.RAY_CDD
order by  MGDEP.DEP_CDD,MGRAY.RAY_CDR, MGFAM.FAM_CDF, MGSFA.SFA_CDS, MGUBS.UBS_CDUBS;
-----------------------------------------------------------------
--Affichage à partir du département
-----------------------------------------------------------------
SELECT  
    MGDEP.DEP_CDD,MGDEP.DEP_LB
    ,MGRAY.RAY_CDR,MGRAY.RAY_LB
    ,MGFAM.FAM_CDF,MGFAM.FAM_LB
    ,MGSFA.SFA_CDS,MGSFA.SFA_LB
    ,MGUBS.UBS_CDUBS,UBS_LBUBS 
FROM MGDEP
INNER JOIN MGRAY 
    on MGRAY.RAY_CDD=MGDEP.DEP_CDD
INNER JOIN MGFAM 
    on MGFAM.FAM_CDR=MGRAY.RAY_CDR
INNER JOIN MGSFA 
    on MGSFA.SFA_CDF=MGFAM.FAM_CDF
INNER JOIN MGUBS 
    on MGUBS.UBS_CDS=MGSFA.SFA_CDS AND MGUBS.UBS_CDF=MGSFA.SFA_CDF
ORDER BY MGDEP.DEP_CDD,MGRAY.RAY_CDR,MGFAM.FAM_CDF,MGSFA.SFA_CDS,MGUBS.UBS_CDUBS
;