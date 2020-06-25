USE [erp]
GO


/*==============================================================*/
/* Table: BJD                                                   */
/*==============================================================*/
create table BJD 
(
   BJDH                 varchar(200)                   not null,
   BJRQ                 varchar(200)                   null,
   ZHBR                 varchar(200)                   null,
   PZHR                 varchar(200)                   null,
   PZH                  varchar(200)                   null,
   GYSH                 varchar(200)                   null,
   CGY                  varchar(200)                   null,
   JZHRQ                varchar(200)                   null,
   HB                   varchar(200)                   null,
   CLDH                 varchar(200)                   null,
   MCH                  varchar(200)                   null,
   GG                   varchar(200)                   null,
   YS                   varchar(200)                   null,
   ZXL                  varchar(200)                   null,
   ZDL                  varchar(200)                   null,
   DJ                   varchar(200)                   null,
   DW                   varchar(200)                   null,
   SHL                  varchar(200)                   null,
   HSHDJ                varchar(200)                   null,
   ZHKL                 varchar(200)                   null,
   PP                   varchar(200)                   null,
   CLLX                 varchar(200)                   null,
   GFXH                 varchar(200)                   null,
   GYSHCLMCH            varchar(200)                   null,
   BZH                  varchar(200)                   null,
   constraint PK_BJD primary key clustered (BJDH)
);

/*==============================================================*/
/* Table: BMXXB                                                 */
/*==============================================================*/
create table BMXXB 
(
   BMBH                 varchar(200)                   not null,
   BMMCH                varchar(200)                   null,
   LXDH                 varchar(200)                   null,
   BMCHZH               varchar(200)                   null,
   ZHGBH                varchar(200)                   null,
   DYRSH                varchar(200)                   null,
   XYRSH                varchar(200)                   null,
   constraint PK_BMXXB primary key clustered (BMBH)
);

/*==============================================================*/
/* Table: CGD                                                   */
/*==============================================================*/
create table CGD 
(
   GYSH                 varchar(200)                   null,
   CGBM                 varchar(200)                   null,
   CGRQ                 varchar(200)                   null,
   CGY                  varchar(200)                   null,
   HB                   varchar(200)                   null,
   SHHLX                varchar(200)                   null,
   CGDH                 varchar(200)                   not null,
   CGCL                 varchar(200)                   null,
   MCH                  varchar(200)                   null,
   GG                   varchar(200)                   null,
   YS                   varchar(200)                   null,
   DJ                   varchar(200)                   null,
   SHL                  varchar(200)                   null,
   HSHDJ                varchar(200)                   null,
   SHHJE                varchar(200)                   null,
   YKYSHJE              varchar(200)                   null,
   KPSHL                varchar(200)                   null,
   YTSHL                varchar(200)                   null,
   XNJ                  varchar(200)                   null,
   CHPGCH               varchar(200)                   null,
   FH                   varchar(200)                   null,
   BZH                  varchar(200)                   null,
   constraint PK_CGD primary key clustered (CGDH)
);

/*==============================================================*/
/* Table: FKD                                                   */
/*==============================================================*/
create table FKD 
(
   FKDH                 varchar(200)                   not null,
   FKRQ                 varchar(200)                   null,
   ZHBR                 varchar(200)                   null,
   PZHR                 varchar(200)                   null,
   PZH                  varchar(200)                   null,
   XGR                  varchar(200)                   null,
   GYSH                 varchar(200)                   null,
   XGRQ                 varchar(200)                   null,
   SHPSHJ               varchar(200)                   null,
   FKLX                 varchar(200)                   null,
   FKJE                 varchar(200)                   null,
   HB                   varchar(200)                   null,
   FKFSH                varchar(200)                   null,
   FKLY                 varchar(200)                   null,
   HL                   varchar(200)                   null,
   PH                   varchar(200)                   null,
   YUFJE                varchar(200)                   null,
   YFJE                 varchar(200)                   null,
   QKJE                 varchar(200)                   null,
   DJLX                 varchar(200)                   null,
   CGDH                 varchar(200)                   null,
   YFDH                 varchar(200)                   null,
   SHQDH                varchar(200)                   null,
   YIFJE                varchar(200)                   null,
   BCFKJE               varchar(200)                   null,
   BZH                  varchar(200)                   null,
   constraint PK_FKD primary key clustered (FKDH)
);

