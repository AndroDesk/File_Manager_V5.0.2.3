.class public Lcom/android/fileexplorer/util/CategoryUtil;
.super Ljava/lang/Object;
.source "CategoryUtil.java"


# static fields
.field public static final CATEGORY_ALL_INDEX:Ljava/lang/String; = "all"

.field public static final CATEGORY_APK_INDEX:Ljava/lang/String; = "apk"

.field public static final CATEGORY_CAMERA_INDEX:Ljava/lang/String; = "camera"

.field public static final CATEGORY_DOCUMENT_INDEX:Ljava/lang/String; = "doc"

.field public static final CATEGORY_FAVORITE_INDEX:Ljava/lang/String; = "favorite"

.field public static final CATEGORY_FILE_DETAIL_INDEX:Ljava/lang/String; = "file_detail"

.field public static final CATEGORY_MIUI_INDEX:Ljava/lang/String; = "miui"

.field public static final CATEGORY_MORE_INDEX:Ljava/lang/String; = "more"

.field public static final CATEGORY_MUSIC_INDEX:Ljava/lang/String; = "music"

.field public static final CATEGORY_NAVIGATOR_BUNDLE_KEY:Ljava/lang/String; = "CATEGORY_NAVIGATOR_BUNDLE_KEY"

.field public static final CATEGORY_PHONE_MAIN_INDEX:Ljava/lang/String; = "phone_main"

.field public static final CATEGORY_PICTURE_INDEX:Ljava/lang/String; = "picture"

.field public static final CATEGORY_RECENT_INDEX:Ljava/lang/String; = "recent"

.field public static final CATEGORY_RECORDER_INDEX:Ljava/lang/String; = "recorder"

.field public static final CATEGORY_SCREENSHOT_INDEX:Ljava/lang/String; = "screenshot"

.field public static final CATEGORY_TRANSFER_INDEX:Ljava/lang/String; = "transfer"

.field public static final CATEGORY_VIDEO_INDEX:Ljava/lang/String; = "video"

.field public static final CATEGORY_WIDGET_CHOOSE_INDEX:Ljava/lang/String; = "widget_choose"

.field public static final CATEGORY_XSPACE_INDEX:Ljava/lang/String; = "xspace"

.field public static final CATEGORY_ZIP_INDEX:Ljava/lang/String; = "zip"

.field public static final DEFAULT_ORDER_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_CATEGORY_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CATEGORY_APP:Ljava/lang/String; = "app"

.field public static final PREFERENCE_ADDED_CATEGORIES:Ljava/lang/String; = "added_categories"

.field public static final PREFERENCE_ALL_CATEGORIES:Ljava/lang/String; = "all_categories"

.field public static final PREF_NAME:Ljava/lang/String; = "settings_prefs"

.field public static final RECORDER_APP:Ljava/lang/String; = "com.android.soundrecorder"

.field public static final SEARCH_CATEGORY_FOLDER:Ljava/lang/String; = "folder"

.field public static final TABS:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public static mAppInfoDataUtils:Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

.field public static mCategoryMore:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

.field public static recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

.field public static xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;


