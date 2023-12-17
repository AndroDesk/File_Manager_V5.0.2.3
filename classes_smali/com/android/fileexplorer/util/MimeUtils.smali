.class public final Lcom/android/fileexplorer/util/MimeUtils;
.super Ljava/lang/Object;
.source "MimeUtils.java"


# static fields
.field public static final EXTRA_AUDIO_EXTENSION:Ljava/lang/String; = "flac/ogg"

.field public static final MEDIA_TYPE_APK:I = 0x3

.field public static final MEDIA_TYPE_AUDIO:I = 0x1

.field public static final MEDIA_TYPE_IMAGE:I = 0x0

.field public static final MEDIA_TYPE_UNKNOWN:I = -0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x2

.field public static final MIME_ALL:Ljava/lang/String; = "*/*"

.field public static final MIME_APK:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final MIME_TYPE_AUDIO:Ljava/lang/String; = "audio/"

.field public static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/"

.field public static final MIME_TYPE_RECORED_AUDIO:Ljava/lang/String; = "audio/aac"

.field public static final MIME_TYPE_VIDEO:Ljava/lang/String; = "video/"

.field private static final TAG:Ljava/lang/String; = "MimeUtils"

.field private static final extensionToMimeTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mimeTypeToExtensionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/util/MimeUtils;->mimeTypeToExtensionsMap:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcom/android/fileexplorer/util/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    .line 15
    const-string v0, "application/andrew-inset"

    .line 17
    const-string v1, "ez"

    .line 19
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v0, "application/dsptype"

    .line 24
    const-string v1, "tsp"

    .line 26
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "application/futuresplash"

    .line 31
    const-string v1, "spl"

    .line 33
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "application/hta"

    .line 38
    const-string v2, "hta"

    .line 40
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "application/mac-binhex40"

    .line 45
    const-string v2, "hqx"

    .line 47
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "application/mac-compactpro"

    .line 52
    const-string v2, "cpt"

    .line 54
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "application/mathematica"

    .line 59
    const-string v3, "nb"

    .line 61
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "application/msaccess"

    .line 66
    const-string v3, "mdb"

    .line 68
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "application/oda"

    .line 73
    const-string v3, "oda"

    .line 75
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "application/ogg"

    .line 80
    const-string v3, "ogg"

    .line 82
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "oga"

    .line 87
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "audio/aac"

    .line 92
    const-string v3, "aac"

    .line 94
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "application/pdf"

    .line 99
    const-string v3, "pdf"

    .line 101
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "application/pgp-keys"

    .line 106
    const-string v3, "key"

    .line 108
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "application/pgp-signature"

    .line 113
    const-string v3, "pgp"

    .line 115
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "application/pics-rules"

    .line 120
    const-string v3, "prf"

    .line 122
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "application/pkix-cert"

    .line 127
    const-string v3, "cer"

    .line 129
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "application/x-rar-compressed"

    .line 134
    const-string v3, "rar"

    .line 136
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "application/rdf+xml"

    .line 141
    const-string v3, "rdf"

    .line 143
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "application/rss+xml"

    .line 148
    const-string v3, "rss"

    .line 150
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "application/zip"

    .line 155
    const-string v3, "zip"

    .line 157
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "application/vnd.android.package-archive"

    .line 162
    const-string v3, "apk"

    .line 164
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "application/vnd.cinderella"

    .line 169
    const-string v3, "cdy"

    .line 171
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "application/vnd.ms-pki.stl"

    .line 176
    const-string v3, "stl"

    .line 178
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "application/vnd.oasis.opendocument.database"

    .line 183
    const-string v3, "odb"

    .line 185
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "application/vnd.oasis.opendocument.formula"

    .line 190
    const-string v3, "odf"

    .line 192
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "application/vnd.oasis.opendocument.graphics"

    .line 197
    const-string v3, "odg"

    .line 199
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "application/vnd.oasis.opendocument.graphics-template"

    .line 204
    const-string v3, "otg"

    .line 206
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v0, "application/vnd.oasis.opendocument.image"

    .line 211
    const-string v3, "odi"

    .line 213
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "application/vnd.oasis.opendocument.spreadsheet"

    .line 218
    const-string v3, "ods"

    .line 220
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "application/vnd.oasis.opendocument.spreadsheet-template"

    .line 225
    const-string v3, "ots"

    .line 227
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "application/vnd.oasis.opendocument.text"

    .line 232
    const-string v3, "odt"

    .line 234
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "application/vnd.oasis.opendocument.text-master"

    .line 239
    const-string v3, "odm"

    .line 241
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "application/vnd.oasis.opendocument.text-template"

    .line 246
    const-string v3, "ott"

    .line 248
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "application/vnd.oasis.opendocument.text-web"

    .line 253
    const-string v3, "oth"

    .line 255
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "application/vnd.google-earth.kml+xml"

    .line 260
    const-string v3, "kml"

    .line 262
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "application/vnd.google-earth.kmz"

    .line 267
    const-string v3, "kmz"

    .line 269
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "application/msword"

    .line 274
    const-string v3, "doc"

    .line 276
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v3, "dot"

    .line 281
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    .line 286
    const-string v3, "docx"

    .line 288
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    .line 293
    const-string v3, "dotx"

    .line 295
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "application/vnd.ms-excel"

    .line 300
    const-string v3, "xls"

    .line 302
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "application/vnd.ms-excel"

    .line 307
    const-string v3, "xlt"

    .line 309
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    .line 314
    const-string v3, "xlsx"

    .line 316
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    .line 321
    const-string v3, "xltx"

    .line 323
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v0, "application/vnd.ms-powerpoint"

    .line 328
    const-string v3, "ppt"

    .line 330
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v3, "pot"

    .line 335
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v3, "pps"

    .line 340
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    .line 345
    const-string v3, "pptx"

    .line 347
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    .line 352
    const-string v3, "potx"

    .line 354
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    .line 359
    const-string v3, "ppsx"

    .line 361
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v0, "application/vnd.rim.cod"

    .line 366
    const-string v3, "cod"

    .line 368
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v0, "application/vnd.smaf"

    .line 373
    const-string v3, "mmf"

    .line 375
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v0, "application/vnd.stardivision.calc"

    .line 380
    const-string v3, "sdc"

    .line 382
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "application/vnd.stardivision.draw"

    .line 387
    const-string v3, "sda"

    .line 389
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "application/vnd.stardivision.impress"

    .line 394
    const-string v3, "sdd"

    .line 396
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v0, "application/vnd.stardivision.impress"

    .line 401
    const-string v3, "sdp"

    .line 403
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v0, "application/vnd.stardivision.math"

    .line 408
    const-string v3, "smf"

    .line 410
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v0, "application/vnd.stardivision.writer"

    .line 415
    const-string v3, "sdw"

    .line 417
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v0, "application/vnd.stardivision.writer"

    .line 422
    const-string v3, "vor"

    .line 424
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v0, "application/vnd.stardivision.writer-global"

    .line 429
    const-string v3, "sgl"

    .line 431
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v0, "application/vnd.sun.xml.calc"

    .line 436
    const-string v3, "sxc"

    .line 438
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v0, "application/vnd.sun.xml.calc.template"

    .line 443
    const-string v3, "stc"

    .line 445
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v0, "application/vnd.sun.xml.draw"

    .line 450
    const-string v3, "sxd"

    .line 452
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v0, "application/vnd.sun.xml.draw.template"

    .line 457
    const-string v3, "std"

    .line 459
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v0, "application/vnd.sun.xml.impress"

    .line 464
    const-string v3, "sxi"

    .line 466
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v0, "application/vnd.sun.xml.impress.template"

    .line 471
    const-string v3, "sti"

    .line 473
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v0, "application/vnd.sun.xml.math"

    .line 478
    const-string v3, "sxm"

    .line 480
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v0, "application/vnd.sun.xml.writer"

    .line 485
    const-string v3, "sxw"

    .line 487
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v0, "application/vnd.sun.xml.writer.global"

    .line 492
    const-string v3, "sxg"

    .line 494
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v0, "application/vnd.sun.xml.writer.template"

    .line 499
    const-string v3, "stw"

    .line 501
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v0, "application/vnd.visio"

    .line 506
    const-string v3, "vsd"

    .line 508
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v0, "application/x-abiword"

    .line 513
    const-string v3, "abw"

    .line 515
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v0, "application/x-apple-diskimage"

    .line 520
    const-string v3, "dmg"

    .line 522
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v0, "application/x-bcpio"

    .line 527
    const-string v3, "bcpio"

    .line 529
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v0, "application/x-bittorrent"

    .line 534
    const-string v3, "torrent"

    .line 536
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v0, "application/x-cdf"

    .line 541
    const-string v3, "cdf"

    .line 543
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v0, "application/x-cdlink"

    .line 548
    const-string v3, "vcd"

    .line 550
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v0, "application/x-chess-pgn"

    .line 555
    const-string v3, "pgn"

    .line 557
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v0, "application/x-cpio"

    .line 562
    const-string v3, "cpio"

    .line 564
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v0, "application/x-debian-package"

    .line 569
    const-string v3, "deb"

    .line 571
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v0, "application/x-debian-package"

    .line 576
    const-string v3, "udeb"

    .line 578
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v0, "application/x-director"

    .line 583
    const-string v3, "dcr"

    .line 585
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v3, "dir"

    .line 590
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v3, "dxr"

    .line 595
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v0, "application/x-dms"

    .line 600
    const-string v3, "dms"

    .line 602
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v0, "application/x-doom"

    .line 607
    const-string v3, "wad"

    .line 609
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v0, "application/x-dvi"

    .line 614
    const-string v3, "dvi"

    .line 616
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v0, "application/x-flac"

    .line 621
    const-string v3, "flac"

    .line 623
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v0, "application/x-font"

    .line 628
    const-string v3, "pfa"

    .line 630
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v3, "pfb"

    .line 635
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v3, "gsf"

    .line 640
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v3, "pcf"

    .line 645
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v3, "pcf.Z"

    .line 650
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v0, "application/x-freemind"

    .line 655
    const-string v3, "mm"

    .line 657
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v0, "application/x-futuresplash"

    .line 662
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v0, "application/x-gnumeric"

    .line 667
    const-string v1, "gnumeric"

    .line 669
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v0, "application/x-go-sgf"

    .line 674
    const-string v1, "sgf"

    .line 676
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v0, "application/x-graphing-calculator"

    .line 681
    const-string v1, "gcf"

    .line 683
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v0, "application/x-gtar"

    .line 688
    const-string v1, "gtar"

    .line 690
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v1, "tgz"

    .line 695
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v1, "taz"

    .line 700
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v0, "application/x-hdf"

    .line 705
    const-string v1, "hdf"

    .line 707
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v0, "application/x-ica"

    .line 712
    const-string v1, "ica"

    .line 714
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v0, "application/x-internet-signup"

    .line 719
    const-string v1, "ins"

    .line 721
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v0, "application/x-internet-signup"

    .line 726
    const-string v1, "isp"

    .line 728
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v0, "application/x-iphone"

    .line 733
    const-string v1, "iii"

    .line 735
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v0, "application/x-iso9660-image"

    .line 740
    const-string v1, "iso"

    .line 742
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v0, "application/x-jmol"

    .line 747
    const-string v1, "jmz"

    .line 749
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v0, "application/x-kchart"

    .line 754
    const-string v1, "chrt"

    .line 756
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v0, "application/x-killustrator"

    .line 761
    const-string v1, "kil"

    .line 763
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v0, "application/x-koan"

    .line 768
    const-string v1, "skp"

    .line 770
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v1, "skd"

    .line 775
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v1, "skt"

    .line 780
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v1, "skm"

    .line 785
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v0, "application/x-kpresenter"

    .line 790
    const-string v1, "kpr"

    .line 792
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v0, "application/x-kpresenter"

    .line 797
    const-string v1, "kpt"

    .line 799
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v0, "application/x-kspread"

    .line 804
    const-string v1, "ksp"

    .line 806
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v0, "application/x-kword"

    .line 811
    const-string v1, "kwd"

    .line 813
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v0, "application/x-kword"

    .line 818
    const-string v1, "kwt"

    .line 820
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v0, "application/x-latex"

    .line 825
    const-string v1, "latex"

    .line 827
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v0, "application/x-lha"

    .line 832
    const-string v1, "lha"

    .line 834
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v0, "application/x-lzh"

    .line 839
    const-string v1, "lzh"

    .line 841
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v0, "application/x-lzx"

    .line 846
    const-string v1, "lzx"

    .line 848
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v0, "application/x-maker"

    .line 853
    const-string v1, "frm"

    .line 855
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v1, "maker"

    .line 860
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v1, "frame"

    .line 865
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const-string v1, "fb"

    .line 870
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string v1, "book"

    .line 875
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v1, "fbdoc"

    .line 880
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v0, "application/x-mif"

    .line 885
    const-string v1, "mif"

    .line 887
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v0, "application/x-ms-wmd"

    .line 892
    const-string v1, "wmd"

    .line 894
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const-string v0, "application/x-ms-wmz"

    .line 899
    const-string v1, "wmz"

    .line 901
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v0, "application/x-msi"

    .line 906
    const-string v1, "msi"

    .line 908
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v0, "application/x-ns-proxy-autoconfig"

    .line 913
    const-string v1, "pac"

    .line 915
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v0, "application/x-nwc"

    .line 920
    const-string v1, "nwc"

    .line 922
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v0, "application/x-object"

    .line 927
    const-string v1, "o"

    .line 929
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v0, "application/x-oz-application"

    .line 934
    const-string v1, "oza"

    .line 936
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v0, "application/x-pem-file"

    .line 941
    const-string v1, "pem"

    .line 943
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const-string v0, "application/x-pkcs12"

    .line 948
    const-string v1, "p12"

    .line 950
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v0, "application/x-pkcs12"

    .line 955
    const-string v1, "pfx"

    .line 957
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v0, "application/x-pkcs7-certreqresp"

    .line 962
    const-string v1, "p7r"

    .line 964
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v0, "application/x-pkcs7-crl"

    .line 969
    const-string v1, "crl"

    .line 971
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v0, "application/x-quicktimeplayer"

    .line 976
    const-string v1, "qtl"

    .line 978
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v0, "application/x-shar"

    .line 983
    const-string v1, "shar"

    .line 985
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v0, "application/x-shockwave-flash"

    .line 990
    const-string v1, "swf"

    .line 992
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v0, "application/x-stuffit"

    .line 997
    const-string v1, "sit"

    .line 999
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v0, "application/x-sv4cpio"

    .line 1004
    const-string v1, "sv4cpio"

    .line 1006
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v0, "application/x-sv4crc"

    .line 1011
    const-string v1, "sv4crc"

    .line 1013
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string v0, "application/x-tar"

    .line 1018
    const-string v1, "tar"

    .line 1020
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v0, "application/x-texinfo"

    .line 1025
    const-string v1, "texinfo"

    .line 1027
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string v0, "application/x-texinfo"

    .line 1032
    const-string v1, "texi"

    .line 1034
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v0, "application/x-troff"

    .line 1039
    const-string v1, "t"

    .line 1041
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const-string v0, "application/x-troff"

    .line 1046
    const-string v1, "roff"

    .line 1048
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v0, "application/x-troff-man"

    .line 1053
    const-string v1, "man"

    .line 1055
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const-string v0, "application/x-ustar"

    .line 1060
    const-string v1, "ustar"

    .line 1062
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string v0, "application/x-wais-source"

    .line 1067
    const-string v1, "src"

    .line 1069
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string v0, "application/x-wingz"

    .line 1074
    const-string v1, "wz"

    .line 1076
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const-string v0, "application/x-webarchive"

    .line 1081
    const-string v1, "webarchive"

    .line 1083
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string v0, "application/x-webarchive-xml"

    .line 1088
    const-string v1, "webarchivexml"

    .line 1090
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v0, "application/x-x509-ca-cert"

    .line 1095
    const-string v1, "crt"

    .line 1097
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v0, "application/x-x509-user-cert"

    .line 1102
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const-string v0, "application/x-x509-server-cert"

    .line 1107
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string v0, "application/x-xcf"

    .line 1112
    const-string v1, "xcf"

    .line 1114
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string v0, "application/x-xfig"

    .line 1119
    const-string v1, "fig"

    .line 1121
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string v0, "application/xhtml+xml"

    .line 1126
    const-string v1, "xhtml"

    .line 1128
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    const-string v0, "audio/3gpp"

    .line 1133
    const-string v1, "3gpp"

    .line 1135
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const-string v0, "audio/3gpp2"

    .line 1140
    const-string v1, "3gpp2"

    .line 1142
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v0, "audio/amr"

    .line 1147
    const-string v1, "amr"

    .line 1149
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const-string v0, "audio/amr-wb"

    .line 1154
    const-string v1, "awb"

    .line 1156
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-string v0, "audio/basic"

    .line 1161
    const-string v1, "snd"

    .line 1163
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const-string v0, "audio/midi"

    .line 1168
    const-string v1, "mid"

    .line 1170
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string v1, "midi"

    .line 1175
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const-string v1, "kar"

    .line 1180
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string v1, "xmf"

    .line 1185
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string v0, "audio/mobile-xmf"

    .line 1190
    const-string v1, "mxmf"

    .line 1192
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const-string v0, "audio/mpeg"

    .line 1197
    const-string v1, "mpga"

    .line 1199
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string v1, "mpega"

    .line 1204
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v1, "mp2"

    .line 1209
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v1, "mp3"

    .line 1214
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v1, "m4a"

    .line 1219
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const-string v0, "audio/mpegurl"

    .line 1224
    const-string v1, "m3u"

    .line 1226
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const-string v0, "audio/prs.sid"

    .line 1231
    const-string v1, "sid"

    .line 1233
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v0, "audio/x-aiff"

    .line 1238
    const-string v1, "aif"

    .line 1240
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v1, "aiff"

    .line 1245
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v1, "aifc"

    .line 1250
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v0, "audio/x-gsm"

    .line 1255
    const-string v1, "gsm"

    .line 1257
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v0, "audio/x-mpegurl"

    .line 1262
    const-string v1, "m3u"

    .line 1264
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const-string v0, "audio/x-ms-wma"

    .line 1269
    const-string v1, "wma"

    .line 1271
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const-string v0, "audio/x-ms-wax"

    .line 1276
    const-string v1, "wax"

    .line 1278
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const-string v0, "audio/x-monkeys-audio"

    .line 1283
    const-string v1, "ape"

    .line 1285
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const-string v0, "audio/x-pn-realaudio"

    .line 1290
    const-string v1, "ra"

    .line 1292
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string v0, "video/x-pn-realvideo"

    .line 1297
    const-string v1, "rm"

    .line 1299
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v0, "video/x-pn-realvideo"

    .line 1304
    const-string v1, "rmvb"

    .line 1306
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const-string v0, "audio/x-pn-realaudio"

    .line 1311
    const-string v1, "ram"

    .line 1313
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string v0, "audio/x-realaudio"

    .line 1318
    const-string v1, "ra"

    .line 1320
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const-string v0, "audio/x-scpls"

    .line 1325
    const-string v1, "pls"

    .line 1327
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const-string v0, "audio/x-sd2"

    .line 1332
    const-string v1, "sd2"

    .line 1334
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const-string v0, "audio/x-wav"

    .line 1339
    const-string v1, "wav"

    .line 1341
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    const-string v0, "image/bmp"

    .line 1346
    const-string v1, "bmp"

    .line 1348
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    const-string v0, "audio/x-qcp"

    .line 1353
    const-string v1, "qcp"

    .line 1355
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const-string v0, "image/gif"

    .line 1360
    const-string v1, "gif"

    .line 1362
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string v0, "image/ico"

    .line 1367
    const-string v1, "cur"

    .line 1369
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const-string v0, "image/ico"

    .line 1374
    const-string v1, "ico"

    .line 1376
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const-string v0, "image/ief"

    .line 1381
    const-string v1, "ief"

    .line 1383
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v0, "image/jpeg"

    .line 1388
    const-string v1, "jpeg"

    .line 1390
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string v1, "jpg"

    .line 1395
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string v1, "jpe"

    .line 1400
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const-string v0, "image/pcx"

    .line 1405
    const-string v1, "pcx"

    .line 1407
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const-string v0, "image/png"

    .line 1412
    const-string v1, "png"

    .line 1414
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string v0, "image/svg+xml"

    .line 1419
    const-string v1, "svg"

    .line 1421
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const-string v0, "image/svg+xml"

    .line 1426
    const-string v1, "svgz"

    .line 1428
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    const-string v0, "image/vnd.djvu"

    .line 1433
    const-string v1, "djvu"

    .line 1435
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    const-string v0, "image/vnd.djvu"

    .line 1440
    const-string v1, "djv"

    .line 1442
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    const-string v0, "image/vnd.wap.wbmp"

    .line 1447
    const-string v1, "wbmp"

    .line 1449
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    const-string v0, "image/x-cmu-raster"

    .line 1454
    const-string v1, "ras"

    .line 1456
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const-string v0, "image/x-coreldraw"

    .line 1461
    const-string v1, "cdr"

    .line 1463
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    const-string v0, "image/x-coreldrawpattern"

    .line 1468
    const-string v1, "pat"

    .line 1470
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const-string v0, "image/x-coreldrawtemplate"

    .line 1475
    const-string v1, "cdt"

    .line 1477
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    const-string v0, "image/x-corelphotopaint"

    .line 1482
    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const-string v0, "image/x-icon"

    .line 1487
    const-string v1, "ico"

    .line 1489
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    const-string v0, "image/x-jg"

    .line 1494
    const-string v1, "art"

    .line 1496
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    const-string v0, "image/x-jng"

    .line 1501
    const-string v1, "jng"

    .line 1503
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const-string v0, "image/x-ms-bmp"

    .line 1508
    const-string v1, "bmp"

    .line 1510
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const-string v0, "image/x-photoshop"

    .line 1515
    const-string v1, "psd"

    .line 1517
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    const-string v0, "image/x-portable-anymap"

    .line 1522
    const-string v1, "pnm"

    .line 1524
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const-string v0, "image/x-portable-bitmap"

    .line 1529
    const-string v1, "pbm"

    .line 1531
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    const-string v0, "image/x-portable-graymap"

    .line 1536
    const-string v1, "pgm"

    .line 1538
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    const-string v0, "image/x-portable-pixmap"

    .line 1543
    const-string v1, "ppm"

    .line 1545
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    const-string v0, "image/x-rgb"

    .line 1550
    const-string v1, "rgb"

    .line 1552
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    const-string v0, "image/x-xbitmap"

    .line 1557
    const-string v1, "xbm"

    .line 1559
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    const-string v0, "image/x-xpixmap"

    .line 1564
    const-string v1, "xpm"

    .line 1566
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const-string v0, "image/x-xwindowdump"

    .line 1571
    const-string v1, "xwd"

    .line 1573
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const-string v0, "image/heic"

    .line 1578
    const-string v1, "heic"

    .line 1580
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const-string v0, "model/iges"

    .line 1585
    const-string v1, "igs"

    .line 1587
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const-string v0, "model/iges"

    .line 1592
    const-string v1, "iges"

    .line 1594
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    const-string v0, "model/mesh"

    .line 1599
    const-string v1, "msh"

    .line 1601
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const-string v1, "mesh"

    .line 1606
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    const-string v1, "silo"

    .line 1611
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    const-string v0, "text/calendar"

    .line 1616
    const-string v1, "ics"

    .line 1618
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    const-string v0, "text/calendar"

    .line 1623
    const-string v1, "icz"

    .line 1625
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    const-string v0, "text/comma-separated-values"

    .line 1630
    const-string v1, "csv"

    .line 1632
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    const-string v0, "text/css"

    .line 1637
    const-string v1, "css"

    .line 1639
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    const-string v0, "text/html"

    .line 1644
    const-string v1, "htm"

    .line 1646
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    const-string v0, "text/html"

    .line 1651
    const-string v1, "html"

    .line 1653
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const-string v0, "text/h323"

    .line 1658
    const-string v1, "323"

    .line 1660
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    const-string v0, "text/iuls"

    .line 1665
    const-string v1, "uls"

    .line 1667
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const-string v0, "text/mathml"

    .line 1672
    const-string v1, "mml"

    .line 1674
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    const-string v0, "text/plain"

    .line 1679
    const-string v1, "txt"

    .line 1681
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    const-string v1, "md"

    .line 1686
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    const-string v1, "asc"

    .line 1691
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const-string v1, "text"

    .line 1696
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const-string v1, "diff"

    .line 1701
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const-string v1, "po"

    .line 1706
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    const-string v0, "text/richtext"

    .line 1711
    const-string v1, "rtx"

    .line 1713
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    const-string v0, "text/rtf"

    .line 1718
    const-string v1, "rtf"

    .line 1720
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    const-string v0, "text/text"

    .line 1725
    const-string v1, "phps"

    .line 1727
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string v0, "text/tab-separated-values"

    .line 1732
    const-string v1, "tsv"

    .line 1734
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    const-string v0, "text/xml"

    .line 1739
    const-string v1, "xml"

    .line 1741
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    const-string v0, "text/x-bibtex"

    .line 1746
    const-string v1, "bib"

    .line 1748
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    const-string v0, "text/x-boo"

    .line 1753
    const-string v1, "boo"

    .line 1755
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    const-string v0, "text/x-c++hdr"

    .line 1760
    const-string v1, "h++"

    .line 1762
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    const-string v1, "hpp"

    .line 1767
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    const-string v1, "hxx"

    .line 1772
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    const-string v1, "hh"

    .line 1777
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    const-string v0, "text/x-c++src"

    .line 1782
    const-string v1, "c++"

    .line 1784
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    const-string v1, "cpp"

    .line 1789
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    const-string v1, "cxx"

    .line 1794
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    const-string v0, "text/x-chdr"

    .line 1799
    const-string v1, "h"

    .line 1801
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string v0, "text/x-component"

    .line 1806
    const-string v1, "htc"

    .line 1808
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    const-string v0, "text/x-csh"

    .line 1813
    const-string v1, "csh"

    .line 1815
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const-string v0, "text/x-csrc"

    .line 1820
    const-string v1, "c"

    .line 1822
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const-string v0, "text/x-dsrc"

    .line 1827
    const-string v1, "d"

    .line 1829
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    const-string v0, "text/x-haskell"

    .line 1834
    const-string v1, "hs"

    .line 1836
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    const-string v0, "text/x-java"

    .line 1841
    const-string v1, "java"

    .line 1843
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const-string v0, "text/x-literate-haskell"

    .line 1848
    const-string v1, "lhs"

    .line 1850
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    const-string v0, "text/x-moc"

    .line 1855
    const-string v1, "moc"

    .line 1857
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    const-string v0, "text/x-pascal"

    .line 1862
    const-string v1, "p"

    .line 1864
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    const-string v0, "text/x-pascal"

    .line 1869
    const-string v1, "pas"

    .line 1871
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    const-string v0, "text/x-pcs-gcd"

    .line 1876
    const-string v1, "gcd"

    .line 1878
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const-string v0, "text/x-setext"

    .line 1883
    const-string v1, "etx"

    .line 1885
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    const-string v0, "text/x-tcl"

    .line 1890
    const-string v1, "tcl"

    .line 1892
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    const-string v0, "text/x-tex"

    .line 1897
    const-string v1, "tex"

    .line 1899
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    const-string v1, "ltx"

    .line 1904
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    const-string v1, "sty"

    .line 1909
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    const-string v1, "cls"

    .line 1914
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    const-string v0, "text/x-vcalendar"

    .line 1919
    const-string v1, "vcs"

    .line 1921
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    const-string v0, "text/x-vcard"

    .line 1926
    const-string v1, "vcf"

    .line 1928
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    const-string v0, "video/3gpp"

    .line 1933
    const-string v1, "3gpp"

    .line 1935
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    const-string v1, "3gp"

    .line 1940
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    const-string v1, "3g2"

    .line 1945
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    const-string v0, "video/dl"

    .line 1950
    const-string v1, "dl"

    .line 1952
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    const-string v0, "video/dv"

    .line 1957
    const-string v1, "dif"

    .line 1959
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    const-string v0, "video/dv"

    .line 1964
    const-string v1, "dv"

    .line 1966
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    const-string v0, "video/fli"

    .line 1971
    const-string v1, "fli"

    .line 1973
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    const-string v0, "video/m4v"

    .line 1978
    const-string v1, "m4v"

    .line 1980
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    const-string v0, "video/mpeg"

    .line 1985
    const-string v1, "mpeg"

    .line 1987
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    const-string v1, "mpg"

    .line 1992
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    const-string v1, "mpe"

    .line 1997
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    const-string v0, "video/mp4"

    .line 2002
    const-string v1, "mp4"

    .line 2004
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    const-string v0, "video/quicktime"

    .line 2009
    const-string v1, "qt"

    .line 2011
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    const-string v0, "video/quicktime"

    .line 2016
    const-string v1, "mov"

    .line 2018
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    const-string v0, "video/vnd.mpegurl"

    .line 2023
    const-string v1, "mxu"

    .line 2025
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    const-string v0, "video/x-la-asf"

    .line 2030
    const-string v1, "lsf"

    .line 2032
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    const-string v0, "video/x-la-asf"

    .line 2037
    const-string v1, "lsx"

    .line 2039
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    const-string v0, "video/x-mng"

    .line 2044
    const-string v1, "mng"

    .line 2046
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    const-string v0, "video/x-ms-asf"

    .line 2051
    const-string v1, "asf"

    .line 2053
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    const-string v0, "video/x-ms-asf"

    .line 2058
    const-string v1, "asx"

    .line 2060
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    const-string v0, "video/x-ms-wm"

    .line 2065
    const-string v1, "wm"

    .line 2067
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    const-string v0, "video/x-ms-wmv"

    .line 2072
    const-string v1, "wmv"

    .line 2074
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    const-string v0, "video/x-ms-wmx"

    .line 2079
    const-string v1, "wmx"

    .line 2081
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    const-string v0, "video/x-ms-wvx"

    .line 2086
    const-string v1, "wvx"

    .line 2088
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    const-string v0, "video/x-msvideo"

    .line 2093
    const-string v1, "avi"

    .line 2095
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    const-string v0, "video/x-sgi-movie"

    .line 2100
    const-string v1, "movie"

    .line 2102
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    const-string v0, "video/x-flv"

    .line 2107
    const-string v1, "flv"

    .line 2109
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    const-string v0, "video/x-matroska"

    .line 2114
    const-string v1, "mkv"

    .line 2116
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    const-string v0, "audio/x-matroska"

    .line 2121
    const-string v1, "mka"

    .line 2123
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    const-string v0, "application/octet-stream"

    .line 2128
    const-string v1, "vob"

    .line 2130
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    const-string v0, "video/MP2T"

    .line 2135
    const-string v1, "ts"

    .line 2137
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    const-string v0, "video/mp4"

    .line 2142
    const-string v1, "f4v"

    .line 2144
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    const-string v0, "video/mts"

    .line 2149
    const-string v1, "mts"

    .line 2151
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    const-string v0, "video/webm"

    .line 2156
    const-string v1, "webm"

    .line 2158
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    const-string v0, "x-conference/x-cooltalk"

    .line 2163
    const-string v1, "ice"

    .line 2165
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    const-string v0, "x-epoc/x-sisx-app"

    .line 2170
    const-string v1, "sisx"

    .line 2172
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    const-string v0, "application/wps"

    .line 2177
    const-string v1, "wps"

    .line 2179
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    const-string v0, "application/wpt"

    .line 2184
    const-string v1, "wpt"

    .line 2186
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    const-string v0, "application/et"

    .line 2191
    const-string v1, "et"

    .line 2193
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    const-string v0, "application/ett"

    .line 2198
    const-string v1, "ett"

    .line 2200
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    const-string v0, "application/dps"

    .line 2205
    const-string v1, "dps"

    .line 2207
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    const-string v0, "application/dpt"

    .line 2212
    const-string v1, "dpt"

    .line 2214
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    const-string v0, "application/metastream"

    .line 2219
    const-string v1, "mtz"

    .line 2221
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    invoke-static {}, Lcom/android/fileexplorer/util/MimeUtils;->applyOverrides()V

    .line 2227
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/MimeUtils;->mimeTypeToExtensionsMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_e

    .line 9
    new-instance v1, Ljava/util/LinkedList;

    .line 11
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 14
    goto :goto_14

    .line 15
    :cond_e
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/LinkedList;

    .line 21
    :goto_14
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/android/fileexplorer/util/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    .line 29
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private static applyOverrides()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/MimeUtils;->getContentTypesPropertiesStream()Ljava/io/InputStream;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    new-instance v1, Ljava/util/Properties;

    .line 10
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 16
    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_33

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 48
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_37

    .line 51
    goto :goto_17

    .line 52
    :cond_33
    :try_start_33
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 55
    goto :goto_3c

    .line 56
    :catchall_37
    move-exception v1

    .line 57
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 60
    throw v1
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_3c

    .line 61
    :catch_3c
    :goto_3c
    return-void