/*==============================================================*/
/* Table: FPD                                                   */
/*==============================================================*/
create table FPD 
(
   PJDH                 varchar(200)                   not null,
   KPRQ                 varchar(200)                   null,
   KPR                  varchar(200)                   null,
   PZHR                 varchar(200)                   null,
   PJLX                 varchar(200)                   null,
   BM                   varchar(200)                   null,
   GYSH                 varchar(200)                   null,
   FPHM                 varchar(200)                   null,
   CGDH                 varchar(200)                   null,
   CLDH                 varchar(200)                   null,
   MCH                  varchar(200)                   null,
   HB                   varchar(200)                   null,
   GG                   varchar(200)                   null,
   YS                   varchar(200)                   null,
   DW                   varchar(200)                   null,
   FPSHL                varchar(200)                   null,
   DJ                   varchar(200)                   null,
   HSHDJ                varchar(200)                   null,
   HKJE                 varchar(200)                   null,
   JSHHJ                varchar(200)                   null,
   YH                   varchar(200)                   null,
   YHZHH                varchar(200)                   null,
   BHSHJE               varchar(200)                   null,
   SHL                  varchar(200)                   null,
   SHJ                  varchar(200)                   null,
   SHM                  varchar(200)                   null,
   BZH                  varchar(200)                   null,
   constraint PK_FPD primary key clustered (PJDH)
);

/*==============================================================*/
/* Table: GYSHCW                                                */
/*==============================================================*/
create table GYSHCW 
(
   GYSHDH               varchar(200)                   not null,
   YUFKJE               varchar(200)                   null,
   YIFKJ                varchar(200)                   null,
   QKJE                 varchar(200)                   null,
   JYPF                 varchar(200)                   null,
   JHPF                 varchar(200)                   null,
   PZHPF                varchar(200)                   null,
   FKFSH                varchar(200)                   null,
   JYHB                 varchar(200)                   null,
   FKTJ                 varchar(200)                   null,
   SHM                  varchar(200)                   null,
   JGTJ                 varchar(200)                   null,
   constraint PK_GYSHCW primary key clustered (GYSHDH)
);

/*==============================================================*/
/* Table: GYSHJG                                                */
/*==============================================================*/
create table GYSHJG 
(
   GYSHDH               varchar(200)                   not null,
   GYSH                 varchar(200)                   null,
   CL                   varchar(200)                   null,
   MC                   varchar(200)                   null,
   GG                   varchar(200)                   null,
   YS                   varchar(200)                   null,
   DW                   varchar(200)                   null,
   DJ                   varchar(200)                   null,
   BHSHDJ               varchar(200)                   null,
   SHM                  varchar(200)                   null,
   ZXL                  varchar(200)                   null,
   ZDL                  varchar(200)                   null,
   JGTJ                 varchar(200)                   null,
   GFLX                 varchar(200)                   null,
   HB                   varchar(200)                   null,
   HJRQ                 varchar(200)                   null,
   ZHT                  varchar(200)                   null,
   SHXRQ                varchar(200)                   null,
   CLMCH                varchar(200)                   null,
   DWZHL                varchar(200)                   null,
   constraint PK_GYSHJG primary key clustered (GYSHDH)
);

/*==============================================================*/
/* Table: GYSHLL                                                */
/*==============================================================*/
create table GYSHLL 
(
   country              varchar(200)                   null,
   province             varchar(200)                   null,
   city                 varchar(200)                   null,
   YZHBM                varchar(200)                   null,
   FZR                  varchar(200)                   null,
   FR                   varchar(200)                   null,
   KYRQ                 varchar(200)                   null,
   YEZZHHM              varchar(200)                   null,
   SWDJZH               varchar(200)                   null,
   YH                   varchar(200)                   null,
   YHZHH                varchar(200)                   null,
   CHCJYRQ              varchar(200)                   null,
   ZJJYRQ               varchar(200)                   null,
   GYSHDH               varchar(200)                   not null,
   constraint PK_GYSHLL primary key clustered (GYSHDH)
);

