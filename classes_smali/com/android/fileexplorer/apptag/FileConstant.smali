.class public Lcom/android/fileexplorer/apptag/FileConstant;
.super Ljava/lang/Object;
.source "FileConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/apptag/FileConstant$SortMethod;,
        Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;
    }
.end annotation


# static fields
.field public static final FILE_CATEGORY_APK:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_AUDIO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_DOC:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_EBOOK:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_PHOTO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_THEME:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_VIDEO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_WECHAT_APK:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_CATEGORY_ZIP:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_FORMAT_MP4:Ljava/lang/String; = "mp4"

.field public static final FILE_ID_NO_THUMBNAIL:J = -0x1L

.field public static final FILE_NOMEDIA:Ljava/lang/String; = ".nomedia"

.field public static final FILE_OCR_STATUS_NONE:I = 0x0

.field public static final FILE_TYPE_LOOK_UP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static IGNORE_EXT_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_TIME_UNLIMIT:I = -0x1

.field public static final SUPPORT_APK_FORMAT:[Ljava/lang/String;

.field public static final SUPPORT_AUDIO_FORMAT:[Ljava/lang/String;

.field private static final SUPPORT_DOC_FORMAT:[Ljava/lang/String;

.field public static final SUPPORT_FILE_FORMAT:[Ljava/lang/String;

.field public static final SUPPORT_PHOTO_FORMAT:[Ljava/lang/String;

.field public static final SUPPORT_VIDEO_FORMAT:[Ljava/lang/String;

.field private static final SUPPORT_WECHAT_APK_FORMAT:[Ljava/lang/String;

.field public static final SUPPORT_ZIP_FORMAT:[Ljava/lang/String;

.field public static final VIDEO_MTS:Ljava/lang/String; = "mts"


# direct methods
.method public static constructor <clinit>()V
    .registers 18

    .line 1
    const-string v0, "mp4"

    .line 3
    const-string v1, "wmv"

    .line 5
    const-string v2, "mpeg"

    .line 7
    const-string v3, "m4v"

    .line 9
    const-string v4, "3gp"

    .line 11
    const-string v5, "3g2"

    .line 13
    const-string v6, "3gpp2"

    .line 15
    const-string v7, "asf"

    .line 17
    const-string v8, "flv"

    .line 19
    const-string v9, "mkv"

    .line 21
    const-string v10, "vob"

    .line 23
    const-string v11, "ts"

    .line 25
    const-string v12, "f4v"

    .line 27
    const-string v13, "rm"

    .line 29
    const-string v14, "mov"

    .line 31
    const-string v15, "rmvb"

    .line 33
    const-string v16, "movie"

    .line 35
    const-string v17, "dv"

    .line 37
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_VIDEO_FORMAT:[Ljava/lang/String;

    .line 43
    const-string v1, "mp3"

    .line 45
    const-string v2, "wma"

    .line 47
    const-string v3, "wav"

    .line 49
    const-string v4, "aac"

    .line 51
    const-string v5, "ape"

    .line 53
    const-string v6, "flac"

    .line 55
    const-string v7, "m4a"

    .line 57
    const-string v8, "ogg"

    .line 59
    const-string v9, "mid"

    .line 61
    const-string v10, "amr"

    .line 63
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    sput-object v1, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_AUDIO_FORMAT:[Ljava/lang/String;

    .line 69
    const-string v2, "apk"

    .line 71
    filled-new-array {v2}, [Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    sput-object v2, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_APK_FORMAT:[Ljava/lang/String;

    .line 77
    const-string v3, "1"

    .line 79
    filled-new-array {v3}, [Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    sput-object v3, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_WECHAT_APK_FORMAT:[Ljava/lang/String;

    .line 85
    const-string v4, "doc"

    .line 87
    const-string v5, "docx"

    .line 89
    const-string v6, "wps"

    .line 91
    const-string v7, "xls"

    .line 93
    const-string v8, "xlsx"

    .line 95
    const-string v9, "et"

    .line 97
    const-string v10, "ett"

    .line 99
    const-string v11, "ppt"

    .line 101
    const-string v12, "pptx"

    .line 103
    const-string v13, "pps"

    .line 105
    const-string v14, "ppsx"

    .line 107
    const-string v15, "dps"

    .line 109
    const-string v16, "rtf"

    .line 111
    const-string v17, "pdf"

    .line 113
    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    .line 116
    move-result-object v4

    .line 117
    sput-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_DOC_FORMAT:[Ljava/lang/String;

    .line 119
    const-string v5, "jpg"

    .line 121
    const-string v6, "jpeg"

    .line 123
    const-string v7, "gif"

    .line 125
    const-string v8, "png"

    .line 127
    const-string v9, "bmp"

    .line 129
    const-string v10, "wbmp"

    .line 131
    const-string v11, "webp"

    .line 133
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    .line 136
    move-result-object v5

    .line 137
    sput-object v5, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_PHOTO_FORMAT:[Ljava/lang/String;

    .line 139
    const-string v6, "zip"

    .line 141
    const-string v7, "rar"

    .line 143
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 146
    move-result-object v6

    .line 147
    sput-object v6, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_ZIP_FORMAT:[Ljava/lang/String;

    .line 149
    new-instance v7, Ljava/util/HashSet;

    .line 151
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 154
    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_VIDEO:Ljava/util/HashSet;

    .line 156
    new-instance v7, Ljava/util/HashSet;

    .line 158
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 161
    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_AUDIO:Ljava/util/HashSet;

    .line 163
    new-instance v7, Ljava/util/HashSet;

    .line 165
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 168
    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_APK:Ljava/util/HashSet;

    .line 170
    new-instance v7, Ljava/util/HashSet;

    .line 172
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 175
    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_WECHAT_APK:Ljava/util/HashSet;

    .line 177
    new-instance v7, Ljava/util/HashSet;

    .line 179
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 182
    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_DOC:Ljava/util/HashSet;

    .line 184
    new-instance v7, Ljava/util/HashSet;

    .line 186
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 189
    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_PHOTO:Ljava/util/HashSet;

    .line 191
    new-instance v7, Ljava/util/HashSet;

    .line 193
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 196
    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_EBOOK:Ljava/util/HashSet;

    .line 198
    new-instance v7, Ljava/util/HashSet;

    .line 200
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 203
    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_ZIP:Ljava/util/HashSet;

    .line 205
    new-instance v7, Ljava/util/HashSet;

    .line 207
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 210
    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_THEME:Ljava/util/HashSet;

    .line 212
    new-instance v7, Ljava/util/HashMap;

    .line 214
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 217
    sput-object v7, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_TYPE_LOOK_UP:Ljava/util/HashMap;

    .line 219
    array-length v7, v0

    .line 220
    array-length v2, v2

    .line 221
    add-int/2addr v7, v2

    .line 222
    array-length v1, v1

    .line 223
    add-int/2addr v7, v1

    .line 224
    array-length v1, v4

    .line 225
    add-int/2addr v7, v1

    .line 226
    array-length v1, v5

    .line 227
    add-int/2addr v7, v1

    .line 228
    array-length v1, v6

    .line 229
    add-int/2addr v7, v1

    .line 230
    array-length v1, v3

    .line 231
    add-int/2addr v7, v1

    .line 232
    new-array v1, v7, [Ljava/lang/String;

    .line 234
    sput-object v1, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    .line 236
    array-length v1, v0

    .line 237
    const/4 v2, 0x0

    .line 238
    move v3, v2

    .line 239
    move v4, v3

    .line 240
    :goto_ef
    if-ge v3, v1, :cond_102

    .line 242
    aget-object v5, v0, v3

    .line 244
    sget-object v6, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    .line 246
    add-int/lit8 v7, v4, 0x1

    .line 248
    aput-object v5, v6, v4

    .line 250
    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_VIDEO:Ljava/util/HashSet;

    .line 252
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v3, v3, 0x1

    .line 257
    move v4, v7

    .line 258
    goto :goto_ef

    .line 259
    :cond_102
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_AUDIO_FORMAT:[Ljava/lang/String;

    .line 261
    array-length v1, v0

    .line 262
    move v3, v2

    .line 263
    :goto_106
    if-ge v3, v1, :cond_119

    .line 265
    aget-object v5, v0, v3

    .line 267
    sget-object v6, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    .line 269
    add-int/lit8 v7, v4, 0x1

    .line 271
    aput-object v5, v6, v4

    .line 273
    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_AUDIO:Ljava/util/HashSet;

    .line 275
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v3, v3, 0x1

    .line 280
    move v4, v7

    .line 281
    goto :goto_106

    .line 282
    :cond_119
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_APK_FORMAT:[Ljava/lang/String;

    .line 284
    array-length v1, v0

    .line 285
    move v3, v2

    .line 286
    :goto_11d
    if-ge v3, v1, :cond_130

    .line 288
    aget-object v5, v0, v3

    .line 290
    sget-object v6, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    .line 292
    add-int/lit8 v7, v4, 0x1

    .line 294
    aput-object v5, v6, v4

    .line 296
    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_APK:Ljava/util/HashSet;

    .line 298
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v3, v3, 0x1

    .line 303
    move v4, v7

    .line 304
    goto :goto_11d

    .line 305
    :cond_130
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_DOC_FORMAT:[Ljava/lang/String;

    .line 307
    array-length v1, v0

    .line 308
    move v3, v2

    .line 309
    :goto_134
    if-ge v3, v1, :cond_147

    .line 311
    aget-object v5, v0, v3

    .line 313
    sget-object v6, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    .line 315
    add-int/lit8 v7, v4, 0x1

    .line 317
    aput-object v5, v6, v4

    .line 319
    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_DOC:Ljava/util/HashSet;

    .line 321
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    add-int/lit8 v3, v3, 0x1

    .line 326
    move v4, v7

    .line 327
    goto :goto_134

    .line 328
    :cond_147
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_PHOTO_FORMAT:[Ljava/lang/String;

    .line 330
    array-length v1, v0

    .line 331
    move v3, v2

    .line 332
    :goto_14b
    if-ge v3, v1, :cond_15e

    .line 334
    aget-object v5, v0, v3

    .line 336
    sget-object v6, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    .line 338
    add-int/lit8 v7, v4, 0x1

    .line 340
    aput-object v5, v6, v4

    .line 342
    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_PHOTO:Ljava/util/HashSet;

    .line 344
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v3, v3, 0x1

    .line 349
    move v4, v7

    .line 350
    goto :goto_14b

    .line 351
    :cond_15e
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_ZIP_FORMAT:[Ljava/lang/String;

    .line 353
    array-length v1, v0

    .line 354
    move v3, v2

    .line 355
    :goto_162
    if-ge v3, v1, :cond_175

    .line 357
    aget-object v5, v0, v3

    .line 359
    sget-object v6, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    .line 361
    add-int/lit8 v7, v4, 0x1

    .line 363
    aput-object v5, v6, v4

    .line 365
    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_ZIP:Ljava/util/HashSet;

    .line 367
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v3, v3, 0x1

    .line 372
    move v4, v7

    .line 373
    goto :goto_162

    .line 374
    :cond_175
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_WECHAT_APK_FORMAT:[Ljava/lang/String;

    .line 376
    array-length v1, v0

    .line 377
    :goto_178
    if-ge v2, v1, :cond_18b

    .line 379
    aget-object v3, v0, v2

    .line 381
    sget-object v5, Lcom/android/fileexplorer/apptag/FileConstant;->SUPPORT_FILE_FORMAT:[Ljava/lang/String;

    .line 383
    add-int/lit8 v6, v4, 0x1

    .line 385
    aput-object v3, v5, v4

    .line 387
    sget-object v4, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_CATEGORY_WECHAT_APK:Ljava/util/HashSet;

    .line 389
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v2, v2, 0x1

    .line 394
    move v4, v6

    .line 395
    goto :goto_178

    .line 396
    :cond_18b
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->FILE_TYPE_LOOK_UP:Ljava/util/HashMap;

    .line 398
    const v1, 0x7f1103b1

    .line 401
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 404
    move-result-object v1

    .line 405
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 407
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 410
    move-result v2

    .line 411
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const v1, 0x7f1103b2

    .line 421
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 424
    move-result-object v1

    .line 425
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 427
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 430
    move-result v2

    .line 431
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const v1, 0x7f1103ae

    .line 441
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 444
    move-result-object v1

    .line 445
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 447
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 450
    move-result v2

    .line 451
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    move-result-object v2

    .line 455
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const v1, 0x7f1103af

    .line 461
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 464
    move-result-object v1

    .line 465
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 467
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 470
    move-result v2

    .line 471
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    move-result-object v2

    .line 475
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const v1, 0x7f1103b0

    .line 481
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 484
    move-result-object v1

    .line 485
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 487
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 490
    move-result v2

    .line 491
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    move-result-object v2

    .line 495
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    .line 500
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    sput-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->IGNORE_EXT_LIST:Ljava/util/List;

    .line 505
    const-string v1, "log"

    .line 507
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant;->IGNORE_EXT_LIST:Ljava/util/List;

    .line 512
    const-string v1, "txt"

    .line 514
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
