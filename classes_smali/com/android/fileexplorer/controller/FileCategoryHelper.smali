.class public Lcom/android/fileexplorer/controller/FileCategoryHelper;
.super Ljava/lang/Object;
.source "FileCategoryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;,
        Lcom/android/fileexplorer/controller/FileCategoryHelper$CategoryItem;,
        Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    }
.end annotation


# static fields
.field public static final DOC_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final DOC_TAB_CATEGORY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final HOME_TAB_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIRROR_HOME_DEFAULT_CHILD_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final MIRROR_HOME_DEFAULT_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final MIRROR_HOME_TAB_PAIRS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final NEED_LOAD_DATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAGE_NAME:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final categoryInfoIndex:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static final categoryNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final sCategoryIcon:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final sCategoryIconPhone:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final sCategoryTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 47

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB_NAMES:Ljava/util/HashMap;

    .line 15
    new-instance v2, Ljava/util/HashMap;

    .line 17
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20
    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper;->DOC_TAB_CATEGORY:Ljava/util/HashMap;

    .line 22
    new-instance v3, Ljava/util/HashMap;

    .line 24
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 27
    sput-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper;->sCategoryTypes:Ljava/util/HashMap;

    .line 29
    new-instance v4, Ljava/util/HashMap;

    .line 31
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 34
    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper;->MIRROR_HOME_TAB_PAIRS:Ljava/util/HashMap;

    .line 36
    invoke-static {}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->getHomeTab()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 39
    move-result-object v5

    .line 40
    sput-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 42
    const/4 v5, 0x5

    .line 43
    new-array v6, v5, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 45
    sget-object v7, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 47
    const/4 v8, 0x0

    .line 48
    aput-object v7, v6, v8

    .line 50
    sget-object v9, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->TYPE_SIDE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 52
    const/4 v10, 0x1

    .line 53
    aput-object v9, v6, v10

    .line 55
    sget-object v11, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->APP:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 57
    const/4 v12, 0x2

    .line 58
    aput-object v11, v6, v12

    .line 60
    sget-object v13, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 62
    const/4 v14, 0x3

    .line 63
    aput-object v13, v6, v14

    .line 65
    sget-object v15, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 67
    const/16 v16, 0x4

    .line 69
    aput-object v15, v6, v16

    .line 71
    sput-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper;->MIRROR_HOME_DEFAULT_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 73
    const/4 v6, 0x6

    .line 74
    new-array v5, v6, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 76
    sget-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 78
    aput-object v6, v5, v8

    .line 80
    sget-object v8, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 82
    aput-object v8, v5, v10

    .line 84
    sget-object v10, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 86
    aput-object v10, v5, v12

    .line 88
    sget-object v12, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 90
    aput-object v12, v5, v14

    .line 92
    sget-object v14, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 94
    aput-object v14, v5, v16

    .line 96
    move-object/from16 v23, v3

    .line 98
    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 100
    const/16 v17, 0x5

    .line 102
    aput-object v3, v5, v17

    .line 104
    sput-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper;->MIRROR_HOME_DEFAULT_CHILD_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 106
    const/16 v5, 0xb

    .line 108
    move-object/from16 v24, v2

    .line 110
    new-array v2, v5, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 112
    const/16 v19, 0x0

    .line 114
    aput-object v13, v2, v19

    .line 116
    const/16 v20, 0x1

    .line 118
    aput-object v6, v2, v20

    .line 120
    const/16 v21, 0x2

    .line 122
    aput-object v8, v2, v21

    .line 124
    const/16 v22, 0x3

    .line 126
    aput-object v10, v2, v22

    .line 128
    aput-object v12, v2, v16

    .line 130
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 132
    aput-object v5, v2, v17

    .line 134
    const/16 v18, 0x6

    .line 136
    aput-object v3, v2, v18

    .line 138
    const/16 v25, 0x7

    .line 140
    aput-object v14, v2, v25

    .line 142
    move-object/from16 v26, v9

    .line 144
    sget-object v9, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Bluetooth:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 146
    const/16 v27, 0x8

    .line 148
    aput-object v9, v2, v27

    .line 150
    move-object/from16 v28, v4

    .line 152
    const/16 v4, 0x9

    .line 154
    aput-object v15, v2, v4

    .line 156
    sget-object v29, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picker:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 158
    const/16 v30, 0xa

    .line 160
    aput-object v29, v2, v30

    .line 162
    sput-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper;->PAGE_NAME:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 164
    const/4 v2, 0x6

    .line 165
    new-array v4, v2, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 167
    const/4 v2, 0x0

    .line 168
    aput-object v6, v4, v2

    .line 170
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Word:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 172
    const/16 v20, 0x1

    .line 174
    aput-object v2, v4, v20

    .line 176
    move-object/from16 v31, v2

    .line 178
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->XLS:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 180
    const/16 v21, 0x2

    .line 182
    aput-object v2, v4, v21

    .line 184
    move-object/from16 v32, v2

    .line 186
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->PDF:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 188
    const/16 v22, 0x3

    .line 190
    aput-object v2, v4, v22

    .line 192
    move-object/from16 v33, v2

    .line 194
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->PPT:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 196
    aput-object v2, v4, v16

    .line 198
    move-object/from16 v34, v2

    .line 200
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 202
    const/16 v17, 0x5

    .line 204
    aput-object v2, v4, v17

    .line 206
    sput-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper;->DOC_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 208
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 210
    const v35, 0x7f110062

    .line 213
    move-object/from16 v36, v11

    .line 215
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    move-result-object v11

    .line 219
    invoke-virtual {v0, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const v4, 0x7f110070

    .line 225
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v0, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const v11, 0x7f11007d

    .line 235
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    move-result-object v11

    .line 239
    invoke-virtual {v0, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const v35, 0x7f110073

    .line 245
    move-object/from16 v37, v4

    .line 247
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    move-result-object v4

    .line 251
    invoke-virtual {v0, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    move-object/from16 v35, v12

    .line 256
    sget-object v12, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 258
    const v38, 0x7f110078

    .line 261
    move-object/from16 v39, v4

    .line 263
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    move-result-object v4

    .line 267
    invoke-virtual {v0, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const v4, 0x7f110066

    .line 273
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    move-result-object v4

    .line 277
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const v12, 0x7f11007f

    .line 283
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    move-result-object v12

    .line 287
    invoke-virtual {v0, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const v12, 0x7f110063

    .line 293
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    move-result-object v12

    .line 297
    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const v12, 0x7f110071

    .line 303
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    move-result-object v12

    .line 307
    invoke-virtual {v0, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const v12, 0x7f11006a

    .line 313
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    move-result-object v12

    .line 317
    invoke-virtual {v0, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const v38, 0x7f110064

    .line 323
    move-object/from16 v40, v3

    .line 325
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v0, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const v3, 0x7f110075

    .line 335
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    move-result-object v3

    .line 339
    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    move-object/from16 v38, v9

    .line 344
    sget-object v9, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Download:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 346
    const v41, 0x7f110067

    .line 349
    move-object/from16 v42, v14

    .line 351
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    move-result-object v14

    .line 355
    invoke-virtual {v0, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v14, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Private:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 360
    const v41, 0x7f110378

    .line 363
    move-object/from16 v43, v9

    .line 365
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    move-result-object v9

    .line 369
    invoke-virtual {v0, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v9, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Remote:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 374
    const v41, 0x7f11021b

    .line 377
    move-object/from16 v44, v14

    .line 379
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    move-result-object v14

    .line 383
    invoke-virtual {v0, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v14, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MiDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 388
    const v41, 0x7f11006e

    .line 391
    move-object/from16 v45, v9

    .line 393
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    move-result-object v9

    .line 397
    invoke-virtual {v0, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v9, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->InstalledApp:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 402
    const v41, 0x7f11006d

    .line 405
    move-object/from16 v46, v14

    .line 407
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    move-result-object v14

    .line 411
    invoke-virtual {v0, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const v14, 0x7f110453

    .line 417
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 420
    move-result-object v14

    .line 421
    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 426
    if-eqz v0, :cond_1af

    .line 428
    const v14, 0x7f110338

    .line 431
    goto :goto_1b2

    .line 432
    :cond_1af
    const v14, 0x7f1101ef

    .line 435
    :goto_1b2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 438
    move-result-object v14

    .line 439
    invoke-virtual {v1, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-virtual {v1, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    move-object/from16 v3, v39

    .line 453
    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    move-object/from16 v3, v35

    .line 458
    move-object/from16 v4, v37

    .line 460
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-virtual {v1, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const v4, 0x7f11040c

    .line 469
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    move-result-object v4

    .line 473
    move-object/from16 v11, v36

    .line 475
    invoke-virtual {v1, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 480
    const v12, 0x7f110065

    .line 483
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 486
    move-result-object v12

    .line 487
    invoke-virtual {v1, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    new-instance v1, Landroid/util/Pair;

    .line 492
    const v4, 0x7f110241

    .line 495
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 498
    move-result-object v4

    .line 499
    const v12, 0x7f080679

    .line 502
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 505
    move-result-object v12

    .line 506
    invoke-direct {v1, v4, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 509
    move-object/from16 v4, v28

    .line 511
    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    new-instance v1, Landroid/util/Pair;

    .line 516
    const v12, 0x7f110243

    .line 519
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 522
    move-result-object v12

    .line 523
    const v14, 0x7f080678

    .line 526
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 529
    move-result-object v14

    .line 530
    invoke-direct {v1, v12, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 533
    move-object/from16 v12, v26

    .line 535
    invoke-virtual {v4, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    new-instance v1, Landroid/util/Pair;

    .line 540
    const v12, 0x7f11023e

    .line 543
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 546
    move-result-object v12

    .line 547
    const v14, 0x7f080676

    .line 550
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    move-result-object v14

    .line 554
    invoke-direct {v1, v12, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 557
    invoke-virtual {v4, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    new-instance v1, Landroid/util/Pair;

    .line 562
    const v11, 0x7f110240

    .line 565
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 568
    move-result-object v11

    .line 569
    const v12, 0x7f080677

    .line 572
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 575
    move-result-object v12

    .line 576
    invoke-direct {v1, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 579
    invoke-virtual {v4, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    new-instance v1, Landroid/util/Pair;

    .line 584
    const v11, 0x7f110242

    .line 587
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 590
    move-result-object v11

    .line 591
    const v12, 0x7f08067a

    .line 594
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 597
    move-result-object v12

    .line 598
    invoke-direct {v1, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 601
    invoke-virtual {v4, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const v1, 0x7f110136

    .line 607
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 610
    move-result-object v1

    .line 611
    move-object/from16 v4, v24

    .line 613
    move-object/from16 v11, v31

    .line 615
    invoke-virtual {v4, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const v1, 0x7f110134

    .line 621
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 624
    move-result-object v1

    .line 625
    move-object/from16 v11, v34

    .line 627
    invoke-virtual {v4, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const v1, 0x7f110138

    .line 633
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 636
    move-result-object v1

    .line 637
    move-object/from16 v11, v32

    .line 639
    invoke-virtual {v4, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const v1, 0x7f110133

    .line 645
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 648
    move-result-object v1

    .line 649
    move-object/from16 v11, v33

    .line 651
    invoke-virtual {v4, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const v1, 0x7f11007c

    .line 657
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 660
    move-result-object v11

    .line 661
    invoke-virtual {v4, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const v2, 0x7f11007b

    .line 667
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 670
    move-result-object v4

    .line 671
    move-object/from16 v11, v23

    .line 673
    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 679
    move-result-object v4

    .line 680
    invoke-virtual {v11, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 686
    move-result-object v2

    .line 687
    invoke-virtual {v11, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const v2, 0x7f11007a

    .line 693
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 696
    move-result-object v4

    .line 697
    invoke-virtual {v11, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 703
    move-result-object v4

    .line 704
    move-object/from16 v12, v42

    .line 706
    invoke-virtual {v11, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 712
    move-result-object v2

    .line 713
    move-object/from16 v4, v40

    .line 715
    invoke-virtual {v11, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 721
    move-result-object v2

    .line 722
    invoke-virtual {v11, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 728
    move-result-object v2

    .line 729
    move-object/from16 v13, v38

    .line 731
    invoke-virtual {v11, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 737
    move-result-object v2

    .line 738
    move-object/from16 v14, v43

    .line 740
    invoke-virtual {v11, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 746
    move-result-object v2

    .line 747
    move-object/from16 v15, v44

    .line 749
    invoke-virtual {v11, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 755
    move-result-object v2

    .line 756
    move-object/from16 v23, v9

    .line 758
    move-object/from16 v9, v45

    .line 760
    invoke-virtual {v11, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 766
    move-result-object v1

    .line 767
    move-object/from16 v2, v46

    .line 769
    invoke-virtual {v11, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    if-nez v0, :cond_328

    .line 774
    const/16 v0, 0xb

    .line 776
    new-array v0, v0, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 778
    const/4 v1, 0x0

    .line 779
    aput-object v8, v0, v1

    .line 781
    const/4 v1, 0x1

    .line 782
    aput-object v6, v0, v1

    .line 784
    const/4 v1, 0x2

    .line 785
    aput-object v10, v0, v1

    .line 787
    const/4 v1, 0x3

    .line 788
    aput-object v3, v0, v1

    .line 790
    aput-object v4, v0, v16

    .line 792
    const/4 v1, 0x5

    .line 793
    aput-object v12, v0, v1

    .line 795
    const/4 v1, 0x6

    .line 796
    aput-object v5, v0, v1

    .line 798
    aput-object v13, v0, v25

    .line 800
    aput-object v14, v0, v27

    .line 802
    const/16 v1, 0x9

    .line 804
    aput-object v2, v0, v1

    .line 806
    aput-object v9, v0, v30

    .line 808
    goto :goto_344

    .line 809
    :cond_328
    const/16 v1, 0x9

    .line 811
    new-array v0, v1, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 813
    const/4 v1, 0x0

    .line 814
    aput-object v3, v0, v1

    .line 816
    const/4 v1, 0x1

    .line 817
    aput-object v8, v0, v1

    .line 819
    const/4 v1, 0x2

    .line 820
    aput-object v10, v0, v1

    .line 822
    const/4 v1, 0x3

    .line 823
    aput-object v6, v0, v1

    .line 825
    aput-object v12, v0, v16

    .line 827
    const/4 v1, 0x5

    .line 828
    aput-object v4, v0, v1

    .line 830
    const/4 v1, 0x6

    .line 831
    aput-object v5, v0, v1

    .line 833
    aput-object v13, v0, v25

    .line 835
    aput-object v14, v0, v27

    .line 837
    :goto_344
    sput-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->categoryInfoIndex:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 839
    new-instance v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$1;

    .line 841
    invoke-direct {v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper$1;-><init>()V

    .line 844
    sput-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->NEED_LOAD_DATA:Ljava/util/List;

    .line 846
    new-instance v0, Ljava/util/HashMap;

    .line 848
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 851
    sput-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->sCategoryIcon:Ljava/util/HashMap;

    .line 853
    new-instance v1, Ljava/util/HashMap;

    .line 855
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 858
    sput-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->sCategoryIconPhone:Ljava/util/HashMap;

    .line 860
    const v11, 0x7f080108

    .line 863
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 866
    move-result-object v11

    .line 867
    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const v11, 0x7f08011a

    .line 873
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 876
    move-result-object v11

    .line 877
    invoke-virtual {v0, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const v11, 0x7f08010c

    .line 883
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 886
    move-result-object v11

    .line 887
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const v11, 0x7f0800f8

    .line 893
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 896
    move-result-object v11

    .line 897
    invoke-virtual {v0, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const v11, 0x7f08011e

    .line 903
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 906
    move-result-object v11

    .line 907
    invoke-virtual {v0, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const v11, 0x7f080114

    .line 913
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 916
    move-result-object v11

    .line 917
    invoke-virtual {v0, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const v11, 0x7f0800ed

    .line 923
    move-object/from16 v16, v7

    .line 925
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 928
    move-result-object v7

    .line 929
    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const v7, 0x7f0800f4

    .line 935
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 938
    move-result-object v7

    .line 939
    invoke-virtual {v0, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const v7, 0x7f080100

    .line 945
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 948
    move-result-object v7

    .line 949
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const v7, 0x7f0800fc

    .line 955
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 958
    move-result-object v7

    .line 959
    invoke-virtual {v0, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    const v7, 0x7f080104

    .line 965
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 968
    move-result-object v7

    .line 969
    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const v7, 0x7f080110

    .line 975
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 978
    move-result-object v7

    .line 979
    invoke-virtual {v0, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const v7, 0x7f080116

    .line 985
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 988
    move-result-object v7

    .line 989
    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 995
    move-result-object v7

    .line 996
    move-object/from16 v11, v23

    .line 998
    invoke-virtual {v0, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    const v0, 0x7f080109

    .line 1004
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1007
    move-result-object v0

    .line 1008
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    const v0, 0x7f08011b

    .line 1014
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1017
    move-result-object v0

    .line 1018
    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const v0, 0x7f08010d

    .line 1024
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1027
    move-result-object v0

    .line 1028
    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const v0, 0x7f0800f9

    .line 1034
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1037
    move-result-object v0

    .line 1038
    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    const v0, 0x7f08011f

    .line 1044
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1047
    move-result-object v0

    .line 1048
    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    const v0, 0x7f080115

    .line 1054
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1057
    move-result-object v0

    .line 1058
    move-object/from16 v3, v16

    .line 1060
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const v0, 0x7f0800ee

    .line 1066
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1069
    move-result-object v0

    .line 1070
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    const v0, 0x7f0800f5

    .line 1076
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1079
    move-result-object v0

    .line 1080
    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    const v0, 0x7f080101

    .line 1086
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1089
    move-result-object v0

    .line 1090
    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    const v0, 0x7f080105

    .line 1096
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1099
    move-result-object v0

    .line 1100
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    const v0, 0x7f0800fd

    .line 1106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1109
    move-result-object v0

    .line 1110
    invoke-virtual {v1, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    const v0, 0x7f080111

    .line 1116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1119
    move-result-object v0

    .line 1120
    invoke-virtual {v1, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    const v0, 0x7f080117

    .line 1126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1129
    move-result-object v0

    .line 1130
    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    const v0, 0x7f0800ee

    .line 1136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1139
    move-result-object v0

    .line 1140
    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getFileCategoryString(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, ""

    .line 3
    if-nez p0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$2;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    move-result p0

    .line 12
    aget p0, v1, p0

    .line 14
    packed-switch p0, :pswitch_data_4e

    .line 17
    return-object v0

    .line 18
    :pswitch_11  #0x14
    const-string p0, "installedapp"

    .line 20
    return-object p0

    .line 21
    :pswitch_14  #0x13
    const-string p0, "midrive"

    .line 23
    return-object p0

    .line 24
    :pswitch_17  #0x12
    const-string p0, "remote_manager"

    .line 26
    return-object p0

    .line 27
    :pswitch_1a  #0x11
    const-string p0, "secret_file"

    .line 29
    return-object p0

    .line 30
    :pswitch_1d  #0x10
    const-string p0, "download"

    .line 32
    return-object p0

    .line 33
    :pswitch_20  #0xf
    const-string p0, "mirouter"

    .line 35
    return-object p0

    .line 36
    :pswitch_23  #0xe
    const-string p0, "recent"

    .line 38
    return-object p0

    .line 39
    :pswitch_26  #0xd
    const-string p0, "bluetooth"

    .line 41
    return-object p0

    .line 42
    :pswitch_29  #0xc
    const-string p0, "favorite"

    .line 44
    return-object p0

    .line 45
    :pswitch_2c  #0xb
    const-string p0, "other"

    .line 47
    return-object p0

    .line 48
    :pswitch_2f  #0xa
    const-string p0, "custom"

    .line 50
    return-object p0

    .line 51
    :pswitch_32  #0x9
    const-string p0, "theme"

    .line 53
    return-object p0

    .line 54
    :pswitch_35  #0x8
    const-string p0, "ebook"

    .line 56
    return-object p0

    .line 57
    :pswitch_38  #0x7
    const-string p0, "apk"

    .line 59
    return-object p0

    .line 60
    :pswitch_3b  #0x6
    const-string p0, "zip"

    .line 62
    return-object p0

    .line 63
    :pswitch_3e  #0x5
    const-string p0, "doc"

    .line 65
    return-object p0

    .line 66
    :pswitch_41  #0x4
    const-string p0, "picture"

    .line 68
    return-object p0

    .line 69
    :pswitch_44  #0x3
    const-string p0, "video"

    .line 71
    return-object p0

    .line 72
    :pswitch_47  #0x2
    const-string p0, "music"

    .line 74
    return-object p0

    .line 75
    :pswitch_4a  #0x1
    const-string p0, "error"

    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_4a  #00000001
        :pswitch_47  #00000002
        :pswitch_44  #00000003
        :pswitch_41  #00000004
        :pswitch_3e  #00000005
        :pswitch_3b  #00000006
        :pswitch_38  #00000007
        :pswitch_35  #00000008
        :pswitch_32  #00000009
        :pswitch_2f  #0000000a
        :pswitch_2c  #0000000b
        :pswitch_29  #0000000c
        :pswitch_26  #0000000d
        :pswitch_23  #0000000e
        :pswitch_20  #0000000f
        :pswitch_1d  #00000010
        :pswitch_1a  #00000011
        :pswitch_17  #00000012
        :pswitch_14  #00000013
        :pswitch_11  #00000014
    .end packed-switch
.end method

.method public static getHomeTab()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_14

    .line 10
    new-array v0, v1, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 12
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 14
    aput-object v1, v0, v3

    .line 16
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 18
    aput-object v1, v0, v2

    .line 20
    goto :goto_23

    .line 21
    :cond_14
    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 24
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 26
    aput-object v4, v0, v3

    .line 28
    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 30
    aput-object v3, v0, v2

    .line 32
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->CloudDrive:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 34
    aput-object v2, v0, v1

    .line 36
    :goto_23
    sput-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 38
    return-object v0
.end method


# virtual methods
.method public query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 12

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FileCategoryFactory;->createFileCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/controller/IFileCategoryQuery;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_c

    .line 7
    new-instance p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 9
    invoke-direct {p1}, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;-><init>()V

    .line 12
    return-object p1

    .line 13
    :cond_c
    move-object v1, p1

    .line 14
    move-object v2, p2

    .line 15
    move v3, p3

    .line 16
    move v4, p4

    .line 17
    move v5, p5

    .line 18
    invoke-interface/range {v0 .. v5}, Lcom/android/fileexplorer/controller/IFileCategoryQuery;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public refreshMediaCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 3

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Z)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    return-object p1
.end method

.method public refreshMediaCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Z)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/controller/FileCategoryHelper;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    move-result-object p1

    return-object p1
.end method

.method public transQuery(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;
    .registers 12

    .line 1
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-static {v1}, Lcom/android/fileexplorer/controller/FileCategoryFactory;->createFileCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/controller/IFileCategoryQuery;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_e

    .line 9
    new-instance p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 11
    invoke-direct {p1}, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;-><init>()V

    .line 14
    return-object p1

    .line 15
    :cond_e
    instance-of v2, v0, Lcom/android/fileexplorer/controller/FileTransportedQuery;

    .line 17
    if-nez v2, :cond_18

    .line 19
    new-instance p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 21
    invoke-direct {p1}, Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;-><init>()V

    .line 24
    return-object p1

    .line 25
    :cond_18
    move-object v2, v0

    .line 26
    check-cast v2, Lcom/android/fileexplorer/controller/FileTransportedQuery;

    .line 28
    invoke-virtual {v2, p5}, Lcom/android/fileexplorer/controller/FileTransportedQuery;->setForceAllFilesAsync(Z)V

    .line 31
    move-object v2, p1

    .line 32
    move v3, p2

    .line 33
    move v4, p3

    .line 34
    move v5, p4

    .line 35
    invoke-interface/range {v0 .. v5}, Lcom/android/fileexplorer/controller/IFileCategoryQuery;->query(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;IIZ)Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method