/*==============================================================*/
/* Table: GYSHLX                                                */
/*==============================================================*/
create table GYSHLX 
(
   LBDH                 varchar(200)                   not null,
   LBMCH                varchar(200)                   null,
   GYSHBH               varchar(200)                   null,
   constraint PK_GYSHLX primary key clustered (LBDH)
);

/*==============================================================*/
/* Table: GYSHLXR                                               */
/*==============================================================*/
create table GYSHLXR 
(
   GYSHDH               varchar(200)                   null,
   XH                   varchar(200)                   not null,
   LXR                  varchar(200)                   null,
   BM                   varchar(200)                   null,
   "ZHW/ZHW"            varchar(200)                   null,
   XB                   varchar(200)                   null,
   DH                   varchar(200)                   null,
   CHZH                 varchar(200)                   null,
   constraint PK_GYSHLXR primary key clustered (XH)
);

/*==============================================================*/
/* Table: GYSHSHZH                                              */
/*==============================================================*/
create table GYSHSHZH 
(
   GYSHDH               varchar(200)                   not null,
   GYSHJCH              varchar(200)                   null,
   GYSHLX               varchar(200)                   null,
   GYSHQCH              varchar(200)                   null,
   LXR                  varchar(200)                   null,
   SHJ                  varchar(200)                   null,
   SSHQY                varchar(200)                   null,
   LXDH                 varchar(200)                   null,
   CGY                  varchar(200)                   null,
   CHZHHH               varchar(200)                   null,
   DZYJ                 varchar(200)                   null,
   WZH                  varchar(200)                   null,
   XXDZH                varchar(200)                   null,
   WLDW                 varchar(200)                   null,
   constraint PK_GYSHSHZH primary key clustered (GYSHDH)
);

/*==============================================================*/
/* Table: QGD                                                   */
/*==============================================================*/
create table QGD 
(
   QGDH                 varchar(200)                   not null,
   QGRQ                 varchar(200)                   null,
   QGBM                 varchar(200)                   null,
   QGR                  varchar(200)                   null,
   CLDH                 varchar(200)                   null,
   MCH                  varchar(200)                   null,
   GG                   varchar(200)                   null,
   YS                   varchar(200)                   null,
   DJ                   varchar(200)                   null,
   SHL                  varchar(200)                   null,
   XYRQ                 varchar(200)                   null,
   YJR                  varchar(200)                   null,
   BZH                  varchar(200)                   null,
   constraint PK_QGD primary key clustered (QGDH)
);

/*==============================================================*/
/* Table: RYMD                                                  */
/*==============================================================*/
create table RYMD 
(
   YHBH                 varchar(200)                   not null,
   XM                   varchar(200)                   null,
   XB                   varchar(200)                   null,
   BM                   varchar(200)                   null,
   ZHW                  varchar(200)                   null,
   DH                   varchar(200)                   null,
   "user"               varchar(200)                   null,
   passwd               varchar(200)                   null,
   email                varchar(200)                   null,
   ZHZH                 varchar(200)                   null,
   constraint PK_RYMD primary key clustered (YHBH)
);

/*==============================================================*/
/* Table: SHHD                                                  */
/*==============================================================*/
create table SHHD 
(
   SHHDH                varchar(200)                   not null,
   SHHRQ                varchar(200)                   null,
   CGBM                 varchar(200)                   null,
   CGY                  varchar(200)                   null,
   SHHLX                varchar(200)                   null,
   XH                   varchar(200)                   null,
   CGDH                 varchar(200)                   null,
   CGCL                 varchar(200)                   null,
   HSHDJ                varchar(200)                   null,
   SHHJE                varchar(200)                   null,
   YKYSHJE              varchar(200)                   null,
   KPSHL                varchar(200)                   null,
   YTSHL                varchar(200)                   null,
   ZHJJG                varchar(200)                   null,
   ZHJDH                varchar(200)                   null,
   ZHJDXH               varchar(200)                   null,
   SHHTZHD              varchar(200)                   null,
   SHHTZHDXH            varchar(200)                   null,
   XNJ                  varchar(200)                   null,
   CHPGCH               varchar(200)                   null,
   FH                   varchar(200)                   null,
   BZH                  varchar(200)                   null,
   constraint PK_SHHD primary key clustered (SHHDH)
);

