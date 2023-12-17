.class public Lmiuix/fileicon/FileIconUtils;
.super Ljava/lang/Object;
.source "FileIconUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileIconHelper"

.field private static final TYPE_APK:Ljava/lang/String; = "apk"

.field private static sFileExtToIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 18

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lmiuix/fileicon/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    .line 8
    const-string v0, "mp3"

    .line 10
    filled-new-array {v0}, [Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_mp3:I

    .line 16
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 19
    const-string v0, "wma"

    .line 21
    filled-new-array {v0}, [Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_wma:I

    .line 27
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 30
    const-string v0, "wav"

    .line 32
    filled-new-array {v0}, [Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_wav:I

    .line 38
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 41
    const-string v0, "mid"

    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_mid:I

    .line 49
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 52
    const-string v2, "mp4"

    .line 54
    const-string v3, "wmv"

    .line 56
    const-string v4, "mpeg"

    .line 58
    const-string v5, "m4v"

    .line 60
    const-string v6, "3gp"

    .line 62
    const-string v7, "3g2"

    .line 64
    const-string v8, "3gpp2"

    .line 66
    const-string v9, "asf"

    .line 68
    const-string v10, "flv"

    .line 70
    const-string v11, "mkv"

    .line 72
    const-string v12, "vob"

    .line 74
    const-string v13, "ts"

    .line 76
    const-string v14, "f4v"

    .line 78
    const-string v15, "rm"

    .line 80
    const-string v16, "mov"

    .line 82
    const-string v17, "rmvb"

    .line 84
    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_video:I

    .line 90
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 93
    const-string v2, "jpg"

    .line 95
    const-string v3, "jpeg"

    .line 97
    const-string v4, "gif"

    .line 99
    const-string v5, "png"

    .line 101
    const-string v6, "bmp"

    .line 103
    const-string v7, "wbmp"

    .line 105
    const-string v8, "webp"

    .line 107
    const-string v9, "heic"

    .line 109
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_picture:I

    .line 115
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 118
    const-string v0, "txt"

    .line 120
    const-string v1, "log"

    .line 122
    const-string v2, "ini"

    .line 124
    const-string v3, "lrc"

    .line 126
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_txt:I

    .line 132
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 135
    const-string v0, "doc"

    .line 137
    const-string v1, "docx"

    .line 139
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_doc:I

    .line 145
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 148
    const-string v0, "ppt"

    .line 150
    const-string v1, "pptx"

    .line 152
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_ppt:I

    .line 158
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 161
    const-string v0, "xls"

    .line 163
    const-string v1, "xlsx"

    .line 165
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_xls:I

    .line 171
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 174
    const-string v0, "wps"

    .line 176
    filled-new-array {v0}, [Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 180
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_wps:I

    .line 182
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 185
    const-string v0, "pps"

    .line 187
    filled-new-array {v0}, [Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 191
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_pps:I

    .line 193
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 196
    const-string v0, "et"

    .line 198
    filled-new-array {v0}, [Ljava/lang/String;

    .line 201
    move-result-object v0

    .line 202
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_et:I

    .line 204
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 207
    const-string v0, "wpt"

    .line 209
    filled-new-array {v0}, [Ljava/lang/String;

    .line 212
    move-result-object v0

    .line 213
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_wpt:I

    .line 215
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 218
    const-string v0, "ett"

    .line 220
    filled-new-array {v0}, [Ljava/lang/String;

    .line 223
    move-result-object v0

    .line 224
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_ett:I

    .line 226
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 229
    const-string v0, "dps"

    .line 231
    filled-new-array {v0}, [Ljava/lang/String;

    .line 234
    move-result-object v0

    .line 235
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_dps:I

    .line 237
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 240
    const-string v0, "dpt"

    .line 242
    filled-new-array {v0}, [Ljava/lang/String;

    .line 245
    move-result-object v0

    .line 246
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_dpt:I

    .line 248
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 251
    const-string v0, "pdf"

    .line 253
    filled-new-array {v0}, [Ljava/lang/String;

    .line 256
    move-result-object v0

    .line 257
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_pdf:I

    .line 259
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 262
    const-string v0, "zip"

    .line 264
    const-string v1, "rar"

    .line 266
    const-string v2, "7z"

    .line 268
    const-string v3, "tar"

    .line 270
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 273
    move-result-object v0

    .line 274
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_zip:I

    .line 276
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 279
    const-string v0, "mtz"

    .line 281
    filled-new-array {v0}, [Ljava/lang/String;

    .line 284
    move-result-object v0

    .line 285
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_theme:I

    .line 287
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 290
    const-string v0, "apk"

    .line 292
    filled-new-array {v0}, [Ljava/lang/String;

    .line 295
    move-result-object v0

    .line 296
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_apk:I

    .line 298
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 301
    const-string v0, "amr"

    .line 303
    filled-new-array {v0}, [Ljava/lang/String;

    .line 306
    move-result-object v0

    .line 307
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_amr:I

    .line 309
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 312
    const-string v0, "vcf"

    .line 314
    filled-new-array {v0}, [Ljava/lang/String;

    .line 317
    move-result-object v0

    .line 318
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_vcf:I

    .line 320
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 323
    const-string v0, "flac"

    .line 325
    filled-new-array {v0}, [Ljava/lang/String;

    .line 328
    move-result-object v0

    .line 329
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_flac:I

    .line 331
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 334
    const-string v0, "aac"

    .line 336
    filled-new-array {v0}, [Ljava/lang/String;

    .line 339
    move-result-object v0

    .line 340
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_aac:I

    .line 342
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 345
    const-string v0, "ape"

    .line 347
    filled-new-array {v0}, [Ljava/lang/String;

    .line 350
    move-result-object v0

    .line 351
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_ape:I

    .line 353
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 356
    const-string v0, "m4a"

    .line 358
    filled-new-array {v0}, [Ljava/lang/String;

    .line 361
    move-result-object v0

    .line 362
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_m4a:I

    .line 364
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 367
    const-string v0, "ogg"

    .line 369
    filled-new-array {v0}, [Ljava/lang/String;

    .line 372
    move-result-object v0

    .line 373
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_ogg:I

    .line 375
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 378
    const-string v0, "audio"

    .line 380
    filled-new-array {v0}, [Ljava/lang/String;

    .line 383
    move-result-object v0

    .line 384
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_audio:I

    .line 386
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 389
    const-string v0, "html"

    .line 391
    filled-new-array {v0}, [Ljava/lang/String;

    .line 394
    move-result-object v0

    .line 395
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_html:I

    .line 397
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 400
    const-string v0, "xml"

    .line 402
    filled-new-array {v0}, [Ljava/lang/String;

    .line 405
    move-result-object v0

    .line 406
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_xml:I

    .line 408
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 411
    const-string v0, "3gpp"

    .line 413
    filled-new-array {v0}, [Ljava/lang/String;

    .line 416
    move-result-object v0

    .line 417
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_3gpp:I

    .line 419
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 422
    const-string v0, "psd"

    .line 424
    filled-new-array {v0}, [Ljava/lang/String;

    .line 427
    move-result-object v0

    .line 428
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_psd:I

    .line 430
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 433
    const-string v0, "md"

    .line 435
    filled-new-array {v0}, [Ljava/lang/String;

    .line 438
    move-result-object v0

    .line 439
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_md:I

    .line 441
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 444
    const-string v0, "exe"

    .line 446
    filled-new-array {v0}, [Ljava/lang/String;

    .line 449
    move-result-object v0

    .line 450
    sget v1, Lmiuix/fileicon/R$drawable;->file_icon_exe:I

    .line 452
    invoke-static {v0, v1}, Lmiuix/fileicon/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 455
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/InstantiationException;

    .line 6
    const-string v1, "Cannot instantiate utility class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method private static addItem([Ljava/lang/String;I)V
    .registers 7

    .line 1
    if-eqz p0, :cond_18

    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_4
    if-ge v1, v0, :cond_18

    .line 7
    aget-object v2, p0, v1

    .line 9
    sget-object v3, Lmiuix/fileicon/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_4

    .line 25
    :cond_18
    return-void
.end method

.method private static getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_20

    .line 12
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 14
    if-eqz v1, :cond_20

    .line 16
    :try_start_f
    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object p0
    :try_end_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_15} :catch_16

    .line 22
    return-object p0

    .line 23
    :catch_16
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "FileIconHelper"

    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p0

    .line 37
    sget p1, Lmiuix/fileicon/R$drawable;->file_icon_default:I

    .line 39
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method private static getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const/16 v0, 0x2e

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_14

    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_14
    const-string p0, ""

    .line 23
    return-object p0
.end method

.method public static getFileIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    invoke-static {p1}, Lmiuix/fileicon/FileIconUtils;->getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "apk"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_11

    .line 13
    invoke-static {p0, p1}, Lmiuix/fileicon/FileIconUtils;->getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object p0

    .line 17
    goto :goto_1d

    .line 18
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p0

    .line 22
    invoke-static {v0}, Lmiuix/fileicon/FileIconUtils;->getFileIconId(Ljava/lang/String;)I

    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object p0

    .line 30
    :goto_1d
    return-object p0
.end method

.method public static getFileIconId(Ljava/lang/String;)I
    .registers 2

    .line 1
    sget-object v0, Lmiuix/fileicon/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Integer;

    .line 13
    if-nez p0, :cond_11

    .line 15
    sget p0, Lmiuix/fileicon/R$drawable;->file_icon_default:I

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p0

    .line 22
    :goto_15
    return p0
.end method