# direct methods
.method public static constructor <clinit>()V
    .registers 21

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    const-string v1, "doc"

    .line 5
    const-string v2, "picture"

    .line 7
    const-string v3, "video"

    .line 9
    const-string v4, "music"

    .line 11
    const-string v5, "zip"

    .line 13
    const-string v6, "apk"

    .line 15
    const-string v7, "transfer"

    .line 17
    const-string v8, "favorite"

    .line 19
    const-string v9, "screenshot"

    .line 21
    const-string v10, "camera"

    .line 23
    const-string v11, "recorder"

    .line 25
    const-string v12, "xspace"

    .line 27
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    sput-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->DEFAULT_ORDER_LIST:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

    .line 42
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;-><init>()V

    .line 45
    sput-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->mAppInfoDataUtils:Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

    .line 47
    new-instance v0, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 49
    const-string v1, "more"

    .line 51
    const v2, 0x7f11006f

    .line 54
    const v3, 0x7f0801fd

    .line 57
    const v4, 0x7f0801fe

    .line 60
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;III)V

    .line 63
    sput-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->mCategoryMore:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    .line 67
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    sput-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    .line 72
    new-instance v7, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 74
    const-string v2, "doc"

    .line 76
    const v3, 0x7f110066

    .line 79
    const v4, 0x7f0801f7

    .line 82
    const v5, 0x7f0801f8

    .line 85
    const/16 v6, 0x3eb

    .line 87
    move-object v1, v7

    .line 88
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    .line 91
    const-string v1, "doc"

    .line 93
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 98
    const-string v9, "picture"

    .line 100
    const v10, 0x7f110073

    .line 103
    const v11, 0x7f080201

    .line 106
    const v12, 0x7f080202

    .line 109
    const/16 v13, 0x3ec

    .line 111
    move-object v8, v1

    .line 112
    invoke-direct/range {v8 .. v13}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    .line 115
    const-string v2, "picture"

    .line 117
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 122
    const-string v4, "video"

    .line 124
    const v5, 0x7f11007d

    .line 127
    const v6, 0x7f080209

    .line 130
    const v7, 0x7f08020a

    .line 133
    const/16 v8, 0x3ed

    .line 135
    move-object v3, v1

    .line 136
    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    .line 139
    const-string v2, "video"

    .line 141
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 146
    const-string v4, "music"

    .line 148
    const v5, 0x7f110070

    .line 151
    const v6, 0x7f0801ff

    .line 154
    const v7, 0x7f080200

    .line 157
    const/16 v8, 0x3ee

    .line 159
    move-object v3, v1

    .line 160
    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    .line 163
    const-string v2, "music"

    .line 165
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 170
    const-string v4, "zip"

    .line 172
    const v5, 0x7f11007f

    .line 175
    const v6, 0x7f08020d

    .line 178
    const v7, 0x7f08020e

    .line 181
    const/16 v8, 0x3ef

    .line 183
    move-object v3, v1

    .line 184
    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    .line 187
    const-string v2, "zip"

    .line 189
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 194
    const-string v4, "apk"

    .line 196
    const v5, 0x7f110063

    .line 199
    const v6, 0x7f0801f2

    .line 202
    const v7, 0x7f0801f3

    .line 205
    const/16 v8, 0x3f0

    .line 207
    move-object v3, v1

    .line 208
    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    .line 211
    const-string v2, "apk"

    .line 213
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 218
    const-string v4, "transfer"

    .line 220
    const v5, 0x7f110453

    .line 223
    const v6, 0x7f080207

    .line 226
    const v7, 0x7f080208

    .line 229
    const/16 v8, 0x3f1

    .line 231
    move-object v3, v1

    .line 232
    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    .line 235
    const-string v2, "transfer"

    .line 237
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 242
    const-string v4, "favorite"

    .line 244
    const v5, 0x7f11006a

    .line 247
    const v6, 0x7f0801f9

    .line 250
    const v7, 0x7f0801fa

    .line 253
    const/16 v8, 0x3f2

    .line 255
    move-object v3, v1

    .line 256
    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    .line 259
    const-string v2, "favorite"

    .line 261
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 266
    const-string v4, "screenshot"

    .line 268
    const v5, 0x7f11003d

    .line 271
    const v6, 0x7f080205

    .line 274
    const v7, 0x7f080206

    .line 277
    const/16 v8, 0x3f3

    .line 279
    move-object v3, v1

    .line 280
    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    .line 283
    new-instance v2, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 285
    const-wide/16 v3, 0x0

    .line 287
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 290
    move-result-object v6

    .line 291
    const v3, 0x7f11003d

    .line 294
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 297
    move-result-object v12

    .line 298
    const-string v11, "com.xlredapple.screenshot"

    .line 300
    const-string v13, ""

    .line 302
    const/4 v14, 0x0

    .line 303
    move-object v9, v2

    .line 304
    move-object v10, v6

    .line 305
    invoke-direct/range {v9 .. v14}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 308
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->setAppTag(Lcom/android/fileexplorer/dao/file/AppTag;)V

    .line 311
    new-instance v2, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 313
    const-string v16, "camera"

    .line 315
    const v17, 0x7f110034

    .line 318
    const v18, 0x7f0801f4

    .line 321
    const v19, 0x7f0801f5

    .line 324
    const/16 v20, 0x3f5

    .line 326
    move-object v15, v2

    .line 327
    invoke-direct/range {v15 .. v20}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    .line 330
    new-instance v3, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 332
    const v4, 0x7f110034

    .line 335
    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 338
    move-result-object v8

    .line 339
    const-string v7, "com.xlredapple.camera"

    .line 341
    const-string v9, ""

    .line 343
    const/4 v10, 0x0

    .line 344
    move-object v5, v3

    .line 345
    invoke-direct/range {v5 .. v10}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 348
    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->setAppTag(Lcom/android/fileexplorer/dao/file/AppTag;)V

    .line 351
    new-instance v3, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 353
    const-string v12, "recorder"

    .line 355
    const v13, 0x7f11003c

    .line 358
    const v14, 0x7f080203

    .line 361
    const v15, 0x7f080204

    .line 364
    const/16 v16, 0x3f6

    .line 366
    move-object v11, v3

    .line 367
    invoke-direct/range {v11 .. v16}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    .line 370
    sput-object v3, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 372
    new-instance v3, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 374
    const-string v5, "xspace"

    .line 376
    const v6, 0x7f110154

    .line 379
    const v7, 0x7f08020b

    .line 382
    const v8, 0x7f08020c

    .line 385
    const/16 v9, 0x3f7

    .line 387
    move-object v4, v3

    .line 388
    invoke-direct/range {v4 .. v9}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;IIII)V

    .line 391
    sput-object v3, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 393
    const-string v3, "screenshot"

    .line 395
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v1, "camera"

    .line 400
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 405
    const-string v2, "recorder"

    .line 407
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 412
    const-string v2, "xspace"

    .line 414
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const/4 v0, 0x6

    .line 418
    new-array v0, v0, [Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 420
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 422
    const/4 v2, 0x0

    .line 423
    aput-object v1, v0, v2

    .line 425
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 427
    const/4 v2, 0x1

    .line 428
    aput-object v1, v0, v2

    .line 430
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 432
    const/4 v2, 0x2

    .line 433
    aput-object v1, v0, v2

    .line 435
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 437
    const/4 v2, 0x3

    .line 438
    aput-object v1, v0, v2

    .line 440
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 442
    const/4 v2, 0x4

    .line 443
    aput-object v1, v0, v2

    .line 445
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 447
    const/4 v2, 0x5

    .line 448
    aput-object v1, v0, v2

    .line 450
    sput-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->TABS:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 452
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_28

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_b

    .line 11
    goto :goto_28

    .line 12
    :cond_b
    if-eqz p1, :cond_27

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_14

    .line 20
    goto :goto_27

    .line 21
    :cond_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    move-result v2

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 28
    move-result v3

    .line 29
    if-ne v2, v3, :cond_25

    .line 31
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_25

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move v0, v1

    .line 39
    :goto_26
    return v0

    .line 40
    :cond_27
    :goto_27
    return v1

    .line 41
    :cond_28
    :goto_28
    if-eqz p1, :cond_32

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_31

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v0, v1

    .line 51
    :cond_32
    :goto_32
    return v0
.end method

.method public static getAddedCategories()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAddedCategoriesFromSP()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_f

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getDefaultAddedCategories()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    array-length v2, v0

    .line 28
    if-gtz v2, :cond_22

    .line 30
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getDefaultAddedCategories()Ljava/util/List;

    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_22
    array-length v2, v0

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_24
    if-ge v3, v2, :cond_65

    .line 39
    aget-object v10, v0, v3

    .line 41
    const-string v4, "miui"

    .line 43
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_31

    .line 49
    goto :goto_62

    .line 50
    :cond_31
    sget-object v4, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    .line 52
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 58
    if-eqz v4, :cond_3f

    .line 60
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_62

    .line 64
    :cond_3f
    invoke-static {v10}, Lcom/android/fileexplorer/util/CategoryUtil;->getAppNameByPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v7

    .line 68
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_4a

    .line 74
    goto :goto_62

    .line 75
    :cond_4a
    new-instance v11, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 77
    new-instance v12, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 79
    const-wide/16 v4, 0x0

    .line 81
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    move-result-object v5

    .line 85
    const/4 v9, 0x0

    .line 86
    const-string v8, ""

    .line 88
    move-object v4, v12

    .line 89
    move-object v6, v10

    .line 90
    invoke-direct/range {v4 .. v9}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    invoke-direct {v11, v10, v12}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/dao/file/AppTag;)V

    .line 96
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :goto_62
    add-int/lit8 v3, v3, 0x1

    .line 101
    goto :goto_24

    .line 102
    :cond_65
    return-object v1