.end method

.method private static getContentTypesPropertiesStream()Ljava/io/InputStream;
    .registers 5

    .line 1
    const-string v0, "content.types.user.table"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    new-instance v1, Ljava/io/File;

    .line 11
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_19

    .line 20
    :try_start_13
    new-instance v0, Ljava/io/FileInputStream;

    .line 22
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_19

    .line 25
    return-object v0

    .line 26
    :catch_19
    :cond_19
    new-instance v0, Ljava/io/File;

    .line 28
    const-string v1, "java.home"

    .line 30
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const-string v2, "lib"

    .line 36
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v2

    .line 40
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 42
    const-string v4, "content-types.properties"

    .line 44
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3e

    .line 57
    :try_start_38
    new-instance v1, Ljava/io/FileInputStream;

    .line 59
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_3e

    .line 62
    return-object v1

    .line 63
    :catch_3e
    :cond_3e
    const/4 v0, 0x0

    .line 64
    return-object v0
.end method

.method private static getDocExts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, "txt"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    const-string v1, "doc"

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v1, "docx"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v1, "ppt"

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v1, "pptx"

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v1, "xls"

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v1, "xlsx"

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v1, "pdf"

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v1, "wps"

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-object v0
.end method

.method public static getMimeTypeFromMediaDatabase(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    const-string v0, "external"

    .line 3
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v2

    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_7
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object v1

    .line 20
    const-string v3, "mime_type"

    .line 22
    filled-new-array {v3}, [Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    const-string v4, "_data=?"

    .line 28
    const/4 v5, 0x1

    .line 29
    new-array v5, v5, [Ljava/lang/String;

    .line 31
    const/4 v7, 0x0

    .line 32
    aput-object p0, v5, v7

    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 38
    move-result-object p0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_41

    .line 39
    if-eqz p0, :cond_35

    .line 41
    :try_start_28
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_35

    .line 47
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object v0
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_33

    .line 51
    goto :goto_35

    .line 52
    :catchall_33
    move-exception v0

    .line 53
    goto :goto_45

    .line 54
    :cond_35
    :goto_35
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_40

    .line 63
    const-string v0, "*/*"

    .line 65
    :cond_40
    return-object v0

    .line 66
    :catchall_41
    move-exception p0

    .line 67
    move-object v8, v0

    .line 68
    move-object v0, p0

    .line 69
    move-object p0, v8

    .line 70
    :goto_45
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    throw v0
.end method

.method public static guessExtensionFromMimeType(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_27

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_27

    .line 11
    :cond_a
    sget-object v1, Lcom/android/fileexplorer/util/MimeUtils;->mimeTypeToExtensionsMap:Ljava/util/Map;

    .line 13
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/util/LinkedList;

    .line 19
    if-eqz p0, :cond_27

    .line 21
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_27

    .line 27
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 30
    move-result v0

    .line 31
    new-array v0, v0, [Ljava/lang/String;

    .line 33
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 37
    check-cast p0, [Ljava/lang/String;

    .line 39
    return-object p0

    .line 40
    :cond_27
    :goto_27
    return-object v0
.end method

.method public static guessExtensionFromMimeTypes([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 1
    if-eqz p0, :cond_31

    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_6

    .line 6
    goto :goto_31

    .line 7
    :cond_6
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v2, v1, :cond_24

    .line 16
    aget-object v3, p0, v2

    .line 18
    invoke-static {v3}, Lcom/android/fileexplorer/util/MimeUtils;->guessExtensionFromMimeType(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_21

    .line 24
    array-length v4, v3

    .line 25
    if-lez v4, :cond_21

    .line 27
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 34
    :cond_21
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_d

    .line 37
    :cond_24
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 40
    move-result p0

    .line 41
    new-array p0, p0, [Ljava/lang/String;

    .line 43
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    check-cast p0, [Ljava/lang/String;

    .line 49
    return-object p0

    .line 50
    :cond_31
    :goto_31
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method

.method public static guessFileTypeFromExtension(Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessFileTypeFromMimeType(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static guessFileTypeFromMimeType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 1
    if-eqz p1, :cond_a

    .line 3
    const-string v0, "audio/"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1c

    .line 11
    :cond_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1e

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    const-string v0, "flac/ogg"

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1e

    .line 29
    :cond_1c
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_1e
    if-eqz p1, :cond_2a

    .line 33
    const-string p0, "video/"

    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2a

    .line 41
    const/4 p0, 0x2

    .line 42
    return p0

    .line 43
    :cond_2a
    if-eqz p1, :cond_36

    .line 45
    const-string p0, "image/"

    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_36

    .line 53
    const/4 p0, 0x0

    .line 54
    return p0

    .line 55
    :cond_36
    const-string p0, "application/vnd.android.package-archive"

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_40

    .line 63
    const/4 p0, 0x3

    .line 64
    return p0

    .line 65
    :cond_40
    const/4 p0, -0x1

    .line 66
    return p0
.end method

.method public static guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_13

    .line 7
    sget-object v0, Lcom/android/fileexplorer/util/MimeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p0, 0x0

    .line 21
    :goto_14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1c

    .line 27
    const-string p0, "*/*"

    .line 29
    :cond_1c
    return-object p0
.end method

.method public static isAudio(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "*/*"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2a

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v1, "isVideo type_all filePath = "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "MimeUtils"

    .line 36
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->getMimeTypeFromMediaDatabase(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    :cond_2a
    const-string p0, "audio/"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public static isBook(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    const-string v0, "txt"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1c

    .line 21
    const-string v0, "epub"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1d

    .line 29
    :cond_1c
    const/4 v1, 0x1

    .line 30
    :cond_1d
    return v1
.end method

.method public static isDoc(Ljava/lang/String;)Z
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
    return v1

    .line 9
    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/util/MimeUtils;->getDocExts()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_24

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_10

    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_24
    return v1
.end method

.method public static isHorizontalDoc(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->isPPT(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_16

    .line 15
    const-string v0, "pdf"

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_17

    .line 23
    :cond_16
    const/4 v1, 0x1

    .line 24
    :cond_17
    return v1
.end method

.method public static isImage(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "*/*"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2a

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v1, "isImage type_all filePath = "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "MimeUtils"

    .line 36
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->getMimeTypeFromMediaDatabase(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    :cond_2a
    const-string p0, "image/"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public static isPPT(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    const-string v0, "ppt"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_18

    .line 17
    const-string v0, "pptx"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_19

    .line 25
    :cond_18
    const/4 v1, 0x1

    .line 26
    :cond_19
    return v1
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "*/*"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2a

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v1, "isVideo type_all filePath = "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "MimeUtils"

    .line 36
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, Lcom/android/fileexplorer/util/MimeUtils;->getMimeTypeFromMediaDatabase(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    :cond_2a
    const-string p0, "video/"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    move-result p0

    .line 49
    return p0
.end method