/*==============================================================*/
/* Table: THD                                                   */
/*==============================================================*/
create table THD 
(
   THDH                 varchar(200)                   not null,
   THRQ                 varchar(200)                   null,
   GYSH                 varchar(200)                   null,
   BM                   varchar(200)                   null,
   CGY                  varchar(200)                   null,
   HB                   varchar(200)                   null,
   SHHDH                varchar(200)                   null,
   CLDH                 varchar(200)                   null,
   PH                   varchar(200)                   null,
   MCH                  varchar(200)                   null,
   GG                   varchar(200)                   null,
   YS                   varchar(200)                   null,
   DJ                   varchar(200)                   null,
   SHL                  varchar(200)                   null,
   HSHDJ                varchar(200)                   null,
   THJE                 varchar(200)                   null,
   THSHL                varchar(200)                   null,
   DW                   varchar(200)                   null,
   CK                   varchar(200)                   null,
   SHHSHL               varchar(200)                   null,
   YTSHL                varchar(200)                   null,
   CGDH                 varchar(200)                   null,
   BZH                  varchar(200)                   null,
   constraint PK_THD primary key clustered (THDH)
);

/*==============================================================*/
/* Table: XJD                                                   */
/*==============================================================*/
create table XJD 
(
   XJDH                 varchar(200)                   not null,
   XJRQ                 varchar(200)                   null,
   GYSH                 varchar(200)                   null,
   BM                   varchar(200)                   null,
   XJY                  varchar(200)                   null,
   CLDH                 varchar(200)                   null,
   MCH                  varchar(200)                   null,
   GG                   varchar(200)                   null,
   YS                   varchar(200)                   null,
   DW                   varchar(200)                   null,
   BZH                  varchar(200)                   null,
   constraint PK_XJD primary key clustered (XJDH)
);

/*==============================================================*/
/* Table: YFZHD                                                 */
/*==============================================================*/
create table YFZHD 
(
   YFDH                 varchar(200)                   not null,
   YFRQ                 varchar(200)                   null,
   GYSH                 varchar(200)                   null,
   ZHBR                 varchar(200)                   null,
   PZHR                 varchar(200)                   null,
   XGR                  varchar(200)                   null,
   XGSHJ                varchar(200)                   null,
   SHPSHJ               varchar(200)                   null,
   PZH                  varchar(200)                   null,
   FPHM                 varchar(200)                   null,
   FPRQ                 varchar(200)                   null,
   HB                   varchar(200)                   null,
   FPJE                 varchar(200)                   null,
   HL                   varchar(200)                   null,
   SHM                  varchar(200)                   null,
   DJLX                 varchar(200)                   null,
   CLDH                 varchar(200)                   null,
   CLMCH                varchar(200)                   null,
   GG                   varchar(200)                   null,
   SHUL                 varchar(200)                   null,
   YS                   varchar(200)                   null,
   DW                   varchar(200)                   null,
   DJ                   varchar(200)                   null,
   SHL                  varchar(200)                   null,
   BHSHJE               varchar(200)                   null,
   JSHHJ                varchar(200)                   null,
   YFJE                 varchar(200)                   null,
   ZHKJE                varchar(200)                   null,
   FYXM                 varchar(200)                   null,
   YJFKR                varchar(200)                   null,
   SHHRQ                varchar(200)                   null,
   BZH                  varchar(200)                   null,
   constraint PK_YFZHD primary key clustered (YFDH)
);

/*==============================================================*/
/* Table: "user"                                                */
/*==============================================================*/
create table "user" 
(
   YHBH                 varchar(200)                   not null,
   XM                   varchar(200)                   null,
   XB                   varchar(200)                   null,
   BM                   varchar(200)                   null,
   ZHW                  varchar(200)                   null,
   DH                   varchar(200)                   null,
   "user"               varchar(200)                   null,
   passwd               varchar(200)                   null,
   email                varchar(200)                   null,
   constraint PK_USER primary key clustered (YHBH)
);