.end method

.method private static getAddedCategoriesFromSP()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "settings_prefs"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "added_categories"

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getAllCategories()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAllCategoriesFromSP()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_f

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getDefaultCategories()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    array-length v2, v0

    .line 28
    if-gtz v2, :cond_22

    .line 30
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getDefaultCategories()Ljava/util/List;

    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_22
    const/16 v2, 0xbb9

    .line 37
    array-length v3, v0

    .line 38
    const/4 v4, 0x0

    .line 39
    :goto_26
    if-ge v4, v3, :cond_69

    .line 41
    aget-object v11, v0, v4

    .line 43
    sget-object v5, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    .line 45
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 51
    const-string v6, "miui"

    .line 53
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_3b

    .line 59
    goto :goto_66

    .line 60
    :cond_3b
    if-eqz v5, :cond_41

    .line 62
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_66

    .line 66
    :cond_41
    invoke-static {v11}, Lcom/android/fileexplorer/util/CategoryUtil;->getAppNameByPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v8

    .line 70
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_4c

    .line 76
    goto :goto_66

    .line 77
    :cond_4c
    new-instance v12, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 79
    new-instance v13, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 81
    const-wide/16 v5, 0x0

    .line 83
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    move-result-object v6

    .line 87
    const/4 v10, 0x0

    .line 88
    const-string v9, ""

    .line 90
    move-object v5, v13

    .line 91
    move-object v7, v11

    .line 92
    invoke-direct/range {v5 .. v10}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    invoke-direct {v12, v11, v13, v2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/dao/file/AppTag;I)V

    .line 98
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 103
    :goto_66
    add-int/lit8 v4, v4, 0x1

    .line 105
    goto :goto_26

    .line 106
    :cond_69
    return-object v1
