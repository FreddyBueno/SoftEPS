-- ============================================================
--   Database name:  SOFTEPS                                 
--   DBMS name:      ORACLE Version 8                          
--   Created on:     05/10/2002  23:51                         
-- ============================================================

-- ============================================================
--   Table: AFILIADOS_COMPENSADOS                              
-- ============================================================
create table DBO.AFILIADOS_COMPENSADOS
(
    AFI_NUMERO_DOC               VARCHAR2(18)           not null,
    AFI_TIPO_DOC                 VARCHAR2(3)            not null,
    NUM_DECLARACION              NUMBER(10)             not null,
    COD_GRUPO_ETAREO             NUMBER(1)              not null,
    TIP_UPC                      VARCHAR2(1)            not null,
    TIP_PAGO                     VARCHAR2(1)            not null,
    TIP_BENEFICIARIO             VARCHAR2(1)            not null,
    DIAS                         VARCHAR2(2)            not null,
    SALARIO                      NUMBER(10,2)           not null,
    PORCENTAJE                   VARCHAR2(2)            not null,
    COTIZACION                   NUMBER(10,2)           not null,
    VAL_DEDUCCION                NUMBER(10,2)           not null,
    TIP_DEDUCCION                VARCHAR2(3)            not null,
    VALOR_UPC                    NUMBER(10,2)           not null,
    TIP_AFILIADO                 VARCHAR2(1)            not null,
    FEC_CONSIGNACION             DATE                   not null,
    COD_PARENTESCO               VARCHAR2(3)            not null,
    NUM_PLANILLA                 VARCHAR2(15)           not null,
    TIP_DOCUMENTO_COT            VARCHAR2(3)            null    ,
    NUM_DOCUMENTO_COT            VARCHAR2(18)           null    ,
    EMP_TIPO_DOC                 VARCHAR2(3)            null    ,
    EMP_NUMERO_DOC               VARCHAR2(15)           null    ,
    ID_MULTIAFILIADO             VARCHAR2(9)            null    ,
    CAUSA                        VARCHAR2(30)           null    ,
    VAL_UPC                      NUMBER(10,2)           null    ,
    constraint PK_AFILIADOS_COMPENSADOS primary key (AFI_NUMERO_DOC, AFI_TIPO_DOC, NUM_DECLARACION)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: IXNUM_DECLARACION1                                 
-- ============================================================
create index DBO.IXNUM_DECLARACION1 on DBO.AFILIADOS_COMPENSADOS (AFI_TIPO_DOC asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: AJUSTES_COMPENSACION                               
-- ============================================================
create table DBO.AJUSTES_COMPENSACION
(
    NUM_DECLARACION              NUMBER(10)             not null,
    ITEM                         VARCHAR2(70)           not null,
    VALOR_ANTERIOR               NUMBER(18,2)           not null,
    NUEVO_VALOR                  NUMBER(18,2)           not null,
    FEC_APLICATIVO               DATE                   not null,
    USUARIO                      VARCHAR2(15)           not null,
    constraint PK_AJUSTES_COMPENSACION primary key (NUM_DECLARACION, ITEM, VALOR_ANTERIOR, NUEVO_VALOR, FEC_APLICATIVO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: AUTOLIQUIDACION                                    
-- ============================================================
create table DBO.AUTOLIQUIDACION
(
    NUM_PLANILLA                 VARCHAR2(15)           not null,
    EMP_TIPO_DOC                 VARCHAR2(3)            not null,
    EMP_NUMERO_DOC               VARCHAR2(18)           not null,
    COD_SUCURSAL                 VARCHAR2(2)            null    ,
    TIP_DECLARACION              VARCHAR2(1)            not null,
    FEC_PAGO                     DATE                   null    ,
    NUM_PLANILLA_CORR            VARCHAR2(15)           null    ,
    PER_COTIZACION               VARCHAR2(7)            not null,
    PER_PRESENTACION             VARCHAR2(7)            null    ,
    TOT_PLANILLA                 NUMBER(18)             null    ,
    TOT_APORTE_PER               NUMBER(18)             null    ,
    TOT_INCAPACIDAD              NUMBER(18)             null    ,
    TOT_LICENCIAS                NUMBER(18)             null    ,
    TOT_APORTE                   NUMBER(18)             null    ,
    INT_MORA                     NUMBER(18)             null    ,
    TOT_APORTE_MMORA             NUMBER(18)             null    ,
    TOT_SALDO_FAV                NUMBER(18)             null    ,
    TOT_UPC                      NUMBER(18)             null    ,
    TOT_PAGADO                   NUMBER(18)             null    ,
    COD_BANCO                    VARCHAR2(3)            not null,
    NUM_CUENTA                   VARCHAR2(20)           null    ,
    VAL_EFECTIVO                 NUMBER(18)             null    ,
    VAL_CHEQUE                   NUMBER(18)             null    ,
    EST_PLANILLA                 VARCHAR2(3)            null    ,
    COD_REGIONAL                 VARCHAR2(3)            null    ,
    COD_OFICINA                  VARCHAR2(3)            null    ,
    NUM_DECLARACION              NUMBER(10)             null    ,
    CRU_CONCILIACION             VARCHAR2(1)            null    ,
    FEC_DIGITACION               DATE                   not null,
    TIP_DOC_USUARIO              VARCHAR2(3)            not null,
    NUM_DOC_USUARIO              VARCHAR2(18)           not null,
    FEC_MODIFICACION             DATE                   null    ,
    NO_INCAP_PAG                 VARCHAR2(30)           null    ,
    VAL_INCAP_PAG                NUMBER(18)             null    ,
    NO_LICEN_PAG                 VARCHAR2(30)           null    ,
    VAL_LICEN_PAG                NUMBER(18)             null    ,
    NO_MESES_MORA                NUMBER(18)             null    ,
    NO_PLANINILLA_ANT            VARCHAR2(15)           null    ,
    VAL_NETO_UPC                 NUMBER(18)             null    ,
    VAL_INTERES_UPC              NUMBER(18)             null    ,
    VAL_APORMASINT_UPC           NUMBER(18)             null    ,
    VAL_SALFAVOR_UPC             NUMBER(18)             null    ,
    VAL_PAGO_UPC                 NUMBER(18)             null    
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: IXDNUMPLANILLA                                     
-- ============================================================
create unique index DBO.IXDNUMPLANILLA on DBO.AUTOLIQUIDACION (NUM_PLANILLA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IDEXTFECHA                                         
-- ============================================================
create index DBO.IDEXTFECHA on DBO.AUTOLIQUIDACION (FEC_PAGO asc, NUM_DECLARACION asc, CRU_CONCILIACION asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXEST_PLANILLA                                     
-- ============================================================
create index DBO.IXEST_PLANILLA on DBO.AUTOLIQUIDACION (EST_PLANILLA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXPAGO                                             
-- ============================================================
create index DBO.IXPAGO on DBO.AUTOLIQUIDACION (EMP_NUMERO_DOC asc, FEC_PAGO asc, TOT_PAGADO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IX_PER_COM_EST_PLA                                 
-- ============================================================
create index DBO.IX_PER_COM_EST_PLA on DBO.AUTOLIQUIDACION (PER_COTIZACION asc, EST_PLANILLA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXPER_PRE_EST_PLA                                  
-- ============================================================
create index DBO.IXPER_PRE_EST_PLA on DBO.AUTOLIQUIDACION (PER_PRESENTACION asc, EST_PLANILLA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXPERPRE_PERCOT_TIPDEC                             
-- ============================================================
create index DBO.IXPERPRE_PERCOT_TIPDEC on DBO.AUTOLIQUIDACION (PER_PRESENTACION asc, PER_COTIZACION asc, TIP_DECLARACION asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXTIP_DEC_PER_PRE_EST_PLA                          
-- ============================================================
create index DBO.IXTIP_DEC_PER_PRE_EST_PLA on DBO.AUTOLIQUIDACION (TIP_DECLARACION asc, PER_PRESENTACION asc, EST_PLANILLA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: PKNUMPLACORRECION                                  
-- ============================================================
create index DBO.PKNUMPLACORRECION on DBO.AUTOLIQUIDACION (NUM_PLANILLA_CORR asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: PKPERIODO                                          
-- ============================================================
create index DBO.PKPERIODO on DBO.AUTOLIQUIDACION (PER_COTIZACION asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: BASES_DE_CALCULO                                   
-- ============================================================
create table DBO.BASES_DE_CALCULO
(
    NUM_DECLARACION              NUMBER(10)             not null,
    COD_GRUPO_ETA                NUMBER(1)              not null,
    TOT_COTIZANTES_MCN           NUMBER(18)             null    ,
    TOT_COTIZANTES_MCE           NUMBER(18)             null    ,
    TOT_COTIZANTES_MPN           NUMBER(18)             null    ,
    TOT_COTIZANTES_MPE           NUMBER(18)             null    ,
    TOT_BENEFICIARIOS_MCN        NUMBER(18)             null    ,
    TOT_BENEFICIARIOS_MCE        NUMBER(18)             null    ,
    TOT_BENEFICIARIOS_MPNL       NUMBER(18)             null    ,
    TOT_BENEFICIARIOS_MPE        NUMBER(18)             null    ,
    TOT_AFILIADOS_MCN            NUMBER(18)             null    ,
    TOT_AFILIADOS_MCE            NUMBER(18)             null    ,
    TOT_AFILIADOS_MPN            NUMBER(18)             null    ,
    TOT_AFILIADOS_MPE            NUMBER(18)             null    ,
    TOT_AFILIADOS_UPCNORMAL      NUMBER(18)             null    ,
    TOT_AFILIADOS_UPCESPECIAL    NUMBER(18)             null    ,
    TOT_DIAS_COTZNN              NUMBER(18)             null    ,
    TOT_DIAS_COTIZE              NUMBER(18)             null    ,
    TOT_UPC_DZN                  NUMBER(18)             null    ,
    TOT_UPC_DZE                  NUMBER(18)             null    ,
    TOT_VALOR_UPC                NUMBER(18)             null    ,
    constraint PK_BASES_DE_CALCULO primary key (NUM_DECLARACION, COD_GRUPO_ETA)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: BASES_DE_CALCULO_DEP                               
-- ============================================================
create table DBO.BASES_DE_CALCULO_DEP
(
    NUM_DECLARACION              NUMBER(10)             not null,
    COD_GRUPO_ETA                NUMBER(1)              not null,
    TOT_DEPENDIENTES             NUMBER(18)             not null,
    VAL_UPC_DEPENDIENTES         NUMBER(18)             not null,
    VAL_PROMOCION                NUMBER(18)             not null,
    VAL_SOLIDARIDAD              NUMBER(18)             not null,
    constraint PK_BASES_DE_CALCULO_DEP primary key (NUM_DECLARACION, COD_GRUPO_ETA)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: CARTERA                                            
-- ============================================================
create table DBO.CARTERA
(
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    TIP_DOCUMENTO_EMP            VARCHAR2(3)            not null,
    NUM_DOCUMENTO_EMP            VARCHAR2(18)           not null,
    COD_SUCURSAL_EMP             VARCHAR2(2)            not null,
    PER_COMPENSACION             VARCHAR2(7)            not null,
    TIPO_MORA                    VARCHAR2(1)            not null,
    VALOR_MORA                   NUMBER(10,2)           not null,
    VALOR_UPC                    NUMBER(10,2)           null    ,
    COD_TIPO_AFIL                VARCHAR2(1)            null    ,
    TIP_DOCUMENTO_COT            VARCHAR2(3)            not null,
    NUM_DOCUMENTO_COT            VARCHAR2(18)           not null,
    INTERES                      NUMBER(10,2)           null    ,
    constraint PK_CARTERA primary key (TIP_DOCUMENTO, NUM_DOCUMENTO, TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP, COD_SUCURSAL_EMP, PER_COMPENSACION, TIPO_MORA, TIP_DOCUMENTO_COT, NUM_DOCUMENTO_COT)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: IXDCARTERACOTIZANTE                                
-- ============================================================
create index DBO.IXDCARTERACOTIZANTE on DBO.CARTERA (TIP_DOCUMENTO_COT asc, NUM_DOCUMENTO_COT asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXPER_CARTERA                                      
-- ============================================================
create index DBO.IXPER_CARTERA on DBO.CARTERA (PER_COMPENSACION asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: CIERRES                                            
-- ============================================================
create table DBO.CIERRES
(
    TIP_CIERRE                   VARCHAR2(1)            not null,
    PER_COMPENSACION             VARCHAR2(7)            not null,
    FEC_DIGITACION               DATE                   not null,
    constraint PK_CIERRES primary key (TIP_CIERRE, PER_COMPENSACION, FEC_DIGITACION)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: COMPANIA                                           
-- ============================================================
create table DBO.COMPANIA
(
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    NOM_EPS                      VARCHAR2(100)          not null,
    FEC_INCLUSION                DATE                   not null,
    COD_EPS                      VARCHAR2(6)            not null,
    DIR_EPS                      VARCHAR2(50)           not null,
    TEL_EPS                      VARCHAR2(20)           not null,
    FAX_EPS                      VARCHAR2(20)           not null,
    REP_LEGAL                    VARCHAR2(100)          null    ,
    EML_EPS                      VARCHAR2(50)           null    ,
    constraint PK_COMPANIA primary key (TIP_DOCUMENTO, NUM_DOCUMENTO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 40K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: CONSOLIDACION_COMPENSACION                         
-- ============================================================
create table DBO.CONSOLIDACION_COMPENSACION
(
    DEPARTAMENTO                 VARCHAR2(2)            not null,
    COL1                         NUMBER(18,2)           not null,
    COL2                         NUMBER(18,2)           not null,
    COL3                         NUMBER(18,2)           not null,
    COL4                         NUMBER(18,2)           not null,
    COL5                         NUMBER(18,2)           not null,
    COL6                         NUMBER(18,2)           not null,
    COL7                         NUMBER(18,2)           not null,
    COL8                         NUMBER(18,2)           not null,
    COL9                         NUMBER(18,2)           not null,
    COL10                        NUMBER(18,2)           not null,
    COL11                        NUMBER(18,2)           not null,
    COL12                        NUMBER(18,2)           not null,
    COL13                        NUMBER(18,2)           not null,
    COL14                        NUMBER(18,2)           not null,
    constraint PK_CONSOLIDACION_COMPENSACION primary key (DEPARTAMENTO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: CUENTAS_CONTABLES_COMPENSACION                     
-- ============================================================
create table DBO.CUENTAS_CONTABLES_COMPENSACION
(
    NOM_CUENTA_CONTABLE          VARCHAR2(200)          not null,
    NUM_CUENTA_CONTABLE          NUMBER(15)             not null,
    CENTRO_DE_COSTO              VARCHAR2(8)            not null,
    TIPO_ASIENTP                 VARCHAR2(1)            not null,
    constraint PK_CUENTAS_CONTABLES_COMPENSAC primary key (NUM_CUENTA_CONTABLE)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: DECLARACIONES                                      
-- ============================================================
create table DBO.DECLARACIONES
(
    NUM_DECLARACION              NUMBER(10)             not null,
    COT_TIPO_DECLA               NUMBER(1)              not null,
    PERIODO_COMPENSADO           VARCHAR2(10)           not null,
    FECHA_DECLARACION            DATE                   not null,
    TIPO_CIERRE                  VARCHAR2(1)            null    ,
    NUM_DECLARATIVA              NUMBER(10)             null    ,
    constraint PK_DECLARACIONES primary key (PERIODO_COMPENSADO, FECHA_DECLARACION)
)
pctfree 0
pctused 0
initrans 0
maxtrans 0
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: IXNUM_DECLARACION2                                 
-- ============================================================
create index DBO.IXNUM_DECLARACION2 on DBO.DECLARACIONES (NUM_DECLARACION asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXNUM_DECLARATIVA                                  
-- ============================================================
create index DBO.IXNUM_DECLARATIVA on DBO.DECLARACIONES (NUM_DECLARATIVA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: DEPARTAMENTOS                                      
-- ============================================================
create table DBO.DEPARTAMENTOS
(
    COD_DEPARTAMENTO             VARCHAR2(2)            not null,
    NOM_DEPARTAMENTO             VARCHAR2(35)           not null,
    constraint PK_DEPARTAMENTOS primary key (COD_DEPARTAMENTO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: PKDEPARTAMENTOS                                    
-- ============================================================
create unique index DBO.PKDEPARTAMENTOS on DBO.DEPARTAMENTOS (COD_DEPARTAMENTO asc, NOM_DEPARTAMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: PK_MOMBRES                                         
-- ============================================================
create index DBO.PK_MOMBRES on DBO.DEPARTAMENTOS (NOM_DEPARTAMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: DET_ESTRUCTURA_CAMPOS                              
-- ============================================================
create table DBO.DET_ESTRUCTURA_CAMPOS
(
    CODCAMPO                     VARCHAR2(2)            not null,
    NOMCAMPO                     VARCHAR2(20)           not null,
    FORMATO                      VARCHAR2(10)           null    
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 40K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: SYS_C002035                                        
-- ============================================================
create unique index DBO.SYS_C002035 on DBO.DET_ESTRUCTURA_CAMPOS (CODCAMPO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 40K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: DET_PAGO_AUTOLIQUIDACIONES                         
-- ============================================================
create table DBO.DET_PAGO_AUTOLIQUIDACIONES
(
    NUM_PLANILLA                 VARCHAR2(15)           not null,
    COD_BANCO                    VARCHAR2(10)           not null,
    NUM_CUENTA                   VARCHAR2(10)           not null,
    VAL_CHEQUE                   NUMBER(18)             not null,
    constraint DET_PAGO_AUTO_UK11029728513786 unique (NUM_PLANILLA, COD_BANCO, NUM_CUENTA)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 40K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: DET_PAGO_UPC_ADICIONAL                             
-- ============================================================
create table DBO.DET_PAGO_UPC_ADICIONAL
(
    NUM_PLANILLA                 VARCHAR2(15)           not null,
    AFI_TIP_DOCUMENTO            VARCHAR2(3)            not null,
    AFI_NUM_DOCUMENTO            VARCHAR2(18)           not null,
    AFI_TIP_DOC_ADICIONAL        VARCHAR2(3)            not null,
    AFI_NUM_DOC_ADICIONAL        VARCHAR2(18)           not null,
    PER_COTIZACION               VARCHAR2(7)            not null,
    PER_PRESENTACION             VARCHAR2(7)            not null,
    VAL_PAGADO                   NUMBER(18)             not null,
    COD_ESTADO                   VARCHAR2(3)            null    
)
pctfree 0
pctused 0
initrans 0
maxtrans 0
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: IDEXPAGOUPC_FK                                     
-- ============================================================
create index DBO.IDEXPAGOUPC_FK on DBO.DET_PAGO_UPC_ADICIONAL (NUM_PLANILLA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXCOTIZANTE                                        
-- ============================================================
create index DBO.IXCOTIZANTE on DBO.DET_PAGO_UPC_ADICIONAL (AFI_TIP_DOCUMENTO asc, AFI_NUM_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXDOCUMENTOS                                       
-- ============================================================
create index DBO.IXDOCUMENTOS on DBO.DET_PAGO_UPC_ADICIONAL (PER_COTIZACION asc, AFI_TIP_DOCUMENTO asc, AFI_NUM_DOCUMENTO asc, AFI_TIP_DOC_ADICIONAL asc, AFI_NUM_DOC_ADICIONAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXPERIODO                                          
-- ============================================================
create index DBO.IXPERIODO on DBO.DET_PAGO_UPC_ADICIONAL (NUM_PLANILLA asc, PER_COTIZACION asc, PER_PRESENTACION asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: DET_PLANILLA_AUTOLIQUIDACION                       
-- ============================================================
create table DBO.DET_PLANILLA_AUTOLIQUIDACION
(
    NUM_PLANILLA                 VARCHAR2(15)           not null,
    AFI_TIPO_DOC                 VARCHAR2(3)            not null,
    AFI_NUMERO_DOC               VARCHAR2(18)           not null,
    NOV_ING                      VARCHAR2(1)            null    ,
    NOV_RET                      VARCHAR2(1)            null    ,
    NOV_TDA                      VARCHAR2(1)            null    ,
    NOV_TAA                      VARCHAR2(1)            null    ,
    NOV_VSP                      VARCHAR2(1)            null    ,
    NOV_VST                      VARCHAR2(1)            null    ,
    NOV_SLN                      VARCHAR2(1)            null    ,
    NOV_IGE                      VARCHAR2(1)            null    ,
    NOV_LMA                      VARCHAR2(1)            null    ,
    NOV_VAC                      VARCHAR2(1)            null    ,
    DIA_COTIZADOS                VARCHAR2(2)            not null,
    SAL_BASE                     NUMBER(18)             not null,
    VAL_NETO_NOV                 NUMBER(18)             null    ,
    ING_BASE_COT                 NUMBER(18)             not null,
    COT_OBLIGATORIA              NUMBER(18)             not null,
    NUM_INCAPACIDAD_EGR          VARCHAR2(10)           null    ,
    VAL_INCAPACIDAD_EGR          NUMBER(18)             null    ,
    NUM_LICENCIA_MAT             VARCHAR2(10)           null    ,
    VAL_LICENCIA_MAT             NUMBER(18)             null    ,
    VAL_UPC_ADI                  NUMBER(18)             null    ,
    VAL_TOTAL_COT                NUMBER(18)             not null,
    DET_ESTADO                   VARCHAR2(3)            not null,
    PER_COTIZACION               VARCHAR2(7)            not null,
    PER_PRESENTACION             VARCHAR2(7)            not null,
    COD_OFICINA                  VARCHAR2(3)            null    ,
    NUM_DECLARACION              NUMBER(10)             null    ,
    constraint PK_DET_PLANILLA_AUTOLIQUIDACIO primary key (NUM_PLANILLA, AFI_TIPO_DOC, AFI_NUMERO_DOC)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_AUTOLIQUIDACION_FK                              
-- ============================================================
create index DBO.FK_AUTOLIQUIDACION_FK on DBO.DET_PLANILLA_AUTOLIQUIDACION (NUM_PLANILLA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXCOMPENSACION                                     
-- ============================================================
create index DBO.IXCOMPENSACION on DBO.DET_PLANILLA_AUTOLIQUIDACION (NUM_PLANILLA asc, PER_PRESENTACION asc, PER_COTIZACION asc, DET_ESTADO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXDET_ESTADO                                       
-- ============================================================
create index DBO.IXDET_ESTADO on DBO.DET_PLANILLA_AUTOLIQUIDACION (DET_ESTADO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXDOCPER                                           
-- ============================================================
create index DBO.IXDOCPER on DBO.DET_PLANILLA_AUTOLIQUIDACION (AFI_TIPO_DOC asc, AFI_NUMERO_DOC asc, PER_COTIZACION asc, PER_PRESENTACION asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXNUM_PLA_NUM_DEC                                  
-- ============================================================
create index DBO.IXNUM_PLA_NUM_DEC on DBO.DET_PLANILLA_AUTOLIQUIDACION (NUM_DECLARACION asc, NUM_PLANILLA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: PKDOCUMENTO                                        
-- ============================================================
create index DBO.PKDOCUMENTO on DBO.DET_PLANILLA_AUTOLIQUIDACION (AFI_TIPO_DOC asc, AFI_NUMERO_DOC asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: DIGNOSTICOS                                        
-- ============================================================
create table DBO.DIGNOSTICOS
(
    COD_DIAGNOSTICO              VARCHAR2(4)            not null,
    NOM_DIAGNSOTICO              VARCHAR2(255)          null    ,
    RANGO_SEXO                   VARCHAR2(1)            null    ,
    EDA_MININA                   NUMBER                 null    ,
    EDA_MAXIMA                   NUMBER                 null    ,
    constraint PK_DIGNOSTICOS primary key (COD_DIAGNOSTICO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 480K
next 216K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: ENFERMEDADES                                       
-- ============================================================
create table DBO.ENFERMEDADES
(
    COD_ENFERMEDAD               VARCHAR2(5)            not null,
    NOM_ENFERMEDAD               VARCHAR2(255)          not null,
    constraint PK_ENFERMEDADES primary key (COD_ENFERMEDAD)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: ESTADO_PLANILLAS                                   
-- ============================================================
create table DBO.ESTADO_PLANILLAS
(
    COD_ESTADO                   VARCHAR2(3)            not null,
    DES_ESTADO                   VARCHAR2(35)           not null,
    constraint PK_ESTADO_PLANILLAS primary key (COD_ESTADO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: ESTRATOS_AFILIADOS                                 
-- ============================================================
create table DBO.ESTRATOS_AFILIADOS
(
    COD_ESTRATO_AFILIADO         VARCHAR2(3)            not null,
    NOM_ESTRATO_AFILIADO         VARCHAR2(50)           null    ,
    VAL_COPAGO                   NUMBER(18)             null    ,
    VAL_CUOTA                    NUMBER(18)             null    ,
    MIN_NUM_SALARIOS_MIN         NUMBER                 null    ,
    MAX_NUM_SALARIOS_MIN         NUMBER                 null    ,
    constraint PK_ESTRATOS_AFILIADOS primary key (COD_ESTRATO_AFILIADO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: ESTRUCTURA_COSTOS                                  
-- ============================================================
create table DBO.ESTRUCTURA_COSTOS
(
    COD_GRUPO_ETA                NUMBER(1)              not null,
    VAL_ESTRUCTURA_COST          NUMBER(10,2)           not null,
    ANO_VAL_ESTRUCTURA_COST      DATE                   not null,
    constraint PK_ESTRUCTURA_COSTOS primary key (COD_GRUPO_ETA, ANO_VAL_ESTRUCTURA_COST)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: GRUPO_CONTRATACION                                 
-- ============================================================
create table DBO.GRUPO_CONTRATACION
(
    NIV_GRUPO                    NUMBER(1)              not null,
    TIP_ATENCION                 VARCHAR2(1)            not null,
    ESP_GRUPO                    VARCHAR2(2)            not null,
    NOM_GRUPO                    VARCHAR2(75)           not null,
    POR_CAPITACION               NUMBER(4,4)            null    ,
    constraint GRUPO_CONT_6304494701 primary key (NIV_GRUPO, TIP_ATENCION, ESP_GRUPO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: PKNIVEL                                            
-- ============================================================
create index DBO.PKNIVEL on DBO.GRUPO_CONTRATACION (NIV_GRUPO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: GRUPOS_ETAREOS                                     
-- ============================================================
create table DBO.GRUPOS_ETAREOS
(
    COD_GRUPO_ETA                NUMBER(1)              not null,
    INI_GRUPO_ETA                NUMBER(18)             null    ,
    FIN_GRUPO_ETA                NUMBER(18)             null    ,
    SEXO_GRUPO_ETA               VARCHAR2(1)            null    ,
    constraint PK_GRUPOS_ETAREOS primary key (COD_GRUPO_ETA)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: IXINI_FIN_GRUPO                                    
-- ============================================================
create index DBO.IXINI_FIN_GRUPO on DBO.GRUPOS_ETAREOS (INI_GRUPO_ETA asc, FIN_GRUPO_ETA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: INCAPACIDADES_COMPENSADAS                          
-- ============================================================
create table DBO.INCAPACIDADES_COMPENSADAS
(
    NUM_DECLARACION              NUMBER(10)             not null,
    TIPO_DOCUMENTO               VARCHAR2(3)            null    ,
    NUMERO_DOCUMENTO             VARCHAR2(18)           null    ,
    constraint PK_INCAPACIDADES_COMPENSADAS primary key (NUM_DECLARACION)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: INTERESES                                          
-- ============================================================
create table DBO.INTERESES
(
    FEC_INTERESES                DATE                   not null,
    VAL_ANUL                     NUMBER(10,2)           not null,
    VAL_MENSUAL                  NUMBER(10,2)           not null,
    DESCRIPCION                  VARCHAR2(255)          not null,
    constraint PK_INTERESES primary key (FEC_INTERESES)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: LICENCIAS_COMPENSADAS                              
-- ============================================================
create table DBO.LICENCIAS_COMPENSADAS
(
    NUM_DECLARACION              NUMBER(10)             not null,
    TIPO_DOCUMENTO               VARCHAR2(3)            null    ,
    NUMERO_DOCUMENTO             VARCHAR2(18)           null    ,
    constraint PK_LICENCIAS_COMPENSADAS primary key (NUM_DECLARACION)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: LIQUIDACION_COMPENSACION                           
-- ============================================================
create table DBO.LIQUIDACION_COMPENSACION
(
    NUM_DECLARACION              NUMBER(10)             not null,
    ING_SALBASE_COTIZ12          NUMBER(18,2)           null    ,
    ING_SALBASE_COTIZ8           NUMBER(18,2)           null    ,
    VAL_TOTAL_RECA12             NUMBER(18,2)           null    ,
    VAL_TOTAL_RECA8              NUMBER(18,2)           null    ,
    VAL_DEDUCIDO_AUT12           NUMBER(18,2)           null    ,
    VAL_DEDUCIDO_AUT8            NUMBER(18,2)           null    ,
    VAL_TOTAL_COTIZ12            NUMBER(18,2)           null    ,
    VAL_TOTAL_COTIZ8             NUMBER(18,2)           null    ,
    VAL_SOLIDARIDAD_12           NUMBER(18,2)           null    ,
    VAL_SOLIDARIDAD_8            NUMBER(18,2)           null    ,
    VAL_PYP12                    NUMBER(18,2)           null    ,
    VAL_PYP8                     NUMBER(18,2)           null    ,
    PRO_INCAPACIDADES12          NUMBER(18,2)           null    ,
    PRO_INCAPACIDADES8           NUMBER(18,2)           null    ,
    VAL_COTIZACION_NET12         NUMBER(18,2)           null    ,
    VAL_COTIZACION_NET8          NUMBER(18,2)           null    ,
    VAL_LINCENCIAS_MAT12         NUMBER(18,2)           null    ,
    VAL_LICENCIAS_MAT8           NUMBER(18,2)           null    ,
    VAL_RECONOCER_UPC12          NUMBER(18,2)           null    ,
    VAL_RECONOCER_UPC8           NUMBER(18,2)           null    ,
    VAL_PAGCOBRAR_FSG12          NUMBER(18,2)           null    ,
    VAL_PAGCOBRAR_FSG8           NUMBER(18,2)           null    ,
    TOT_SUBCUENTA_COMP12         NUMBER(18,2)           null    ,
    TOT_SUBCUENTA_COMP8          NUMBER(18,2)           null    ,
    VAL_PROMOCION                NUMBER(18,2)           null    ,
    REC_PROMOCION                NUMBER(18,2)           null    ,
    SAL_COMPENSAR_PROM           NUMBER(18,2)           null    ,
    FEC_CONSIGNACION_SOLID       DATE                   null    ,
    VAL_CONSIGNACION_SOLID       NUMBER(18,2)           null    ,
    FEC_CONSIGNACION_PRO         DATE                   null    ,
    VAL_CONSIGNACION_PROMOCION   NUMBER(18,2)           null    ,
    FEC_CONSIGNACION_COMP        DATE                   null    ,
    VAL_CONSIGNADO_COMP          NUMBER(18,2)           null    ,
    NUM_AGREGADOS                NUMBER(18,2)           null    ,
    VAL_UPC_AGREG                NUMBER(18,2)           null    ,
    VAL_PROMOCION_AGREG          NUMBER(18,2)           null    ,
    VA_SOLID_AGREG               NUMBER(18,2)           null    ,
    NUM_AUTOLIQUIDACIONES        NUMBER(18,2)           null    ,
    VAL_PAGO_INCAP               NUMBER(18,2)           null    ,
    TOT_COTIZACIONES_NOIDENT     NUMBER(18,2)           null    ,
    NUM_TOT_AFIL                 NUMBER(18,2)           null    ,
    NUM_TOTAL_COTIZ8             NUMBER(18,2)           null    ,
    TOT_AFILIADOS_IND            NUMBER(18,2)           null    ,
    IBC_AFILIADOS_IND            NUMBER(18,2)           null    ,
    TOT_MADRES_COMU              NUMBER(18,2)           null    ,
    IBC_MADRES_COMU              NUMBER(18,2)           null    ,
    TOT_MADRESCOMU_COMP          NUMBER(18,2)           null    ,
    IBC_MADRESCOMU_COMP          NUMBER(18,2)           null    ,
    TOT_MIEMBROS_ADICDEP         NUMBER(18,2)           null    ,
    REC_MIEMBROS_ADICDEP         NUMBER(18,2)           null    ,
    TOT_INCAPACIDADES_PAG        NUMBER(18,2)           null    ,
    VAL_RECAUDO_BRUT             NUMBER(18,2)           null    ,
    VAL_LICENCIAAS_PAG           NUMBER(18,2)           null    ,
    VAL_APORTES_NETO             NUMBER(18,2)           null    ,
    REC_ACUMULADO_PER_COMP       NUMBER(18,2)           null    ,
    VAL_RECONOCER_PYP            NUMBER(18,2)           null    ,
    constraint PK_LIQUIDACION_COMPENSACION primary key (NUM_DECLARACION)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: MEDICAMENTOS                                       
-- ============================================================
create table DBO.MEDICAMENTOS
(
    COD_MEDICAMENTO              VARCHAR2(21)           not null,
    CONC_MEDICAMENTO             VARCHAR2(20)           not null,
    FORM_FARMA                   VARCHAR2(20)           not null,
    NOM_MEDICAMENTO              VARCHAR2(30)           not null,
    UNI_MEDICAMENTO_MED          VARCHAR2(20)           not null,
    CLASE                        VARCHAR2(1)            not null,
    SUBCLASE                     VARCHAR2(4)            not null,
    GRUPO                        VARCHAR2(4)            not null,
    SUBGRUPO                     VARCHAR2(5)            not null,
    DESCRIPCION                  VARCHAR2(255)          null    ,
    constraint MEDICAMENTOS primary key (COD_MEDICAMENTO, CLASE, SUBCLASE, GRUPO, SUBGRUPO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: MULTIAFILIADOS                                     
-- ============================================================
create table DBO.MULTIAFILIADOS
(
    EPS                          VARCHAR2(30)           null    ,
    COD_EPS                      VARCHAR2(7)            null    ,
    NUM_DECLARACION              NUMBER(10)             null    ,
    PER_COMPENSADO               VARCHAR2(7)            null    ,
    AFI_NUMERO_DOC               VARCHAR2(18)           null    ,
    PRI_APELLIDO                 VARCHAR2(15)           null    ,
    SEG_APELLIDO                 VARCHAR2(15)           null    ,
    PRI_NOMBRE                   VARCHAR2(15)           null    ,
    SEG_NOMBRE                   VARCHAR2(15)           null    ,
    DIGITO                       VARCHAR2(2)            null    ,
    COD_EPS_MULTIAFILIADO        VARCHAR2(7)            null    ,
    FECHA                        VARCHAR2(7)            null    ,
    DIGITO2                      VARCHAR2(2)            null    ,
    DIGITO3                      VARCHAR2(2)            null    ,
    AFI_TIPO_DOC                 VARCHAR2(3)            null    ,
    CAUSA                        VARCHAR2(30)           null    ,
    CAMPO1                       VARCHAR2(15)           null    ,
    CAMPO2                       VARCHAR2(15)           null    ,
    CAUSA2                       VARCHAR2(30)           null    
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 40K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: NOTAS_AUTOLIQUIDACION                              
-- ============================================================
create table DBO.NOTAS_AUTOLIQUIDACION
(
    NUM_PLANILLA                 VARCHAR2(15)           not null,
    TIP_DOC_EMPRESA              VARCHAR2(3)            not null,
    NUM_DOC_EMPRESA              VARCHAR2(18)           not null,
    TIP_NOTA                     CHAR(1)                not null,
    VAL_NOTA                     NUMBER(18)             not null,
    NUM_COMP_DES                 VARCHAR2(15)           null    ,
    FEC_DESCUENTO                DATE                   null    ,
    TIP_DESCUENTO                VARCHAR2(1)            null    ,
    constraint PK_NOTAS_AUTOLIQUIDACIONES unique (NUM_PLANILLA)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 40K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: PATOLOGIA                                          
-- ============================================================
create table DBO.PATOLOGIA
(
    COD_PATOLOGIA                VARCHAR2(2)            not null,
    DESCRIPCION                  VARCHAR2(50)           null    ,
    COD_AMPARO                   VARCHAR2(2)            null    ,
    constraint PK_PATOLOGIA primary key (COD_PATOLOGIA)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: PERMANENCIAS                                       
-- ============================================================
create table DBO.PERMANENCIAS
(
    FEC_PERIODO                  DATE                   not null,
    PER_PERMANENCIA              NUMBER                 not null,
    PER_SUSPENSION               NUMBER                 not null,
    PER_INACTIVIDAD              NUMBER                 not null,
    constraint PK_PERMANENCIAS primary key (FEC_PERIODO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: PLAN_TABLE                                         
-- ============================================================
create table DBO.PLAN_TABLE
(
    STATEMENT_ID                 VARCHAR2(30)           null    ,
    TIMESTAMP                    DATE                   null    ,
    REMARKS                      VARCHAR2(80)           null    ,
    OPERATION                    VARCHAR2(30)           null    ,
    OPTIONS                      VARCHAR2(30)           null    ,
    OBJECT_NODE                  VARCHAR2(128)          null    ,
    OBJECT_OWNER                 VARCHAR2(30)           null    ,
    OBJECT_NAME                  VARCHAR2(30)           null    ,
    OBJECT_INSTANCE              NUMBER                 null    ,
    OBJECT_TYPE                  VARCHAR2(30)           null    ,
    OPTIMIZER                    VARCHAR2(255)          null    ,
    SEARCH_COLUMNS               NUMBER                 null    ,
    ID                           NUMBER                 null    ,
    PARENT_ID                    NUMBER                 null    ,
    POSITION                     NUMBER                 null    ,
    COST                         NUMBER                 null    ,
    CARDINALITY                  NUMBER                 null    ,
    BYTES                        NUMBER                 null    ,
    OTHER_TAG                    VARCHAR2(255)          null    ,
    PARTITION_START              VARCHAR2(255)          null    ,
    PARTITION_STOP               VARCHAR2(255)          null    ,
    PARTITION_ID                 NUMBER                 null    ,
    OTHER                        LONG                   null    ,
    DISTRIBUTION                 VARCHAR2(30)           null    
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 40K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: PRESTADORES                                        
-- ============================================================
create table DBO.PRESTADORES
(
    COD_PRESTADOR                VARCHAR2(18)           not null,
    MON_PRESTADOR                VARCHAR2(100)          null    ,
    NUM_ACREDITACION             VARCHAR2(18)           null    ,
    COD_DEPARTAMENTO             VARCHAR2(2)            null    ,
    COD_CIUDAD                   VARCHAR2(3)            null    ,
    DIR_PRESTADOR                VARCHAR2(100)          null    ,
    TEL_PRESTADOR                VARCHAR2(20)           null    ,
    REP_LEGAL                    VARCHAR2(100)          null    ,
    NIV_ATEN_PRESTADOR           VARCHAR2(50)           null    ,
    TIP_PRESTADOR                VARCHAR2(1)            null    ,
    TIP_IDENTIFICACION           VARCHAR2(3)            null    ,
    NUM_IDENTIFICACION           VARCHAR2(18)           null    ,
    CLA_PRESTADOR                VARCHAR2(2)            null    ,
    REC_COPAGO                   VARCHAR2(1)            null    ,
    REC_CUOTA                    VARCHAR2(1)            null    ,
    EST_PRESTADOR                VARCHAR2(1)            null    ,
    FEC_ULTIMA_AUTO              DATE                   null    ,
    EST_CONTRATO                 VARCHAR2(1)            null    ,
    COD_REGINAL                  VARCHAR2(3)            null    ,
    COD_OFICINA                  VARCHAR2(3)            null    ,
    FEC_INGRESO                  DATE                   not null,
    DIR_ELECTRONICA              VARCHAR2(20)           null    ,
    constraint PK_UDPRESTA primary key (COD_PRESTADOR)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: PKPRESTADOR                                        
-- ============================================================
create unique index DBO.PKPRESTADOR on DBO.PRESTADORES (COD_PRESTADOR asc, MON_PRESTADOR asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: PKCIUDAD                                           
-- ============================================================
create index DBO.PKCIUDAD on DBO.PRESTADORES (COD_DEPARTAMENTO asc, COD_CIUDAD asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: RANGO_PAGO                                         
-- ============================================================
create table DBO.RANGO_PAGO
(
    TIP_APORTANTE                VARCHAR2(1)            not null,
    DIG_FINAL                    VARCHAR2(1)            not null,
    DIA_HABIL                    VARCHAR2(2)            null    ,
    constraint PK_RANGO_PAGO primary key (TIP_APORTANTE, DIG_FINAL)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: TABLACIERRE                                        
-- ============================================================
create table DBO.TABLACIERRE
(
    FEC_CIERRE                   DATE                   not null,
    TIPO_DECLARACION             VARCHAR2(10)           not null,
    ESTADO                       VARCHAR2(1)            not null,
    PER_COMPENSACION             VARCHAR2(6)            not null,
    FEC_PRECIERRE                DATE                   null    ,
    constraint PK_TABLACIERRE primary key (FEC_CIERRE, TIPO_DECLARACION, ESTADO, PER_COMPENSACION)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: TEMPORALITO                                        
-- ============================================================
create table DBO.TEMPORALITO
(
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    PRI_NOMBRE                   VARCHAR2(25)           not null,
    SEG_NOMBRE                   VARCHAR2(25)           null    ,
    PRI_APELLIDO                 VARCHAR2(25)           not null,
    SEG_APELLIDO                 VARCHAR2(25)           null    ,
    COD_SEXO                     VARCHAR2(1)            not null,
    FEC_NACIMIENTO               DATE                   not null,
    COD_PARENTESCO               VARCHAR2(3)            not null,
    COD_TIPO_AFIL                VARCHAR2(1)            not null,
    NUM_SEMANAS                  NUMBER                 null    ,
    COD_ESTADO                   VARCHAR2(2)            not null
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: TIPO_ATENCION                                      
-- ============================================================
create table DBO.TIPO_ATENCION
(
    COD_ATENCION                 VARCHAR2(1)            not null,
    DES_ATENCION                 VARCHAR2(50)           null    ,
    constraint PK_TIPO_ATENCION primary key (COD_ATENCION)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: VALORESANULESCOMP                                  
-- ============================================================
create table DBO.VALORESANULESCOMP
(
    ANO                          DATE                   not null,
    SAL_MINIMO                   NUMBER(10,2)           not null,
    UPC                          NUMBER(10,2)           not null,
    PYP                          NUMBER(10,2)           not null,
    SOL                          NUMBER(10,2)           not null,
    RIESGO                       NUMBER(10,2)           not null,
    VAL_UPC_DIA_NORMAL           NUMBER(10,2)           not null,
    VAL_UPC_DIA_ESPECIAL         NUMBER(10,2)           not null,
    POR_COTIZACION               NUMBER(10,2)           null    ,
    POR_ENFERMEDAD_GENERAL       NUMBER(10,2)           null    ,
    POR_PROVISION_INC            NUMBER(10,2)           null    ,
    POR_PYP_LIQUIDACION          NUMBER(10,2)           null    ,
    POR_SOLIDARIDAD_LIQUIDACION  NUMBER(10,2)           null    ,
    constraint PK_VALORESANULESCOMP primary key (ANO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: VERSIONES                                          
-- ============================================================
create table DBO.VERSIONES
(
    FEC_PERIODO                  DATE                   not null,
    VER_AFILIACIONES             VARCHAR2(5)            not null,
    VER_AUTOLIQUIDACIONES        VARCHAR2(5)            not null,
    VER_COMPENSACIONES           VARCHAR2(5)            not null,
    VER_CARTERA                  VARCHAR2(5)            not null,
    VER_REPORTES                 VARCHAR2(5)            not null,
    VER_AUTORIZACIONES           VARCHAR2(5)            not null,
    VER_PRESTADORES              VARCHAR2(5)            not null,
    VER_CUENTAS                  VARCHAR2(5)            not null,
    constraint PK_VERSIONES primary key (FEC_PERIODO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: ACTIVIDADES_ECONOMICAS                             
-- ============================================================
create table DBO.ACTIVIDADES_ECONOMICAS
(
    COD_ACTIVIDAD_ECO            VARCHAR2(4)            not null,
    NOM_ACTIVIDAD_ECO            VARCHAR2(60)           null    ,
    constraint PK_ACTIVIDADES_ECONOMICAS primary key (COD_ACTIVIDAD_ECO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: BANCOS                                             
-- ============================================================
create table DBO.BANCOS
(
    COD_BANCO                    VARCHAR2(3)            not null,
    NOM_BANCO                    VARCHAR2(50)           not null,
    CTA_BANCO                    VARCHAR2(15)           not null,
    DIR_BANCO                    VARCHAR2(70)           not null,
    TIP_DOCUMENTO                VARCHAR2(3)            null    ,
    NUM_DOCUMENTO                VARCHAR2(18)           null    ,
    COD_DEPARTAMENTO             VARCHAR2(2)            null    ,
    COD_CIUDAD                   VARCHAR2(3)            null    ,
    TIPO_RECAUDO                 VARCHAR2(1)            null    ,
    EST_BANCO                    VARCHAR2(1)            null    ,
    constraint BANCOS_15174046251 primary key (COD_BANCO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: CIUDADES                                           
-- ============================================================
create table DBO.CIUDADES
(
    COD_DEPARTAMENTO             VARCHAR2(2)            not null,
    COD_CIUDAD                   VARCHAR2(3)            not null,
    NOM_CIUDAD                   VARCHAR2(35)           not null,
    POR_ALTO_RIE                 VARCHAR2(3)            null    ,
    COD_REGIONAL                 VARCHAR2(3)            null    ,
    VALOR_UPC                    NUMBER(18,2)           null    ,
    CEN_COSTO                    VARCHAR2(6)            null    ,
    constraint PK_CIUDADES primary key (COD_DEPARTAMENTO, COD_CIUDAD)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: IXCOD_REGIONAL                                     
-- ============================================================
create index DBO.IXCOD_REGIONAL on DBO.CIUDADES (COD_REGIONAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: DISCAPACIDADES                                     
-- ============================================================
create table DBO.DISCAPACIDADES
(
    COD_DISCAPACIDAD             VARCHAR2(1)            not null,
    NOM_DISCAPACIDAD             VARCHAR2(50)           null    ,
    constraint PK_DISCAPACIDADES primary key (COD_DISCAPACIDAD)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: ESCOLARIDAD                                        
-- ============================================================
create table DBO.ESCOLARIDAD
(
    COD_ESCOLARIDAD              VARCHAR2(3)            not null,
    NOM_ESCOLARIDAD              VARCHAR2(50)           null    ,
    constraint PK_ESCOLARIDAD primary key (COD_ESCOLARIDAD)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: ESTADOS                                            
-- ============================================================
create table DBO.ESTADOS
(
    COD_ESTADO                   VARCHAR2(2)            not null,
    NOM_ESTADO                   VARCHAR2(35)           not null,
    constraint PK_ESTADOS primary key (COD_ESTADO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: ESTADOS_CIVILES                                    
-- ============================================================
create table DBO.ESTADOS_CIVILES
(
    COD_ESTADO_CIV               VARCHAR2(1)            not null,
    NOM_ESTADO_CIV               VARCHAR2(35)           null    ,
    constraint PK_ESTADOCIVILES primary key (COD_ESTADO_CIV)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: ESTRATOS                                           
-- ============================================================
create table DBO.ESTRATOS
(
    COD_ESTRATO                  VARCHAR2(3)            not null,
    NOM_ESTRATO                  VARCHAR2(50)           null    ,
    VAL_COPAGO                   NUMBER(18)             null    ,
    VAL_CUOTA                    NUMBER(18)             null    ,
    constraint PK_ESTRATOS primary key (COD_ESTRATO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: GRUPO_ESPECIALIDADES                               
-- ============================================================
create table DBO.GRUPO_ESPECIALIDADES
(
    COD_TIPO_AUTO                VARCHAR2(2)            not null,
    DES_TIPO_AUTO                VARCHAR2(50)           null    ,
    constraint PK_GRUPO_ESPECIALIDADES primary key (COD_TIPO_AUTO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: INCAPACIDADES                                      
-- ============================================================
create table DBO.INCAPACIDADES
(
    NUM_INCAPACIDAD              VARCHAR2(15)           not null,
    TIP_INCAPACIDAD              VARCHAR2(3)            not null,
    FEC_EXPEDICION               DATE                   not null,
    TIP_DOCEMPRESA               VARCHAR2(3)            null    ,
    NUM_DOCEMPRESA               VARCHAR2(18)           null    ,
    COD_DIAGNOSTICO              VARCHAR2(5)            not null,
    AFI_TIPO_DOC                 VARCHAR2(3)            null    ,
    AFI_NUMERO_DOC               VARCHAR2(18)           null    ,
    COD_PRESTADOR                VARCHAR2(18)           null    ,
    NOM_PRESTADOR                VARCHAR2(255)          null    ,
    DIA_INCAPACIDAD              VARCHAR2(2)            not null,
    DIA_LIQUIDADOS               VARCHAR2(2)            null    ,
    FEC_INICIO                   DATE                   null    ,
    PRO_INCAPACIDAD              VARCHAR2(1)            null    ,
    SAL_BASE                     NUMBER(18)             null    ,
    PRO_SALARIO_LIQUI            NUMBER(18)             null    ,
    VAL_INCAPACIDAD              NUMBER(18)             null    ,
    EST_INCAPACIDAD              VARCHAR2(3)            null    ,
    COD_REGIONAL                 VARCHAR2(3)            null    ,
    COD_OFICINA                  VARCHAR2(20)           null    ,
    FEC_DIGITACION               DATE                   not null,
    TIP_DOC_USUARIO              VARCHAR2(3)            null    ,
    TIP_NUM_USUARIO              VARCHAR2(15)           null    ,
    FEC_TERMINACION              DATE                   null    ,
    FEC_MODIFICACION             DATE                   null    ,
    NO_PRORROGA                  VARCHAR2(15)           null    ,
    TOT_DIAS_PRORROGA            VARCHAR2(3)            null    ,
    constraint INCAPACIDA_6539614061 primary key (NUM_INCAPACIDAD)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: IDXDIGITACION                                      
-- ============================================================
create unique index DBO.IDXDIGITACION on DBO.INCAPACIDADES (NUM_INCAPACIDAD asc, FEC_DIGITACION asc, COD_REGIONAL asc, COD_OFICINA asc, TIP_DOC_USUARIO asc, TIP_NUM_USUARIO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXD                                                
-- ============================================================
create unique index DBO.IXD on DBO.INCAPACIDADES (NUM_INCAPACIDAD asc, FEC_INICIO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXDAFILIADO                                        
-- ============================================================
create index DBO.IXDAFILIADO on DBO.INCAPACIDADES (AFI_TIPO_DOC asc, AFI_NUMERO_DOC asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXDDIAGNOSTICO                                     
-- ============================================================
create index DBO.IXDDIAGNOSTICO on DBO.INCAPACIDADES (COD_DIAGNOSTICO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: PKEMPRESAS                                         
-- ============================================================
create index DBO.PKEMPRESAS on DBO.INCAPACIDADES (TIP_DOCEMPRESA asc, NUM_DOCEMPRESA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: MODALIDAD_TRABAJOS                                 
-- ============================================================
create table DBO.MODALIDAD_TRABAJOS
(
    COD_MODALIDAD_TRA            VARCHAR2(1)            not null,
    NOM_MODALIDAD_TRA            VARCHAR2(50)           null    ,
    constraint PK_MODALIDAD_TRABAJOS primary key (COD_MODALIDAD_TRA)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: NIVELES_CONTRATACION                               
-- ============================================================
create table DBO.NIVELES_CONTRATACION
(
    NIVEL                        NUMBER(1)              not null,
    DES_NIVEL                    VARCHAR2(50)           null    ,
    constraint PK_NIVELES_CONTRATACION primary key (NIVEL)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: NOVEDADES                                          
-- ============================================================
create table DBO.NOVEDADES
(
    NOV_CODIGO                   VARCHAR2(3)            not null,
    NOV_NOMBRE                   VARCHAR2(50)           null    ,
    DES_NOVEDAD                  VARCHAR2(100)          null    ,
    CLA_NOVEDAD                  VARCHAR2(3)            null    ,
    TIPO_NOVEDAD                 VARCHAR2(3)            null    ,
    NOV_890                      VARCHAR2(3)            null    ,
    constraint PK_NOVEDADES primary key (NOV_CODIGO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: I1_NOVEDADES                                       
-- ============================================================
create unique index DBO.I1_NOVEDADES on DBO.NOVEDADES (NOV_CODIGO asc, CLA_NOVEDAD asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: OCUPACIONES                                        
-- ============================================================
create table DBO.OCUPACIONES
(
    COD_OCUPACION                VARCHAR2(3)            not null,
    NOM_OCUPACION                VARCHAR2(100)          not null,
    constraint PK_OCUPACIONES primary key (COD_OCUPACION)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: PARENTESCOS                                        
-- ============================================================
create table DBO.PARENTESCOS
(
    COD_PARENTESCO               VARCHAR2(3)            not null,
    NOM_PARENTESCO               VARCHAR2(50)           null    ,
    constraint PK_PARENTESCOS primary key (COD_PARENTESCO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: PRESENTACION_COMPENSACION                          
-- ============================================================
create table DBO.PRESENTACION_COMPENSACION
(
    COD_PRESENTACION_COM         VARCHAR2(1)            not null,
    NOM_PRESENTACION_COM         VARCHAR2(50)           not null,
    constraint PK_PRESENTACION_COMPENSACION primary key (COD_PRESENTACION_COM)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: PROFESIONES                                        
-- ============================================================
create table DBO.PROFESIONES
(
    COD_PROFESION                VARCHAR2(3)            not null,
    NOM_PROFESION                VARCHAR2(50)           null    ,
    constraint PK_PROFESIONES primary key (COD_PROFESION)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: REGIONALES                                         
-- ============================================================
create table DBO.REGIONALES
(
    COD_REGIONAL                 VARCHAR2(3)            not null,
    NOM_REGIONAL                 VARCHAR2(50)           null    ,
    constraint PK_REGIONALES primary key (COD_REGIONAL)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: RELACION_ADICIONAL                                 
-- ============================================================
create table DBO.RELACION_ADICIONAL
(
    COD_RELACION_ADI             VARCHAR2(2)            not null,
    NOM_RELACION_ADI             VARCHAR2(50)           not null,
    constraint PK_RELACION_ADICIONAL primary key (COD_RELACION_ADI)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: SEXOS                                              
-- ============================================================
create table DBO.SEXOS
(
    COD_SEXO                     VARCHAR2(1)            not null,
    NOM_SEXO                     VARCHAR2(35)           null    ,
    constraint PK_SEXO primary key (COD_SEXO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: TIPOS_AFILIADOS                                    
-- ============================================================
create table DBO.TIPOS_AFILIADOS
(
    COD_TIPO_AFIL                VARCHAR2(1)            not null,
    NOM_TIPO_AFIL                VARCHAR2(50)           null    ,
    constraint PK_TIPOS_AFILIADOS primary key (COD_TIPO_AFIL)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: TIPOS_APORTANTES                                   
-- ============================================================
create table DBO.TIPOS_APORTANTES
(
    TIP_APORTANTE                VARCHAR2(1)            not null,
    NOM_TIPO_APO                 VARCHAR2(50)           not null,
    constraint PK_TIPO_APORTANTE primary key (TIP_APORTANTE)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: TIPOS_DOCUMENTOS                                   
-- ============================================================
create table DBO.TIPOS_DOCUMENTOS
(
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    NOM_DOCUMENTO                VARCHAR2(35)           null    ,
    constraint PK_TIPOS_DOCUMENTOS primary key (TIP_DOCUMENTO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: TIPOS_EMPRESAS                                     
-- ============================================================
create table DBO.TIPOS_EMPRESAS
(
    COD_TIP_EMPRESA              VARCHAR2(1)            not null,
    NOM_TIP_EMPRESA              VARCHAR2(50)           not null,
    constraint PK_TIPOS_EMPRESAS primary key (COD_TIP_EMPRESA)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: TIPOS_PERSONAS                                     
-- ============================================================
create table DBO.TIPOS_PERSONAS
(
    COD_TIPO_PER                 VARCHAR2(1)            not null,
    NOM_TIPO_PER                 VARCHAR2(50)           null    ,
    constraint PK_TIPOS_PERSONAS primary key (COD_TIPO_PER)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: TIPOS_SALARIOS                                     
-- ============================================================
create table DBO.TIPOS_SALARIOS
(
    COD_TIPO_SAL                 VARCHAR2(1)            not null,
    NOM_TIPO_SAL                 VARCHAR2(50)           not null,
    constraint PK_TIPOS_SALARIOS primary key (COD_TIPO_SAL)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: ZONAS                                              
-- ============================================================
create table DBO.ZONAS
(
    COD_ZONA                     VARCHAR2(3)            not null,
    NOM_ZONA                     VARCHAR2(30)           not null,
    constraint PK_ZONAS primary key (COD_ZONA)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: OFICINAS                                           
-- ============================================================
create table DBO.OFICINAS
(
    COD_OFICINA                  VARCHAR2(3)            not null,
    NOM_OFICINA                  VARCHAR2(50)           not null,
    DIR_OFICINA                  VARCHAR2(50)           not null,
    TEL_OFICINA                  VARCHAR2(15)           not null,
    FAX_OFICINA                  VARCHAR2(15)           null    ,
    COD_REGIONAL                 VARCHAR2(3)            not null,
    COD_DEPARTAMENTO             VARCHAR2(2)            null    ,
    COD_CIUDAD                   VARCHAR2(3)            null    ,
    TIP_OFICINA                  VARCHAR2(1)            null    ,
    constraint PK_OFICINAS primary key (COD_OFICINA, COD_REGIONAL)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_OFICINAS_REF_20441_CIUDADES                     
-- ============================================================
create index DBO.FK_OFICINAS_REF_20441_CIUDADES on DBO.OFICINAS (COD_CIUDAD asc, COD_DEPARTAMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_OFICINAS_REF_20674_REGIONAL                     
-- ============================================================
create index DBO.FK_OFICINAS_REF_20674_REGIONAL on DBO.OFICINAS (COD_REGIONAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: USUARIOS                                           
-- ============================================================
create table DBO.USUARIOS
(
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    COD_ESTADO                   VARCHAR2(2)            null    ,
    COD_USUARIO                  VARCHAR2(20)           not null,
    NOM_USUARIO                  VARCHAR2(30)           not null,
    PWD_USUARIO                  VARCHAR2(20)           not null,
    FEC_EXPIRACION               DATE                   null    ,
    NIV_USUARIO                  NUMBER                 not null,
    USU_LOGUEADO                 NUMBER                 not null,
    ULT_FEC_LOG                  DATE                   not null,
    COD_OFICINA                  VARCHAR2(3)            not null,
    COD_REGIONAL                 VARCHAR2(3)            not null,
    COD_CARGO                    VARCHAR2(5)            null    ,
    constraint PK_USUARIOS_EPS primary key (TIP_DOCUMENTO, NUM_DOCUMENTO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_USUARIOS_REF_OFICINAS_FK                        
-- ============================================================
create index DBO.FK_USUARIOS_REF_OFICINAS_FK on DBO.USUARIOS (COD_OFICINA asc, COD_REGIONAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_USUARIOS_REF_20283_ESTADOS_                     
-- ============================================================
create index DBO.FK_USUARIOS_REF_20283_ESTADOS_ on DBO.USUARIOS (COD_ESTADO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_USUARIOS_REF_20522_TIPOS_DO                     
-- ============================================================
create index DBO.FK_USUARIOS_REF_20522_TIPOS_DO on DBO.USUARIOS (TIP_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXTCODUSUARIO                                      
-- ============================================================
create index DBO.IXTCODUSUARIO on DBO.USUARIOS (COD_USUARIO asc, PWD_USUARIO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: PKLOGIADO                                          
-- ============================================================
create index DBO.PKLOGIADO on DBO.USUARIOS (COD_USUARIO asc, USU_LOGUEADO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: PKUSUARIOS                                         
-- ============================================================
create index DBO.PKUSUARIOS on DBO.USUARIOS (COD_ESTADO asc, COD_USUARIO asc, NOM_USUARIO asc, PWD_USUARIO asc, FEC_EXPIRACION asc, NIV_USUARIO asc, USU_LOGUEADO asc, COD_OFICINA asc, COD_REGIONAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: AFILIADOS                                          
-- ============================================================
create table DBO.AFILIADOS
(
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    COD_SEXO                     VARCHAR2(1)            not null,
    COD_TIPO_AFIL                VARCHAR2(1)            not null,
    COD_MODALIDAD_TRA            VARCHAR2(1)            null    ,
    COD_ESTADO_CIV               VARCHAR2(1)            null    ,
    COD_ESTRATO                  VARCHAR2(3)            not null,
    COD_ESCOLARIDAD              VARCHAR2(3)            null    ,
    COD_PROFESION                VARCHAR2(3)            null    ,
    COD_ESTADO                   VARCHAR2(2)            not null,
    COD_OFICINA                  VARCHAR2(3)            not null,
    COD_REGIONAL                 VARCHAR2(3)            not null,
    PRI_NOMBRE                   VARCHAR2(25)           not null,
    SEG_NOMBRE                   VARCHAR2(25)           null    ,
    PRI_APELLIDO                 VARCHAR2(25)           not null,
    SEG_APELLIDO                 VARCHAR2(25)           null    ,
    FEC_NACIMIENTO               DATE                   not null,
    FEC_AFILIACION_SIS           DATE                   not null,
    FEC_AFILIACION_UNI           DATE                   not null,
    EPS_TIP_DOC                  VARCHAR2(3)            null    ,
    EPS_NUM_DOC                  VARCHAR2(18)           null    ,
    COD_DEPARTAMENTO_RES         VARCHAR2(2)            not null,
    COD_CIUDAD_RES               VARCHAR2(3)            not null,
    COD_BARRIO_RES               VARCHAR2(3)            not null,
    COD_ZONA                     VARCHAR2(3)            not null,
    ACE_TIP_DOC                  VARCHAR2(3)            not null,
    ACE_NUMERO_DOC               VARCHAR2(18)           not null,
    COD_DISCAPACIDAD             VARCHAR2(1)            not null,
    NUM_SEMANA_COTIZA            NUMBER                 null    ,
    FEC_RADICACION               DATE                   not null,
    NUM_FORMATO_AFIL             VARCHAR2(10)           not null,
    DIR_AFILIADO_RES             VARCHAR2(50)           not null,
    TEL_AFILIADO_RES             VARCHAR2(20)           null    ,
    TEL_AFILIADO_RES2            VARCHAR2(20)           null    ,
    CEL_AFILIADO                 VARCHAR2(20)           null    ,
    EML_AFILIADO                 VARCHAR2(50)           null    ,
    FEC_ULTIMA_NOV               DATE                   null    ,
    TIP_DOCUMENTO_IPS            VARCHAR2(3)            null    ,
    NUM_DOCUMENTO_IPS            VARCHAR2(18)           null    ,
    TIP_DOCUMENTO_MED            VARCHAR2(3)            null    ,
    NUM_DOCUMENTO_MED            VARCHAR2(18)           null    ,
    TIP_DOCUMENTO_ODO            VARCHAR2(3)            null    ,
    NUM_DOCUMENTO_ODO            VARCHAR2(18)           null    ,
    SEM_COTIZACION               NUMBER                 null    ,
    constraint PK_AFILIADOS primary key (TIP_DOCUMENTO, NUM_DOCUMENTO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20271_ESTADOS_                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20271_ESTADOS_ on DBO.AFILIADOS (COD_ESTADO_CIV asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20286_ESTADOS_                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20286_ESTADOS_ on DBO.AFILIADOS (COD_ESTADO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20321_PROFESIO                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20321_PROFESIO on DBO.AFILIADOS (COD_PROFESION asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20327_SEXOS_FK                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20327_SEXOS_FK on DBO.AFILIADOS (COD_SEXO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20400_ZONAS_FK                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20400_ZONAS_FK on DBO.AFILIADOS (COD_ZONA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20525_TIPOS_DO                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20525_TIPOS_DO on DBO.AFILIADOS (TIP_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20573_MODALIDA                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20573_MODALIDA on DBO.AFILIADOS (COD_MODALIDAD_TRA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20576_ESTRATOS                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20576_ESTRATOS on DBO.AFILIADOS (COD_ESTRATO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20579_ESCOLARI                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20579_ESCOLARI on DBO.AFILIADOS (COD_ESCOLARIDAD asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20587_OFICINAS                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20587_OFICINAS on DBO.AFILIADOS (COD_OFICINA asc, COD_REGIONAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20671_REGIONAL                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20671_REGIONAL on DBO.AFILIADOS (COD_REGIONAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20857_DISCAPAC                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20857_DISCAPAC on DBO.AFILIADOS (COD_DISCAPACIDAD asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXTANOMBRES                                        
-- ============================================================
create index DBO.IXTANOMBRES on DBO.AFILIADOS (PRI_NOMBRE asc, SEG_NOMBRE asc, PRI_APELLIDO asc, SEG_APELLIDO asc, COD_SEXO asc, FEC_NACIMIENTO asc, FEC_AFILIACION_SIS asc, FEC_AFILIACION_UNI asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXTARESIDENCIA                                     
-- ============================================================
create index DBO.IXTARESIDENCIA on DBO.AFILIADOS (COD_DEPARTAMENTO_RES asc, COD_CIUDAD_RES asc, COD_BARRIO_RES asc, COD_ZONA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXTATIPOAFILIADO                                   
-- ============================================================
create index DBO.IXTATIPOAFILIADO on DBO.AFILIADOS (COD_TIPO_AFIL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: EMPLEADOS                                          
-- ============================================================
create table DBO.EMPLEADOS
(
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    COD_OFICINA                  VARCHAR2(3)            null    ,
    COD_REGIONAL                 VARCHAR2(3)            null    ,
    COD_SEXO                     VARCHAR2(1)            null    ,
    COD_PROFESION                VARCHAR2(3)            null    ,
    COD_ESTADO_CIV               VARCHAR2(1)            null    ,
    COD_OCUPACION                VARCHAR2(3)            null    ,
    COD_ESTADO                   VARCHAR2(2)            null    ,
    COD_USUARIO                  VARCHAR2(20)           not null,
    COD_GRUPO                    VARCHAR2(3)            not null,
    NOM_EMPLEADO                 VARCHAR2(30)           not null,
    PWD_EMPLEADO                 VARCHAR2(20)           not null,
    FEC_EXPIRACION               DATE                   null    ,
    NIV_USUARIO                  NUMBER                 not null,
    USU_LOGUEADO                 NUMBER                 not null,
    ULT_FECHA_LOG                DATE                   not null,
    PRI_NOMBRE                   VARCHAR2(25)           null    ,
    SEG_NOMBRE                   VARCHAR2(25)           null    ,
    PRI_APELLIDO                 VARCHAR2(25)           null    ,
    SEG_APELLIDO                 VARCHAR2(25)           null    ,
    FEC_NACIMIENTO               DATE                   null    ,
    FEC_INGRESO                  DATE                   null    ,
    FEC_EGRESO                   DATE                   null    ,
    DIR_EMPLEADO_RES             VARCHAR2(50)           null    ,
    TEL_EMPLEADO_RES             VARCHAR2(20)           null    ,
    TEL_EMPLEADO_RES2            VARCHAR2(20)           null    ,
    CEL_EMPLEADO                 VARCHAR2(20)           null    ,
    EML_EMPLEADO                 VARCHAR2(50)           null    ,
    constraint PK_USUARIOS primary key (TIP_DOCUMENTO, NUM_DOCUMENTO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_EMPLEADO_REF_20274_ESTADOS_                     
-- ============================================================
create index DBO.FK_EMPLEADO_REF_20274_ESTADOS_ on DBO.EMPLEADOS (COD_ESTADO_CIV asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPLEADO_REF_20292_ESTADOS_                     
-- ============================================================
create index DBO.FK_EMPLEADO_REF_20292_ESTADOS_ on DBO.EMPLEADOS (COD_ESTADO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPLEADO_REF_20304_OCUPACIO                     
-- ============================================================
create index DBO.FK_EMPLEADO_REF_20304_OCUPACIO on DBO.EMPLEADOS (COD_OCUPACION asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPLEADO_REF_20324_PROFESIO                     
-- ============================================================
create index DBO.FK_EMPLEADO_REF_20324_PROFESIO on DBO.EMPLEADOS (COD_PROFESION asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPLEADO_REF_20330_SEXOS_FK                     
-- ============================================================
create index DBO.FK_EMPLEADO_REF_20330_SEXOS_FK on DBO.EMPLEADOS (COD_SEXO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPLEADO_REF_20546_TIPOS_DO                     
-- ============================================================
create index DBO.FK_EMPLEADO_REF_20546_TIPOS_DO on DBO.EMPLEADOS (TIP_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPLEADO_REF_20597_OFICINAS                     
-- ============================================================
create index DBO.FK_EMPLEADO_REF_20597_OFICINAS on DBO.EMPLEADOS (COD_OFICINA asc, COD_REGIONAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPLEADO_REF_20680_REGIONAL                     
-- ============================================================
create index DBO.FK_EMPLEADO_REF_20680_REGIONAL on DBO.EMPLEADOS (COD_REGIONAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: EMPRESAS                                           
-- ============================================================
create table DBO.EMPRESAS
(
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    COD_SUCURSAL                 VARCHAR2(2)            not null,
    COD_ACTIVIDAD_ECO            VARCHAR2(4)            null    ,
    COD_ESTADO                   VARCHAR2(2)            not null,
    COD_OFICINA                  VARCHAR2(3)            not null,
    COD_REGIONAL                 VARCHAR2(3)            not null,
    TIP_DOCUMENTO_ARP            VARCHAR2(3)            null    ,
    NUM_DOCUMENTO_ARP            VARCHAR2(18)           null    ,
    COD_DEPARTAMENTO             VARCHAR2(2)            null    ,
    COD_CIUDAD                   VARCHAR2(3)            null    ,
    TIP_APORTANTE                VARCHAR2(1)            null    ,
    NOM_EMPRESA                  VARCHAR2(100)          not null,
    FEC_AFILIACION               DATE                   not null,
    DIR_EMPRESA                  VARCHAR2(50)           not null,
    TEL_EMPRESA                  VARCHAR2(20)           null    ,
    TEL_EMPRESA2                 VARCHAR2(20)           null    ,
    URL_EMPRESA                  VARCHAR2(20)           null    ,
    EML_EMPRESA                  VARCHAR2(50)           null    ,
    TOT_EMPLEADOS                VARCHAR2(10)           null    ,
    COD_TIPO_PER                 VARCHAR2(1)            null    ,
    COD_ZONA                     VARCHAR2(3)            null    ,
    COD_DEPARTAMENTO_PAG         VARCHAR2(2)            null    ,
    COD_CIUDAD_PAG               VARCHAR2(3)            null    ,
    COD_PRESENTACION_COM         VARCHAR2(1)            null    ,
    COD_TIP_EMPRESA              VARCHAR2(1)            null    ,
    TIP_DOCUMENTO_PEN            VARCHAR2(3)            null    ,
    NUM_DOCUMENTO_PEN            VARCHAR2(18)           null    ,
    constraint PK_EMPRESAS primary key (TIP_DOCUMENTO, NUM_DOCUMENTO, COD_SUCURSAL)
)
pctfree 0
pctused 0
initrans 0
maxtrans 0
storage
(
initial 80K
next 144K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_EMPRESAS_PAGADURIA_FK                           
-- ============================================================
create index DBO.FK_EMPRESAS_PAGADURIA_FK on DBO.EMPRESAS (COD_CIUDAD_PAG asc, COD_DEPARTAMENTO_PAG asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPRESAS_PRESENTACION_COMP_                     
-- ============================================================
create index DBO.FK_EMPRESAS_PRESENTACION_COMP_ on DBO.EMPRESAS (COD_PRESENTACION_COM asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPRESAS_REF_20280_ESTADOS_                     
-- ============================================================
create index DBO.FK_EMPRESAS_REF_20280_ESTADOS_ on DBO.EMPRESAS (COD_ESTADO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPRESAS_REF_20436_CIUDADES                     
-- ============================================================
create index DBO.FK_EMPRESAS_REF_20436_CIUDADES on DBO.EMPRESAS (COD_CIUDAD asc, COD_DEPARTAMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPRESAS_REF_20519_TIPOS_DO                     
-- ============================================================
create index DBO.FK_EMPRESAS_REF_20519_TIPOS_DO on DBO.EMPRESAS (TIP_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPRESAS_REF_20582_OFICINAS                     
-- ============================================================
create index DBO.FK_EMPRESAS_REF_20582_OFICINAS on DBO.EMPRESAS (COD_OFICINA asc, COD_REGIONAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPRESAS_REF_20607_ACTIVIDA                     
-- ============================================================
create index DBO.FK_EMPRESAS_REF_20607_ACTIVIDA on DBO.EMPRESAS (COD_ACTIVIDAD_ECO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPRESAS_REF_20668_REGIONAL                     
-- ============================================================
create index DBO.FK_EMPRESAS_REF_20668_REGIONAL on DBO.EMPRESAS (COD_REGIONAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPRESAS_REF_20947_RANGO_PA                     
-- ============================================================
create index DBO.FK_EMPRESAS_REF_20947_RANGO_PA on DBO.EMPRESAS (TIP_APORTANTE asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPRESAS_TIPOS_EMPRESAS_FK                      
-- ============================================================
create index DBO.FK_EMPRESAS_TIPOS_EMPRESAS_FK on DBO.EMPRESAS (COD_TIP_EMPRESA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPRESAS_TIPOS_PERSONAS_FK                      
-- ============================================================
create index DBO.FK_EMPRESAS_TIPOS_PERSONAS_FK on DBO.EMPRESAS (COD_TIPO_PER asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_EMPRESAS_ZONAS_FK                               
-- ============================================================
create index DBO.FK_EMPRESAS_ZONAS_FK on DBO.EMPRESAS (COD_ZONA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXDEXNUMERODOC                                     
-- ============================================================
create index DBO.IXDEXNUMERODOC on DBO.EMPRESAS (NUM_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXDNOMBRE                                          
-- ============================================================
create index DBO.IXDNOMBRE on DBO.EMPRESAS (NOM_EMPRESA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: ACESORES                                           
-- ============================================================
create table DBO.ACESORES
(
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    COD_ESTADO                   VARCHAR2(2)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    PRI_APELLIDO                 VARCHAR2(25)           null    ,
    SEG_APELLIDO                 VARCHAR2(25)           null    ,
    PRI_NOMBRE                   VARCHAR2(25)           null    ,
    SEG_NOMBRE                   VARCHAR2(25)           null    ,
    constraint PK_ACESORES primary key (TIP_DOCUMENTO, NUM_DOCUMENTO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_ACESORES_REF_20289_ESTADOS_                     
-- ============================================================
create index DBO.FK_ACESORES_REF_20289_ESTADOS_ on DBO.ACESORES (COD_ESTADO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_ACESORES_REF_20528_TIPOS_DO                     
-- ============================================================
create index DBO.FK_ACESORES_REF_20528_TIPOS_DO on DBO.ACESORES (TIP_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: ARPS                                               
-- ============================================================
create table DBO.ARPS
(
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    NOM_ARPS                     VARCHAR2(100)          null    ,
    FEC_INCLUSION                DATE                   null    ,
    constraint PK_APRS primary key (TIP_DOCUMENTO, NUM_DOCUMENTO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_ARPS_REF_20537_TIPOS_DO_FK                      
-- ============================================================
create index DBO.FK_ARPS_REF_20537_TIPOS_DO_FK on DBO.ARPS (TIP_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: EPS                                                
-- ============================================================
create table DBO.EPS
(
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    NOM_EPS                      VARCHAR2(100)          null    ,
    FEC_INCLUSION                DATE                   null    ,
    COD_EPS                      VARCHAR2(6)            null    ,
    DIR_EPS                      VARCHAR2(50)           null    ,
    TEL_EPS                      VARCHAR2(20)           null    ,
    FAX_EPS                      VARCHAR2(20)           null    ,
    EML_EPS                      VARCHAR2(50)           null    ,
    constraint PK_EPS primary key (TIP_DOCUMENTO, NUM_DOCUMENTO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_EPS_REF_20540_TIPOS_DO_FK                       
-- ============================================================
create index DBO.FK_EPS_REF_20540_TIPOS_DO_FK on DBO.EPS (TIP_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: AFILIADOS_EMPRESAS                                 
-- ============================================================
create table DBO.AFILIADOS_EMPRESAS
(
    COD_OCUPACION                VARCHAR2(3)            null    ,
    TIP_DOCUMENTO_AFI            VARCHAR2(3)            not null,
    NUM_DOCUMENTO_AFI            VARCHAR2(18)           not null,
    TIP_DOCUMENTO_EMP            VARCHAR2(3)            not null,
    NUM_DOCUMENTO_EMP            VARCHAR2(18)           not null,
    COD_SUCURSAL                 VARCHAR2(2)            not null,
    COD_ESTADO                   VARCHAR2(2)            not null,
    VAL_SUELDO_AFIL              NUMBER(18)             not null,
    FEC_INGRESO_UNI              DATE                   not null,
    FEC_EGRESO_UNI               DATE                   null    ,
    COD_DEPARTAMENTO_LAB         VARCHAR2(2)            null    ,
    COD_CIUDAD_LAB               VARCHAR2(3)            null    ,
    DIR_AFILIADO_LAB             VARCHAR2(50)           null    ,
    TEL_AFILIADO_LAB             VARCHAR2(20)           null    ,
    TEL_AFILIADO_LAB2            VARCHAR2(20)           null    ,
    COD_TIPO_SAL                 VARCHAR2(1)            null    ,
    COD_ZONA                     VARCHAR2(3)            null    ,
    FEC_ING_EMPRESA              DATE                   not null,
    constraint PK_AFILIADOS_EMPRESAS primary key (TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI, TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP, COD_SUCURSAL, FEC_INGRESO_UNI)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20277_ESTADOS_                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20277_ESTADOS_ on DBO.AFILIADOS_EMPRESAS (COD_ESTADO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20301_OCUPACIO                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20301_OCUPACIO on DBO.AFILIADOS_EMPRESAS (COD_OCUPACION asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADO_REF_20516_TIPOS_DO                     
-- ============================================================
create index DBO.FK_AFILIADO_REF_20516_TIPOS_DO on DBO.AFILIADOS_EMPRESAS (TIP_DOCUMENTO_AFI asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADOS_EMP_CIUDADES_FK                       
-- ============================================================
create index DBO.FK_AFILIADOS_EMP_CIUDADES_FK on DBO.AFILIADOS_EMPRESAS (COD_CIUDAD_LAB asc, COD_DEPARTAMENTO_LAB asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADOS_EMP_EMPRESAS_FK                       
-- ============================================================
create index DBO.FK_AFILIADOS_EMP_EMPRESAS_FK on DBO.AFILIADOS_EMPRESAS (COD_SUCURSAL asc, NUM_DOCUMENTO_EMP asc, TIP_DOCUMENTO_EMP asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADOS_EMP_REF_AFILIADO_                     
-- ============================================================
create index DBO.FK_AFILIADOS_EMP_REF_AFILIADO_ on DBO.AFILIADOS_EMPRESAS (NUM_DOCUMENTO_AFI asc, TIP_DOCUMENTO_AFI asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADOS_EMPRESAS_ZONAS_FK                     
-- ============================================================
create index DBO.FK_AFILIADOS_EMPRESAS_ZONAS_FK on DBO.AFILIADOS_EMPRESAS (COD_ZONA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_AFILIADOS_EMP_TIPOS_SAL_FK                      
-- ============================================================
create index DBO.FK_AFILIADOS_EMP_TIPOS_SAL_FK on DBO.AFILIADOS_EMPRESAS (COD_TIPO_SAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IDEXFECHAS                                         
-- ============================================================
create index DBO.IDEXFECHAS on DBO.AFILIADOS_EMPRESAS (FEC_INGRESO_UNI asc, FEC_EGRESO_UNI asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXTDOCEMPRESA                                      
-- ============================================================
create index DBO.IXTDOCEMPRESA on DBO.AFILIADOS_EMPRESAS (TIP_DOCUMENTO_EMP asc, NUM_DOCUMENTO_EMP asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: BARRIOS                                            
-- ============================================================
create table DBO.BARRIOS
(
    COD_DEPARTAMENTO             VARCHAR2(2)            not null,
    COD_CIUDAD                   VARCHAR2(3)            not null,
    COD_BARRIO                   VARCHAR2(3)            not null,
    NOM_BARRIO                   VARCHAR2(50)           null    ,
    constraint PK_BARRIOS primary key (COD_DEPARTAMENTO, COD_CIUDAD, COD_BARRIO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_BARRIOS_REF_20446_CIUDADES_                     
-- ============================================================
create index DBO.FK_BARRIOS_REF_20446_CIUDADES_ on DBO.BARRIOS (COD_CIUDAD asc, COD_DEPARTAMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: CARGOS                                             
-- ============================================================
create table DBO.CARGOS
(
    COD_CARGO                    VARCHAR2(5)            null    ,
    COD_REGIONAL                 VARCHAR2(3)            not null,
    COD_OFICINA                  VARCHAR2(5)            not null,
    NOM_CARGO                    VARCHAR2(100)          not null
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 40K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: PK_CARGOS                                          
-- ============================================================
create unique index DBO.PK_CARGOS on DBO.CARGOS (COD_CARGO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 40K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: DET_INCAPACIDAD                                    
-- ============================================================
create table DBO.DET_INCAPACIDAD
(
    NUM_INCAPACIDAD              VARCHAR2(15)           not null,
    PER_PAGO_INCAP               DATE                   not null,
    DIA_PAGAR_INCAP              NUMBER(18)             null    ,
    VAL_PAGAR_INCAP              NUMBER(18)             null    ,
    TIP_PAGO_INCAP               VARCHAR2(1)            null    ,
    FEC_PAGO_INCAP               DATE                   null    ,
    NUM_COMPROBANTE              VARCHAR2(15)           not null,
    PER_PRESENTADO               VARCHAR2(7)            null    ,
    EST_DET_PLANILLA             VARCHAR2(3)            null    ,
    VAL_DESCONTADO               NUMBER(18)             null    ,
    constraint FK_DET_INCAPACIDADES primary key (NUM_INCAPACIDAD, PER_PAGO_INCAP, NUM_COMPROBANTE)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: IDEXESTADODETINCAP                                 
-- ============================================================
create index DBO.IDEXESTADODETINCAP on DBO.DET_INCAPACIDAD (NUM_INCAPACIDAD asc, EST_DET_PLANILLA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: INCAPACIDADES_FK_FK                                
-- ============================================================
create index DBO.INCAPACIDADES_FK_FK on DBO.DET_INCAPACIDAD (NUM_INCAPACIDAD asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: EST_BANCARIO_AUTO                                  
-- ============================================================
create table DBO.EST_BANCARIO_AUTO
(
    COD_BANCO                    VARCHAR2(3)            not null,
    COD_SUCURSAL                 VARCHAR2(8)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    NUM_PLANILLA                 VARCHAR2(15)           not null,
    FEC_RECAUDO                  DATE                   not null,
    VAL_CONSIGNACION             NUMBER(18)             not null,
    TIP_MOVIMIENTO               VARCHAR2(5)            not null,
    EST_CONCILIACION             VARCHAR2(1)            null    ,
    FEC_PLANILLA_CON             DATE                   null    
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 40K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: IX_UNICO_ESTRATO_BANCARIO                          
-- ============================================================
create unique index DBO.IX_UNICO_ESTRATO_BANCARIO on DBO.EST_BANCARIO_AUTO (COD_BANCO asc, COD_SUCURSAL asc, FEC_RECAUDO asc, NUM_DOCUMENTO asc, NUM_PLANILLA asc, VAL_CONSIGNACION asc, TIP_MOVIMIENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 40K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: FORMATOS_BANCOS                                    
-- ============================================================
create table DBO.FORMATOS_BANCOS
(
    COD_BANCO                    VARCHAR2(3)            not null,
    COD_CAMPO                    VARCHAR2(3)            not null,
    DELIMITADOR                  VARCHAR2(15)           not null,
    INI_CAMPO                    FLOAT                  not null,
    LON_CAMPO                    FLOAT                  not null,
    FORMATO                      VARCHAR2(10)           not null,
    NUM_CAMPO                    FLOAT                  not null,
    ESTADO                       NUMBER(1)              not null,
    constraint FORMATOS_B_PK11030370538251 primary key (COD_BANCO, COD_CAMPO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 40K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Table: GRUPO_FAMILIAR                                     
-- ============================================================
create table DBO.GRUPO_FAMILIAR
(
    TIP_DOCUMENTO_CF             VARCHAR2(3)            not null,
    NUM_DOCUMENTO_CF             VARCHAR2(18)           not null,
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    FEC_INCLUSION_NOV            DATE                   not null,
    COD_PARENTESCO               VARCHAR2(3)            null    ,
    FEC_EXCLUSION_NOV            DATE                   null    ,
    constraint PK_GRUPO_FAMILIAR primary key (TIP_DOCUMENTO_CF, NUM_DOCUMENTO_CF, TIP_DOCUMENTO, NUM_DOCUMENTO, FEC_INCLUSION_NOV)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_GRUPO_FA_REF_20476_AFILIADO                     
-- ============================================================
create index DBO.FK_GRUPO_FA_REF_20476_AFILIADO on DBO.GRUPO_FAMILIAR (NUM_DOCUMENTO asc, TIP_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_GRUPO_FA_REF_20543_TIPOS_DO                     
-- ============================================================
create index DBO.FK_GRUPO_FA_REF_20543_TIPOS_DO on DBO.GRUPO_FAMILIAR (TIP_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_GRUPO_FA_REF_20799_PARENTES                     
-- ============================================================
create index DBO.FK_GRUPO_FA_REF_20799_PARENTES on DBO.GRUPO_FAMILIAR (COD_PARENTESCO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: NOVEDADES_AFILIADOS                                
-- ============================================================
create table DBO.NOVEDADES_AFILIADOS
(
    COD_NOVEDAD_AFIL             NUMBER(18)             not null,
    NOV_CODIGO                   VARCHAR2(3)            not null,
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    COD_OFICINA                  VARCHAR2(3)            null    ,
    COD_REGIONAL                 VARCHAR2(3)            null    ,
    USU_TIPO_DOC                 VARCHAR2(3)            null    ,
    USU_NUMERO_DOC               VARCHAR2(18)           null    ,
    FEC_NOVEDAD_AFIL             DATE                   not null,
    NOM_CAMPO                    VARCHAR2(30)           null    ,
    DAT_CAMPO_ANT                VARCHAR2(50)           null    ,
    NOM_TABLA                    VARCHAR2(30)           null    ,
    DAT_CAMPO_DES                VARCHAR2(50)           null    ,
    FEC_EVENTO                   DATE                   null    ,
    FEC_APLICATIVO               DATE                   null    ,
    TIP_DOCUMENTO_EMP            VARCHAR2(3)            null    ,
    NUM_DOCUMENTO_EMP            VARCHAR2(18)           null    ,
    COD_SUCURSAL                 VARCHAR2(2)            null    ,
    NUM_PLANILLA                 VARCHAR2(15)           null    ,
    NOV890                       VARCHAR2(2)            null    ,
    constraint PK_NOVEDADES_AFILIADOS primary key (COD_NOVEDAD_AFIL, NOV_CODIGO, TIP_DOCUMENTO, NUM_DOCUMENTO)
)
pctfree 0
pctused 0
initrans 0
maxtrans 0
storage
(
initial 5160K
next 3784K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_NOVEDADES_REF_PLANILLAS_FK                      
-- ============================================================
create index DBO.FK_NOVEDADES_REF_PLANILLAS_FK on DBO.NOVEDADES_AFILIADOS (NUM_PLANILLA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXNOV_COD_TP_DOC_NM_DOC                            
-- ============================================================
create index DBO.IXNOV_COD_TP_DOC_NM_DOC on DBO.NOVEDADES_AFILIADOS (FEC_EVENTO asc, NOV_CODIGO asc, TIP_DOCUMENTO asc, NUM_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: IXTIPN_DOC_NUM_DOC                                 
-- ============================================================
create index DBO.IXTIPN_DOC_NUM_DOC on DBO.NOVEDADES_AFILIADOS (TIP_DOCUMENTO asc, NUM_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: NOVEDADES_EMPRESAS                                 
-- ============================================================
create table DBO.NOVEDADES_EMPRESAS
(
    COD_NOVEDAD_EMP              NUMBER(18)             not null,
    COD_NOVEDAD                  VARCHAR2(3)            not null,
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    COD_SUCURSAL                 VARCHAR2(2)            not null,
    COD_OFICINA                  VARCHAR2(3)            null    ,
    COD_REGIONAL                 VARCHAR2(3)            null    ,
    USU_TIPO_DOC                 VARCHAR2(3)            null    ,
    USU_NUMERO_DOC               VARCHAR2(18)           null    ,
    FEC_NOVEDAD_EMP              DATE                   not null,
    NOM_CAMPO                    VARCHAR2(100)          null    ,
    DAT_CAMPO_ANT                VARCHAR2(255)          null    ,
    NOM_TABLA                    VARCHAR2(100)          null    ,
    DAT_CAMPO_DES                VARCHAR2(255)          null    ,
    OBS_NOVEDADR_EMP             VARCHAR2(100)          null    ,
    FEC_NOVEDAD                  DATE                   not null,
    FEC_APLICATIVO               DATE                   null    ,
    NUM_FORMATO_NOV              VARCHAR2(10)           null    ,
    constraint PK_NOVEDADES_AFILIADOS_EPS primary key (COD_NOVEDAD_EMP, COD_NOVEDAD, TIP_DOCUMENTO, NUM_DOCUMENTO, COD_SUCURSAL)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_NOVEDADE_REF_20307_EMPRESAS                     
-- ============================================================
create index DBO.FK_NOVEDADE_REF_20307_EMPRESAS on DBO.NOVEDADES_EMPRESAS (COD_SUCURSAL asc, NUM_DOCUMENTO asc, TIP_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_NOVEDADE_REF_20365_USUARIOS                     
-- ============================================================
create index DBO.FK_NOVEDADE_REF_20365_USUARIOS on DBO.NOVEDADES_EMPRESAS (USU_TIPO_DOC asc, USU_NUMERO_DOC asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_NOVEDADE_REF_20549_TIPOS_DO                     
-- ============================================================
create index DBO.FK_NOVEDADE_REF_20549_TIPOS_DO on DBO.NOVEDADES_EMPRESAS (TIP_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_NOVEDADE_REF_20602_OFICINAS                     
-- ============================================================
create index DBO.FK_NOVEDADE_REF_20602_OFICINAS on DBO.NOVEDADES_EMPRESAS (COD_OFICINA asc, COD_REGIONAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_NOVEDADE_REF_20633_ACESORES                     
-- ============================================================
create index DBO.FK_NOVEDADE_REF_20633_ACESORES on DBO.NOVEDADES_EMPRESAS (NUM_DOCUMENTO asc, TIP_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_NOVEDADE_REF_20683_REGIONAL                     
-- ============================================================
create index DBO.FK_NOVEDADE_REF_20683_REGIONAL on DBO.NOVEDADES_EMPRESAS (COD_REGIONAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: PENSIONES                                          
-- ============================================================
create table DBO.PENSIONES
(
    TIP_DOCUMENTO                VARCHAR2(3)            not null,
    NUM_DOCUMENTO                VARCHAR2(18)           not null,
    NOM_PENSIONES                VARCHAR2(100)          null    ,
    FEC_INCLUSION                DATE                   null    ,
    constraint PK_PENSIONES primary key (TIP_DOCUMENTO, NUM_DOCUMENTO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_PEN_REF_20537_TIPOS_DO_FK                       
-- ============================================================
create index DBO.FK_PEN_REF_20537_TIPOS_DO_FK on DBO.PENSIONES (TIP_DOCUMENTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: PROCEDIMIENTOS                                     
-- ============================================================
create table DBO.PROCEDIMIENTOS
(
    TABLA                        VARCHAR2(3)            not null,
    CODIGO                       VARCHAR2(10)           not null,
    DESCRIPCION                  VARCHAR2(255)          not null,
    GRUPO                        VARCHAR2(2)            null    ,
    NIVEL                        NUMBER(1)              null    ,
    GRUPO_MAP                    VARCHAR2(10)           null    ,
    CP_CM                        VARCHAR2(2)            null    ,
    EDAD_INICIO                  NUMBER                 null    ,
    EDAD_FINAL                   NUMBER                 null    ,
    COD_SEXO                     VARCHAR2(1)            null    ,
    CAPITULO                     VARCHAR2(5)            null    ,
    ARTICULO                     VARCHAR2(5)            null    ,
    TITULO1                      VARCHAR2(10)           null    ,
    TITULO2                      VARCHAR2(10)           null    ,
    COD_TIPO_AUTO                VARCHAR2(2)            not null,
    NIVEL_RS                     NUMBER                 null    ,
    POSS                         VARCHAR2(1)            null    ,
    CP_CM_RS                     VARCHAR2(2)            null    ,
    constraint PK_PROCEDIMIENTOS primary key (TABLA, CODIGO)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_PROCEDIM_REF_20333_SEXOS_FK                     
-- ============================================================
create index DBO.FK_PROCEDIM_REF_20333_SEXOS_FK on DBO.PROCEDIMIENTOS (COD_SEXO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_PROCEDIM_REF_20958_GRUPO_ES                     
-- ============================================================
create index DBO.FK_PROCEDIM_REF_20958_GRUPO_ES on DBO.PROCEDIMIENTOS (COD_TIPO_AUTO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_PROCEDIM_REF_21052_NIVELES_                     
-- ============================================================
create index DBO.FK_PROCEDIM_REF_21052_NIVELES_ on DBO.PROCEDIMIENTOS (NIVEL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: RELACION_AFILIADOS                                 
-- ============================================================
create table DBO.RELACION_AFILIADOS
(
    TIP_DOCUMENTO_COT            VARCHAR2(3)            not null,
    NUM_DOCUMENTO_COT            VARCHAR2(18)           not null,
    TIP_DOCUMENTO_BEN            VARCHAR2(3)            not null,
    NUM_DOCUMENTO_BEN            VARCHAR2(18)           not null,
    FEC_INCLUSION_NOV            DATE                   not null,
    COD_PARENTESCO               VARCHAR2(3)            not null,
    FEC_EXCLUSION_NOV            DATE                   null    ,
    COD_ESTADO                   VARCHAR2(2)            not null,
    COD_RELACION_ADI             VARCHAR2(2)            null    ,
    constraint PK_RELACION_AFILIADOS primary key (TIP_DOCUMENTO_COT, NUM_DOCUMENTO_COT, TIP_DOCUMENTO_BEN, NUM_DOCUMENTO_BEN, FEC_INCLUSION_NOV)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_RELACION_REF_AFILIADOS_BEN_                     
-- ============================================================
create index DBO.FK_RELACION_REF_AFILIADOS_BEN_ on DBO.RELACION_AFILIADOS (NUM_DOCUMENTO_BEN asc, TIP_DOCUMENTO_BEN asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_RELACION_REF_AFILIADOS_COT_                     
-- ============================================================
create index DBO.FK_RELACION_REF_AFILIADOS_COT_ on DBO.RELACION_AFILIADOS (NUM_DOCUMENTO_COT asc, TIP_DOCUMENTO_COT asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_RELACION_REF_20796_PARENTES                     
-- ============================================================
create index DBO.FK_RELACION_REF_20796_PARENTES on DBO.RELACION_AFILIADOS (COD_PARENTESCO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_RELACION_RELACION_ADI_FK                        
-- ============================================================
create index DBO.FK_RELACION_RELACION_ADI_FK on DBO.RELACION_AFILIADOS (COD_RELACION_ADI asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: SUCURSALES_BANCOS                                  
-- ============================================================
create table DBO.SUCURSALES_BANCOS
(
    CODBANCO                     VARCHAR2(3)            not null,
    CODSUCURSAL                  VARCHAR2(5)            not null,
    NOMSUCURSAL                  VARCHAR2(60)           not null
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 40K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: SYS_C002042                                        
-- ============================================================
create unique index DBO.SYS_C002042 on DBO.SUCURSALES_BANCOS (CODBANCO asc, CODSUCURSAL asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 40K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Table: USUARIO                                            
-- ============================================================
create table DBO.USUARIO
(
    TIPO_DOCUMENTO_USU           VARCHAR2(3)            not null,
    NUM_DOCUMENTO_USU            VARCHAR2(18)           not null,
    TIP_USUARIO                  VARCHAR2(10)           null    ,
    PRI_APELLIDO                 VARCHAR2(30)           null    ,
    SEGDO_APELIDO                VARCHAR2(30)           null    ,
    PRI_NOMBRE                   VARCHAR2(20)           null    ,
    SEG_NOMBRE                   VARCHAR2(20)           null    ,
    EDAD                         NUMBER(3)              null    ,
    UNI_MEDIDA_EDAD              NUMBER(1)              null    ,
    COD_SEXO                     VARCHAR2(1)            null    ,
    COD_CIUDAD_RES               VARCHAR2(3)            null    ,
    COD_ZONA                     VARCHAR2(3)            null    ,
    constraint USUARIO primary key (TIPO_DOCUMENTO_USU, NUM_DOCUMENTO_USU)
)
pctfree 10
pctused 40
initrans 1
maxtrans 255
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
freelist groups 1
buffer_pool default
)
tablespace DATOS
/

-- ============================================================
--   Index: FK_USUARIO_REF_20339_SEXOS_FK                      
-- ============================================================
create index DBO.FK_USUARIO_REF_20339_SEXOS_FK on DBO.USUARIO (COD_SEXO asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

-- ============================================================
--   Index: FK_USUARIO_REF_20406_ZONAS_FK                      
-- ============================================================
create index DBO.FK_USUARIO_REF_20406_ZONAS_FK on DBO.USUARIO (COD_ZONA asc)
logging
pctfree 10
initrans 2
maxtrans 255
tablespace DATOS
storage
(
initial 80K
next 40K
minextents 1
maxextents 505
pctincrease 50
freelists 1
buffer_pool default
)
/

alter table DBO.OFICINAS
    add constraint FK_OFICINAS_REF_20441_CIUDADES foreign key  (COD_DEPARTAMENTO, COD_CIUDAD)
       references DBO.CIUDADES (COD_DEPARTAMENTO, COD_CIUDAD)
/

alter table DBO.OFICINAS
    add constraint FK_OFICINAS_REF_20674_REGIONAL foreign key  (COD_REGIONAL)
       references DBO.REGIONALES (COD_REGIONAL)
/

alter table DBO.USUARIOS
    add constraint FK_USUARIOS_REF_20283_ESTADOS foreign key  (COD_ESTADO)
       references DBO.ESTADOS (COD_ESTADO)
/

alter table DBO.USUARIOS
    add constraint FK_USUARIOS_REF_20522_TIPOS_DO foreign key  (TIP_DOCUMENTO)
       references DBO.TIPOS_DOCUMENTOS (TIP_DOCUMENTO)
/

alter table DBO.USUARIOS
    add constraint FK_USUARIOS_REF_OFICINAS foreign key  (COD_OFICINA, COD_REGIONAL)
       references DBO.OFICINAS (COD_OFICINA, COD_REGIONAL)
/

alter table DBO.AFILIADOS
    add constraint FK_AFILIADO_REF_20271_ESTADOS_ foreign key  (COD_ESTADO_CIV)
       references DBO.ESTADOS_CIVILES (COD_ESTADO_CIV)
/

alter table DBO.AFILIADOS
    add constraint FK_AFILIADO_REF_20286_ESTADOS foreign key  (COD_ESTADO)
       references DBO.ESTADOS (COD_ESTADO)
/

alter table DBO.AFILIADOS
    add constraint FK_AFILIADO_REF_20321_PROFESIO foreign key  (COD_PROFESION)
       references DBO.PROFESIONES (COD_PROFESION)
/

alter table DBO.AFILIADOS
    add constraint FK_AFILIADO_REF_20327_SEXOS foreign key  (COD_SEXO)
       references DBO.SEXOS (COD_SEXO)
/

alter table DBO.AFILIADOS
    add constraint FK_AFILIADO_REF_20400_ZONAS foreign key  (COD_ZONA)
       references DBO.ZONAS (COD_ZONA)
/

alter table DBO.AFILIADOS
    add constraint FK_AFILIADO_REF_20525_TIPOS_DO foreign key  (TIP_DOCUMENTO)
       references DBO.TIPOS_DOCUMENTOS (TIP_DOCUMENTO)
/

alter table DBO.AFILIADOS
    add constraint FK_AFILIADO_REF_20573_MODALIDA foreign key  (COD_MODALIDAD_TRA)
       references DBO.MODALIDAD_TRABAJOS (COD_MODALIDAD_TRA)
/

alter table DBO.AFILIADOS
    add constraint FK_AFILIADO_REF_20576_ESTRATOS foreign key  (COD_ESTRATO)
       references DBO.ESTRATOS (COD_ESTRATO)
/

alter table DBO.AFILIADOS
    add constraint FK_AFILIADO_REF_20579_ESCOLARI foreign key  (COD_ESCOLARIDAD)
       references DBO.ESCOLARIDAD (COD_ESCOLARIDAD)
/

alter table DBO.AFILIADOS
    add constraint FK_AFILIADO_REF_20587_OFICINAS foreign key  (COD_OFICINA, COD_REGIONAL)
       references DBO.OFICINAS (COD_OFICINA, COD_REGIONAL)
/

alter table DBO.AFILIADOS
    add constraint FK_AFILIADO_REF_20671_REGIONAL foreign key  (COD_REGIONAL)
       references DBO.REGIONALES (COD_REGIONAL)
/

alter table DBO.AFILIADOS
    add constraint FK_AFILIADO_REF_20857_DISCAPAC foreign key  (COD_DISCAPACIDAD)
       references DBO.DISCAPACIDADES (COD_DISCAPACIDAD)
/

alter table DBO.AFILIADOS
    add constraint FK_AFILIADO_REF_8940_TIPOS_AF foreign key  (COD_TIPO_AFIL)
       references DBO.TIPOS_AFILIADOS (COD_TIPO_AFIL)
/

alter table DBO.EMPLEADOS
    add constraint FK_EMPLEADO_REF_20274_ESTADOS_ foreign key  (COD_ESTADO_CIV)
       references DBO.ESTADOS_CIVILES (COD_ESTADO_CIV)
/

alter table DBO.EMPLEADOS
    add constraint FK_EMPLEADO_REF_20292_ESTADOS foreign key  (COD_ESTADO)
       references DBO.ESTADOS (COD_ESTADO)
/

alter table DBO.EMPLEADOS
    add constraint FK_EMPLEADO_REF_20304_OCUPACIO foreign key  (COD_OCUPACION)
       references DBO.OCUPACIONES (COD_OCUPACION)
/

alter table DBO.EMPLEADOS
    add constraint FK_EMPLEADO_REF_20324_PROFESIO foreign key  (COD_PROFESION)
       references DBO.PROFESIONES (COD_PROFESION)
/

alter table DBO.EMPLEADOS
    add constraint FK_EMPLEADO_REF_20330_SEXOS foreign key  (COD_SEXO)
       references DBO.SEXOS (COD_SEXO)
/

alter table DBO.EMPLEADOS
    add constraint FK_EMPLEADO_REF_20546_TIPOS_DO foreign key  (TIP_DOCUMENTO)
       references DBO.TIPOS_DOCUMENTOS (TIP_DOCUMENTO)
/

alter table DBO.EMPLEADOS
    add constraint FK_EMPLEADO_REF_20597_OFICINAS foreign key  (COD_OFICINA, COD_REGIONAL)
       references DBO.OFICINAS (COD_OFICINA, COD_REGIONAL)
/

alter table DBO.EMPLEADOS
    add constraint FK_EMPLEADO_REF_20680_REGIONAL foreign key  (COD_REGIONAL)
       references DBO.REGIONALES (COD_REGIONAL)
/

alter table DBO.EMPRESAS
    add constraint FK_EMPRESAS_PAGADURIA foreign key  (COD_DEPARTAMENTO_PAG, COD_CIUDAD_PAG)
       references DBO.CIUDADES (COD_DEPARTAMENTO, COD_CIUDAD)
/

alter table DBO.EMPRESAS
    add constraint FK_EMPRESAS_PRESENTACION_COMP foreign key  (COD_PRESENTACION_COM)
       references DBO.PRESENTACION_COMPENSACION (COD_PRESENTACION_COM)
/

alter table DBO.EMPRESAS
    add constraint FK_EMPRESAS_REF_20280_ESTADOS foreign key  (COD_ESTADO)
       references DBO.ESTADOS (COD_ESTADO)
/

alter table DBO.EMPRESAS
    add constraint FK_EMPRESAS_REF_20436_CIUDADES foreign key  (COD_DEPARTAMENTO, COD_CIUDAD)
       references DBO.CIUDADES (COD_DEPARTAMENTO, COD_CIUDAD)
/

alter table DBO.EMPRESAS
    add constraint FK_EMPRESAS_REF_20519_TIPOS_DO foreign key  (TIP_DOCUMENTO)
       references DBO.TIPOS_DOCUMENTOS (TIP_DOCUMENTO)
/

alter table DBO.EMPRESAS
    add constraint FK_EMPRESAS_REF_20582_OFICINAS foreign key  (COD_OFICINA, COD_REGIONAL)
       references DBO.OFICINAS (COD_OFICINA, COD_REGIONAL)
/

alter table DBO.EMPRESAS
    add constraint FK_EMPRESAS_REF_20607_ACTIVIDA foreign key  (COD_ACTIVIDAD_ECO)
       references DBO.ACTIVIDADES_ECONOMICAS (COD_ACTIVIDAD_ECO)
/

alter table DBO.EMPRESAS
    add constraint FK_EMPRESAS_REF_20668_REGIONAL foreign key  (COD_REGIONAL)
       references DBO.REGIONALES (COD_REGIONAL)
/

alter table DBO.EMPRESAS
    add constraint FK_EMPRESAS_REF_20947_RANGO_PA foreign key  (TIP_APORTANTE)
       references DBO.TIPOS_APORTANTES (TIP_APORTANTE)
/

alter table DBO.EMPRESAS
    add constraint FK_EMPRESAS_TIPOS_PERSONAS foreign key  (COD_TIPO_PER)
       references DBO.TIPOS_PERSONAS (COD_TIPO_PER)
/

alter table DBO.EMPRESAS
    add constraint FK_EMPRESAS_ZONAS foreign key  (COD_ZONA)
       references DBO.ZONAS (COD_ZONA)
/

alter table DBO.EMPRESAS
    add constraint FK_EMPRESAS_TIPOS_EMPRESAS foreign key  (COD_TIP_EMPRESA)
       references DBO.TIPOS_EMPRESAS (COD_TIP_EMPRESA)
/

alter table DBO.ACESORES
    add constraint FK_ACESORES_REF_20289_ESTADOS foreign key  (COD_ESTADO)
       references DBO.ESTADOS (COD_ESTADO)
/

alter table DBO.ACESORES
    add constraint FK_ACESORES_REF_20528_TIPOS_DO foreign key  (TIP_DOCUMENTO)
       references DBO.TIPOS_DOCUMENTOS (TIP_DOCUMENTO)
/

alter table DBO.ARPS
    add constraint FK_ARPS_REF_20537_TIPOS_DO foreign key  (TIP_DOCUMENTO)
       references DBO.TIPOS_DOCUMENTOS (TIP_DOCUMENTO)
/

alter table DBO.EPS
    add constraint FK_EPS_REF_20540_TIPOS_DO foreign key  (TIP_DOCUMENTO)
       references DBO.TIPOS_DOCUMENTOS (TIP_DOCUMENTO)
/

alter table DBO.AFILIADOS_EMPRESAS
    add constraint FK_AFILIADO_REF_20277_ESTADOS foreign key  (COD_ESTADO)
       references DBO.ESTADOS (COD_ESTADO)
/

alter table DBO.AFILIADOS_EMPRESAS
    add constraint FK_AFILIADO_REF_20301_OCUPACIO foreign key  (COD_OCUPACION)
       references DBO.OCUPACIONES (COD_OCUPACION)
/

alter table DBO.AFILIADOS_EMPRESAS
    add constraint FK_AFILIADO_REF_20516_TIPOS_DO foreign key  (TIP_DOCUMENTO_AFI)
       references DBO.TIPOS_DOCUMENTOS (TIP_DOCUMENTO)
/

alter table DBO.AFILIADOS_EMPRESAS
    add constraint FK_AFILIADOS_EMP_EMPRESAS foreign key  (TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP, COD_SUCURSAL)
       references DBO.EMPRESAS (TIP_DOCUMENTO, NUM_DOCUMENTO, COD_SUCURSAL)
/

alter table DBO.AFILIADOS_EMPRESAS
    add constraint FK_AFILIADOS_EMP_REF_AFILIADO foreign key  (TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI)
       references DBO.AFILIADOS (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.AFILIADOS_EMPRESAS
    add constraint FK_AFILIADOS_EMP_TIPOS_SAL foreign key  (COD_TIPO_SAL)
       references DBO.TIPOS_SALARIOS (COD_TIPO_SAL)
/

alter table DBO.AFILIADOS_EMPRESAS
    add constraint FK_AFILIADOS_EMPRESAS_ZONAS foreign key  (COD_ZONA)
       references DBO.ZONAS (COD_ZONA)
/

alter table DBO.AFILIADOS_EMPRESAS
    add constraint FK_AFILIADOS_EMP_CIUDADES foreign key  (COD_DEPARTAMENTO_LAB, COD_CIUDAD_LAB)
       references DBO.CIUDADES (COD_DEPARTAMENTO, COD_CIUDAD)
/

alter table DBO.BARRIOS
    add constraint FK_BARRIOS_REF_20446_CIUDADES foreign key  (COD_DEPARTAMENTO, COD_CIUDAD)
       references DBO.CIUDADES (COD_DEPARTAMENTO, COD_CIUDAD)
/

alter table DBO.CARGOS
    add constraint FR_REGIONALES foreign key  (COD_REGIONAL)
       references DBO.REGIONALES (COD_REGIONAL)
/

alter table DBO.CARGOS
    add constraint FR_OFICINAS foreign key  (COD_OFICINA, COD_REGIONAL)
       references DBO.OFICINAS (COD_OFICINA, COD_REGIONAL)
/

alter table DBO.DET_INCAPACIDAD
    add constraint INCAPACIDADES_FK foreign key  (NUM_INCAPACIDAD)
       references DBO.INCAPACIDADES (NUM_INCAPACIDAD)
/

alter table DBO.EST_BANCARIO_AUTO
    add constraint EST_BANCARIO__FK11030502058232 foreign key  (COD_BANCO)
       references DBO.BANCOS (COD_BANCO)
/

alter table DBO.FORMATOS_BANCOS
    add constraint FORMATOS_BANC_FK21030371370939 foreign key  (COD_BANCO)
       references DBO.BANCOS (COD_BANCO)
/

alter table DBO.GRUPO_FAMILIAR
    add constraint FK_GRUPO_FA_REF_20476_AFILIADO foreign key  (TIP_DOCUMENTO, NUM_DOCUMENTO)
       references DBO.AFILIADOS (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.GRUPO_FAMILIAR
    add constraint FK_GRUPO_FA_REF_20543_TIPOS_DO foreign key  (TIP_DOCUMENTO)
       references DBO.TIPOS_DOCUMENTOS (TIP_DOCUMENTO)
/

alter table DBO.GRUPO_FAMILIAR
    add constraint FK_GRUPO_FA_REF_20628_ACESORES foreign key  (TIP_DOCUMENTO, NUM_DOCUMENTO)
       references DBO.ACESORES (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.GRUPO_FAMILIAR
    add constraint FK_GRUPO_FA_REF_20701_ARPS foreign key  (TIP_DOCUMENTO, NUM_DOCUMENTO)
       references DBO.ARPS (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.GRUPO_FAMILIAR
    add constraint FK_GRUPO_FA_REF_20756_EPS foreign key  (TIP_DOCUMENTO, NUM_DOCUMENTO)
       references DBO.EPS (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.GRUPO_FAMILIAR
    add constraint FK_GRUPO_FA_REF_20799_PARENTES foreign key  (COD_PARENTESCO)
       references DBO.PARENTESCOS (COD_PARENTESCO)
/

alter table DBO.GRUPO_FAMILIAR
    add constraint FK_GRUPO_FA_REF_20817_EMPLEADO foreign key  (TIP_DOCUMENTO, NUM_DOCUMENTO)
       references DBO.EMPLEADOS (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.NOVEDADES_AFILIADOS
    add constraint FK_NOVEDADE_REF_8909_NOVEDADE foreign key  (NOV_CODIGO)
       references DBO.NOVEDADES (NOV_CODIGO)
/

alter table DBO.NOVEDADES_AFILIADOS
    add constraint FK_NOVEDADE_REF_8912_AFILIADO foreign key  (TIP_DOCUMENTO, NUM_DOCUMENTO)
       references DBO.AFILIADOS (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.NOVEDADES_AFILIADOS
    add constraint FK_NOVEDADE_REF_8917_OFICINAS foreign key  (COD_OFICINA, COD_REGIONAL)
       references DBO.OFICINAS (COD_OFICINA, COD_REGIONAL)
/

alter table DBO.NOVEDADES_AFILIADOS
    add constraint FK_NOVEDADE_REF_8922_USUARIOS foreign key  (USU_TIPO_DOC, USU_NUMERO_DOC)
       references DBO.USUARIOS (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.NOVEDADES_AFILIADOS
    add constraint FK_NOVEDADE_REF_8929_EMPRESAS foreign key  (TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP, COD_SUCURSAL)
       references DBO.EMPRESAS (TIP_DOCUMENTO, NUM_DOCUMENTO, COD_SUCURSAL)
/

alter table DBO.NOVEDADES_EMPRESAS
    add constraint FK_NOVEDADE_REF_20307_EMPRESAS foreign key  (TIP_DOCUMENTO, NUM_DOCUMENTO, COD_SUCURSAL)
       references DBO.EMPRESAS (TIP_DOCUMENTO, NUM_DOCUMENTO, COD_SUCURSAL)
/

alter table DBO.NOVEDADES_EMPRESAS
    add constraint FK_NOVEDADE_REF_20365_USUARIOS foreign key  (USU_TIPO_DOC, USU_NUMERO_DOC)
       references DBO.USUARIOS (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.NOVEDADES_EMPRESAS
    add constraint FK_NOVEDADE_REF_20549_TIPOS_DO foreign key  (TIP_DOCUMENTO)
       references DBO.TIPOS_DOCUMENTOS (TIP_DOCUMENTO)
/

alter table DBO.NOVEDADES_EMPRESAS
    add constraint FK_NOVEDADE_REF_20602_OFICINAS foreign key  (COD_OFICINA, COD_REGIONAL)
       references DBO.OFICINAS (COD_OFICINA, COD_REGIONAL)
/

alter table DBO.NOVEDADES_EMPRESAS
    add constraint FK_NOVEDADE_REF_20633_ACESORES foreign key  (TIP_DOCUMENTO, NUM_DOCUMENTO)
       references DBO.ACESORES (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.NOVEDADES_EMPRESAS
    add constraint FK_NOVEDADE_REF_20683_REGIONAL foreign key  (COD_REGIONAL)
       references DBO.REGIONALES (COD_REGIONAL)
/

alter table DBO.NOVEDADES_EMPRESAS
    add constraint FK_NOVEDADE_REF_20706_ARPS foreign key  (TIP_DOCUMENTO, NUM_DOCUMENTO)
       references DBO.ARPS (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.NOVEDADES_EMPRESAS
    add constraint FK_NOVEDADE_REF_20761_EPS foreign key  (TIP_DOCUMENTO, NUM_DOCUMENTO)
       references DBO.EPS (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.NOVEDADES_EMPRESAS
    add constraint FK_NOVEDADE_REF_20822_EMPLEADO foreign key  (TIP_DOCUMENTO, NUM_DOCUMENTO)
       references DBO.EMPLEADOS (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.PENSIONES
    add constraint FK_PEN_REF_20537_TIPOS_DO foreign key  (TIP_DOCUMENTO)
       references DBO.TIPOS_DOCUMENTOS (TIP_DOCUMENTO)
/

alter table DBO.PROCEDIMIENTOS
    add constraint FK_PROCEDIM_REF_20333_SEXOS foreign key  (COD_SEXO)
       references DBO.SEXOS (COD_SEXO)
/

alter table DBO.PROCEDIMIENTOS
    add constraint FK_PROCEDIM_REF_20958_GRUPO_ES foreign key  (COD_TIPO_AUTO)
       references DBO.GRUPO_ESPECIALIDADES (COD_TIPO_AUTO)
/

alter table DBO.PROCEDIMIENTOS
    add constraint FK_PROCEDIM_REF_21052_NIVELES_ foreign key  (NIVEL)
       references DBO.NIVELES_CONTRATACION (NIVEL)
/

alter table DBO.RELACION_AFILIADOS
    add constraint FK_RELACION_REF_20796_PARENTES foreign key  (COD_PARENTESCO)
       references DBO.PARENTESCOS (COD_PARENTESCO)
/

alter table DBO.RELACION_AFILIADOS
    add constraint FK_RELACION_REF_AFILIADOS_BEN foreign key  (TIP_DOCUMENTO_BEN, NUM_DOCUMENTO_BEN)
       references DBO.AFILIADOS (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.RELACION_AFILIADOS
    add constraint FK_RELACION_REF_AFILIADOS_COT foreign key  (TIP_DOCUMENTO_COT, NUM_DOCUMENTO_COT)
       references DBO.AFILIADOS (TIP_DOCUMENTO, NUM_DOCUMENTO)
/

alter table DBO.RELACION_AFILIADOS
    add constraint PK_RELACION_FER_210140_ADICI foreign key  (COD_RELACION_ADI)
       references DBO.RELACION_ADICIONAL (COD_RELACION_ADI)
/

alter table DBO.SUCURSALES_BANCOS
    add constraint SYS_C005555 foreign key  (CODBANCO)
       references DBO.BANCOS (COD_BANCO)
/

alter table DBO.USUARIO
    add constraint FK_USUARIO_REF_20339_SEXOS foreign key  (COD_SEXO)
       references DBO.SEXOS (COD_SEXO)
/

alter table DBO.USUARIO
    add constraint FK_USUARIO_REF_20406_ZONAS foreign key  (COD_ZONA)
       references DBO.ZONAS (COD_ZONA)
/