.end method

.method private static getAllCategoriesFromSP()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "settings_prefs"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "all_categories"

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getAppNameByPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    sget-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->mAppInfoDataUtils:Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;

    .line 11
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;->getAppNameByPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_19

    .line 21
    invoke-static {p0, v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_19
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x0

    .line 39
    :try_start_26
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 42
    move-result-object p0

    .line 43
    if-nez p0, :cond_2d

    .line 45
    return-object v1

    .line 46
    :cond_2d
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_37} :catch_38

    .line 56
    return-object p0

    .line 57
    :catch_38
    return-object v1
.end method

.method public static getCategoryNameByIndex(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 9
    if-nez p1, :cond_d

    .line 11
    const-string p0, ""

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    :goto_11
    return-object p0
.end method

.method private static getDefaultAddedCategories()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    const/4 v2, 0x4

    .line 8
    if-ge v1, v2, :cond_1d

    .line 10
    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    .line 12
    sget-object v3, Lcom/android/fileexplorer/util/CategoryUtil;->DEFAULT_ORDER_LIST:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_6

    .line 30
    :cond_1d
    return-object v0
.end method

.method private static getDefaultCategories()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 12
    move-result v3

    .line 13
    if-ge v1, v3, :cond_39

    .line 15
    sget-object v3, Lcom/android/fileexplorer/util/CategoryUtil;->DEFAULT_ORDER_LIST:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 21
    const-string v5, "recorder"

    .line 23
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_36

    .line 29
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 33
    const-string v5, "xspace"

    .line 35
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_29

    .line 41
    goto :goto_36

    .line 42
    :cond_29
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_6

    .line 58
    :cond_39
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->isXSpaceEnable()Z

    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_45

    .line 64
    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    goto :goto_52

    .line 70
    :cond_45
    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_52

    .line 78
    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_52
    :goto_52
    const-string v1, "com.android.soundrecorder"

    .line 85
    invoke-static {v1}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_60

    .line 91
    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    goto :goto_6d

    .line 97
    :cond_60
    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_6d

    .line 105
    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_6d
    :goto_6d
    return-object v0
.end method

.method public static getFileCategoyByIndex(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->DEFAULT_ORDER_LIST:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 6
    move-result p0

    .line 7
    sget-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->TABS:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 9
    aget-object p0, v0, p0

    .line 11
    return-object p0
.end method

.method public static getFixedSearchTagList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    const/4 v2, 0x6

    .line 8
    if-ge v1, v2, :cond_21

    .line 10
    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    .line 12
    sget-object v3, Lcom/android/fileexplorer/util/CategoryUtil;->DEFAULT_ORDER_LIST:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 24
    invoke-static {v2}, Lcom/android/fileexplorer/util/CategoryUtil;->transFileEntityToAppTag(Lcom/android/fileexplorer/model/category/FileCategoryEntity;)Lcom/android/fileexplorer/dao/file/AppTag;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_6

    .line 34
    :cond_21
    new-instance v1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 36
    const-wide/16 v2, 0x0

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    move-result-object v3

    .line 42
    const v2, 0x7f1103a9

    .line 45
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v5

    .line 49
    const/4 v7, 0x0

    .line 50
    const-string v4, "folder"

    .line 52
    const-string v6, ""

    .line 54
    move-object v2, v1

    .line 55
    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-object v0
.end method

.method public static getFragmentNameByTag(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_126

    .line 12
    goto/16 :goto_9c

    .line 14
    :sswitch_d
    const-string v0, "transfer"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_17

    .line 22
    goto/16 :goto_9c

    .line 24
    :cond_17
    const/16 v1, 0xb

    .line 26
    goto/16 :goto_9c

    .line 28
    :sswitch_1b
    const-string v0, "favorite"

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_25

    .line 36
    goto/16 :goto_9c

    .line 38
    :cond_25
    const/16 v1, 0xa

    .line 40
    goto/16 :goto_9c

    .line 42
    :sswitch_29
    const-string v0, "video"

    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_33

    .line 50
    goto/16 :goto_9c

    .line 52
    :cond_33
    const/16 v1, 0x9

    .line 54
    goto/16 :goto_9c

    .line 56
    :sswitch_37
    const-string v0, "music"

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_41

    .line 64
    goto/16 :goto_9c

    .line 66
    :cond_41
    const/16 v1, 0x8

    .line 68
    goto/16 :goto_9c

    .line 70
    :sswitch_45
    const-string v0, "more"

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_4e

    .line 78
    goto :goto_9c

    .line 79
    :cond_4e
    const/4 v1, 0x7

    .line 80
    goto :goto_9c

    .line 81
    :sswitch_50
    const-string v0, "zip"

    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result p0

    .line 87
    if-nez p0, :cond_59

    .line 89
    goto :goto_9c

    .line 90
    :cond_59
    const/4 v1, 0x6

    .line 91
    goto :goto_9c

    .line 92
    :sswitch_5b
    const-string v0, "doc"

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result p0

    .line 98
    if-nez p0, :cond_64

    .line 100
    goto :goto_9c

    .line 101
    :cond_64
    const/4 v1, 0x5

    .line 102
    goto :goto_9c

    .line 103
    :sswitch_66
    const-string v0, "apk"

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result p0

    .line 109
    if-nez p0, :cond_6f

    .line 111
    goto :goto_9c

    .line 112
    :cond_6f
    const/4 v1, 0x4

    .line 113
    goto :goto_9c

    .line 114
    :sswitch_71
    const-string v0, "all"

    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result p0

    .line 120
    if-nez p0, :cond_7a

    .line 122
    goto :goto_9c

    .line 123
    :cond_7a
    const/4 v1, 0x3

    .line 124
    goto :goto_9c

    .line 125
    :sswitch_7c
    const-string v0, "picture"

    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result p0

    .line 131
    if-nez p0, :cond_85

    .line 133
    goto :goto_9c

    .line 134
    :cond_85
    const/4 v1, 0x2

    .line 135
    goto :goto_9c

    .line 136
    :sswitch_87
    const-string v0, "xspace"

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result p0

    .line 142
    if-nez p0, :cond_90

    .line 144
    goto :goto_9c

    .line 145
    :cond_90
    const/4 v1, 0x1

    .line 146
    goto :goto_9c

    .line 147
    :sswitch_92
    const-string v0, "recorder"

    .line 149
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result p0

    .line 153
    if-nez p0, :cond_9b

    .line 155
    goto :goto_9c

    .line 156
    :cond_9b
    const/4 v1, 0x0

    .line 157
    :goto_9c
    const-string p0, "app"

    .line 159
    packed-switch v1, :pswitch_data_158

    .line 162
    if-eqz p1, :cond_a6

    .line 164
    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;

    .line 166
    goto :goto_a8

    .line 167
    :cond_a6
    const-class p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    .line 169
    :goto_a8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 172
    move-result-object p0

    .line 173
    return-object p0

    .line 174
    :pswitch_ad  #0xb
    if-eqz p1, :cond_b2

    .line 176
    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadTransferCategoryFragment;

    .line 178
    goto :goto_b4

    .line 179
    :cond_b2
    const-class p0, Lcom/android/fileexplorer/fragment/category/TransferCategoryFragment;

    .line 181
    :goto_b4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 184
    move-result-object p0

    .line 185
    return-object p0

    .line 186
    :pswitch_b9  #0xa
    if-eqz p1, :cond_be

    .line 188
    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadFavoriteCategoryFragment;

    .line 190
    goto :goto_c0

    .line 191
    :cond_be
    const-class p0, Lcom/android/fileexplorer/fragment/category/FavoriteCategoryFragment;

    .line 193
    :goto_c0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 196
    move-result-object p0

    .line 197
    return-object p0

    .line 198
    :pswitch_c5  #0x9
    if-eqz p1, :cond_ca

    .line 200
    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;

    .line 202
    goto :goto_cc

    .line 203
    :cond_ca
    const-class p0, Lcom/android/fileexplorer/fragment/category/VideoCategoryFragment;

    .line 205
    :goto_cc
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 208
    move-result-object p0

    .line 209
    return-object p0

    .line 210
    :pswitch_d1  #0x8
    if-eqz p1, :cond_d6

    .line 212
    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;

    .line 214
    goto :goto_d8

    .line 215
    :cond_d6
    const-class p0, Lcom/android/fileexplorer/fragment/category/MusicCategoryFragment;

    .line 217
    :goto_d8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 220
    move-result-object p0

    .line 221
    return-object p0

    .line 222
    :pswitch_dd  #0x7
    if-eqz p1, :cond_e2

    .line 224
    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;

    .line 226
    goto :goto_e4

    .line 227
    :cond_e2
    const-class p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    .line 229
    :goto_e4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 232
    move-result-object p0

    .line 233
    return-object p0

    .line 234
    :pswitch_e9  #0x6
    if-eqz p1, :cond_ee

    .line 236
    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadZipCategoryFragment;

    .line 238
    goto :goto_f0

    .line 239
    :cond_ee
    const-class p0, Lcom/android/fileexplorer/fragment/category/ZipCategoryFragment;

    .line 241
    :goto_f0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 244
    move-result-object p0

    .line 245
    return-object p0

    .line 246
    :pswitch_f5  #0x5
    if-eqz p1, :cond_fa

    .line 248
    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    .line 250
    goto :goto_fc

    .line 251
    :cond_fa
    const-class p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    .line 253
    :goto_fc
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 256
    move-result-object p0

    .line 257
    return-object p0

    .line 258
    :pswitch_101  #0x4
    if-eqz p1, :cond_106

    .line 260
    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadApkCategoryFragment;

    .line 262
    goto :goto_108

    .line 263
    :cond_106
    const-class p0, Lcom/android/fileexplorer/fragment/category/ApkCategoryFragment;

    .line 265
    :goto_108
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 268
    move-result-object p0

    .line 269
    return-object p0

    .line 270
    :pswitch_10d  #0x3
    if-eqz p1, :cond_112

    .line 272
    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadFileFragment;

    .line 274
    goto :goto_114

    .line 275
    :cond_112
    const-class p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 277
    :goto_114
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 280
    move-result-object p0

    .line 281
    return-object p0

    .line 282
    :pswitch_119  #0x2
    if-eqz p1, :cond_11e

    .line 284
    const-class p0, Lcom/android/fileexplorer/pad/fragment/PadPictureCategoryFragment;

    .line 286
    goto :goto_120

    .line 287
    :cond_11e
    const-class p0, Lcom/android/fileexplorer/fragment/category/PictureCategoryFragment;

    .line 289
    :goto_120
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 292
    move-result-object p0

    .line 293
    :pswitch_124  #0x0, 0x1
    return-object p0

    .line 294
    nop

    .line 295
    :sswitch_data_126
    .sparse-switch
        -0x2fa35742 -> :sswitch_92
        -0x2cb18472 -> :sswitch_87
        -0x226fa302 -> :sswitch_7c
        0x179a1 -> :sswitch_71
        0x17a1c -> :sswitch_66
        0x18538 -> :sswitch_5b
        0x1d721 -> :sswitch_50
        0x333b55 -> :sswitch_45
        0x636ee25 -> :sswitch_37
        0x6b0147b -> :sswitch_29
        0x3ea1c99c -> :sswitch_1b
        0x4c58b7eb -> :sswitch_d
    .end sparse-switch

    .line 345
    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_124  #00000000
        :pswitch_124  #00000001
        :pswitch_119  #00000002
        :pswitch_10d  #00000003
        :pswitch_101  #00000004
        :pswitch_f5  #00000005
        :pswitch_e9  #00000006
        :pswitch_dd  #00000007
        :pswitch_d1  #00000008
        :pswitch_c5  #00000009
        :pswitch_b9  #0000000a
        :pswitch_ad  #0000000b
    .end packed-switch
.end method

.method public static getHomeDisplayCategories(Z)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAllCategories()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    if-eqz p0, :cond_b

    .line 7
    sget-object p0, Lcom/android/fileexplorer/util/CategoryUtil;->mCategoryMore:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 9
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_b
    return-object v0
.end method

.method public static getNotAddedCategories()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAddedCategories()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    .line 12
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v2

    .line 20
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_44

    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 32
    if-eqz v0, :cond_13

    .line 34
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_13

    .line 40
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    const-string v5, "recorder"

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_13

    .line 52
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    const-string v5, "xspace"

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_40

    .line 64
    goto :goto_13

    .line 65
    :cond_40
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_13

    .line 69
    :cond_44
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->isXSpaceEnable()Z

    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_50

    .line 75
    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 77
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 80
    goto :goto_5d

    .line 81
    :cond_50
    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 83
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_5d

    .line 89
    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->xSpaceTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 91
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_5d
    :goto_5d
    const-string v2, "com.android.soundrecorder"

    .line 96
    invoke-static {v2}, Lcom/android/fileexplorer/util/AppUtils;->hasInstalledApp(Ljava/lang/String;)Z

    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_6b

    .line 102
    sget-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 104
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    goto :goto_78

    .line 108
    :cond_6b
    sget-object v2, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 110
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_78

    .line 116
    sget-object v0, Lcom/android/fileexplorer/util/CategoryUtil;->recorderTag:Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 118
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_78
    :goto_78
    return-object v1
.end method

.method public static getWidgetChooseEntries()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/util/CategoryUtil;->INDEX_CATEGORY_MAP:Ljava/util/HashMap;

    .line 8
    const-string v2, "doc"

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    const-string v2, "picture"

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v2, "video"

    .line 28
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v2, "music"

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v2, "zip"

    .line 46
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v2, "apk"

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-object v0
.end method

.method public static makeAppTagByPackage(Ljava/lang/String;)Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 8

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/CategoryUtil;->getAppNameByPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v3

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_c
    new-instance v6, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 15
    const-wide/16 v0, 0x0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    move-result-object v1

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v4, ""

    .line 24
    move-object v0, v6

    .line 25
    move-object v2, p0

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    return-object v6
.end method

.method public static pareEntryEntity(Lcom/android/fileexplorer/model/StorageFileInfo;Lcom/android/fileexplorer/model/StorageInfo;Landroid/content/Context;)Lcom/android/fileexplorer/model/FileEntryEntity;
    .registers 7

    .line 1
    if-eqz p0, :cond_9c

    .line 3
    if-eqz p1, :cond_9c

    .line 5
    if-nez p2, :cond_8

    .line 7
    goto/16 :goto_9c

    .line 9
    :cond_8
    new-instance v0, Lcom/android/fileexplorer/model/FileEntryEntity;

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getState()Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/model/FileEntryEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isSd()Z

    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageInfo;->setSd(Z)V

    .line 33
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageInfo;->setUsb(Z)V

    .line 40
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isXspace()Z

    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageInfo;->setXspace(Z)V

    .line 47
    iget-wide v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 49
    iput-wide v1, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->fileSize:J

    .line 51
    iget-wide v1, p0, Lcom/android/fileexplorer/model/StorageFileInfo;->availableSize:J

    .line 53
    iput-wide v1, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->availableSize:J

    .line 55
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isPrimaryVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_51

    .line 65
    const/4 p0, 0x1

    .line 66
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/StorageInfo;->setPrimary(Z)V

    .line 69
    iput p0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->index:I

    .line 71
    const p0, 0x7f110153

    .line 74
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    .line 81
    goto :goto_9b

    .line 82
    :cond_51
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isXspace()Z

    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_6a

    .line 88
    const p0, 0x7f0802a6

    .line 91
    iput p0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->icon:I

    .line 93
    const/4 p0, 0x2

    .line 94
    iput p0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->index:I

    .line 96
    const p0, 0x7f110154

    .line 99
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    .line 106
    goto :goto_9b

    .line 107
    :cond_6a
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_83

    .line 113
    const p0, 0x7f080123

    .line 116
    iput p0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->icon:I

    .line 118
    const/4 p0, 0x3

    .line 119
    iput p0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->index:I

    .line 121
    const p0, 0x7f110155

    .line 124
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    .line 131
    goto :goto_9b

    .line 132
    :cond_83
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isSd()Z

    .line 135
    move-result p0

    .line 136
    if-eqz p0, :cond_9b

    .line 138
    const p0, 0x7f080281

    .line 141
    iput p0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->icon:I

    .line 143
    const/4 p0, 0x4

    .line 144
    iput p0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;->index:I

    .line 146
    const p0, 0x7f110404

    .line 149
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    .line 156
    :cond_9b
    :goto_9b
    return-object v0

    .line 157
    :cond_9c
    :goto_9c
    const/4 p0, 0x0

    .line 158
    return-object p0
.end method

.method public static saveAddedCategoriesToSP(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "settings_prefs"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "added_categories"

    .line 18
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    return-void
.end method

.method public static saveAllCategoriesToSP(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "settings_prefs"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "all_categories"

    .line 18
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    return-void
.end method

.method public static transAppDataToCategory(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p0, :cond_60

    .line 8
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_e

    .line 14
    goto :goto_60

    .line 15
    :cond_e
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAllCategoriesFromSP()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_2c

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    const-string v3, ","

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    :cond_2c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p0

    .line 49
    const/16 v1, 0xbb9

    .line 51
    :cond_32
    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_60

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 63
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->isSystemApp(Ljava/lang/String;)Z

    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_32

    .line 73
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result v5

    .line 77
    if-lez v5, :cond_55

    .line 79
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_55

    .line 85
    goto :goto_32

    .line 86
    :cond_55
    new-instance v5, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 88
    invoke-direct {v5, v4, v3, v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/dao/file/AppTag;I)V

    .line 91
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 96
    goto :goto_32

    .line 97
    :cond_60
    :goto_60
    return-object v0
.end method

.method public static transAppDataToNotAddedCategory(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/AppTag;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p0, :cond_5c

    .line 8
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_e

    .line 14
    goto :goto_5c

    .line 15
    :cond_e
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getAddedCategoriesFromSP()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_2c

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    const-string v3, ","

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    :cond_2c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p0

    .line 49
    :cond_30
    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_5c

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 61
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    invoke-static {v3}, Lcom/android/fileexplorer/apptag/FileUtils;->isSystemApp(Ljava/lang/String;)Z

    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_30

    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result v4

    .line 75
    if-lez v4, :cond_53

    .line 77
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_53

    .line 83
    goto :goto_30

    .line 84
    :cond_53
    new-instance v4, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 86
    invoke-direct {v4, v3, v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;-><init>(Ljava/lang/String;Lcom/android/fileexplorer/dao/file/AppTag;)V

    .line 89
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_30

    .line 93
    :cond_5c
    :goto_5c
    return-object v0
.end method

.method public static transCategoryListToNavigateList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_20

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 22
    if-nez v1, :cond_18

    .line 24
    goto :goto_9

    .line 25
    :cond_18
    invoke-static {p0, v1}, Lcom/android/fileexplorer/util/CategoryUtil;->transCategoryToNavigateItem(Landroid/content/Context;Lcom/android/fileexplorer/model/category/FileCategoryEntity;)Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    goto :goto_9

    .line 33
    :cond_20
    return-object v0
.end method

.method private static transCategoryToNavigateItem(Landroid/content/Context;Lcom/android/fileexplorer/model/category/FileCategoryEntity;)Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;
    .registers 10

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/CategoryUtil;->getFragmentNameByTag(Ljava/lang/String;Z)Ljava/lang/String;

    .line 9
    move-result-object v6

    .line 10
    const-class v0, Lcom/android/fileexplorer/pad/fragment/PadAppCategoryFragment;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x2

    .line 21
    if-eqz v0, :cond_4a

    .line 23
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    .line 26
    move-result-object v0

    .line 27
    new-instance v7, Landroid/os/Bundle;

    .line 29
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 32
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    const-string v3, "app"

    .line 36
    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 39
    const-string v2, "app_tag"

    .line 41
    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 44
    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_36

    .line 54
    goto :goto_3a

    .line 55
    :cond_36
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    :goto_3a
    move-object v5, p0

    .line 60
    new-instance p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 62
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIconRes(I)I

    .line 65
    move-result v3

    .line 66
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    move-object v2, p0

    .line 71
    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 74
    return-object p0

    .line 75
    :cond_4a
    new-instance p0, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;

    .line 77
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIconRes(I)I

    .line 80
    move-result v0

    .line 81
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitleRes()I

    .line 88
    move-result p1

    .line 89
    invoke-direct {p0, v0, v1, p1, v6}, Lcom/android/fileexplorer/pad/recyclerview/model/NavigateItem;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 92
    return-object p0
.end method

.method private static transFileEntityToAppTag(Lcom/android/fileexplorer/model/category/FileCategoryEntity;)Lcom/android/fileexplorer/dao/file/AppTag;
    .registers 8

    .line 1
    new-instance v6, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 3
    const-wide/16 v0, 0x0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitleRes()I

    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v0, v6

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/dao/file/AppTag;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    return-object v6
.end method
