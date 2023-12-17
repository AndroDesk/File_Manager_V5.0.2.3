.class public final Lv0/a;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv0/a$a;,
        Lv0/a$c;,
        Lv0/a$b;,
        Lv0/a$d;
    }
.end annotation


# static fields
.field public static final A:[B

.field public static final k:[I

.field public static final l:[I

.field public static final m:[B

.field public static final n:[B

.field public static final o:[B

.field public static final p:[Ljava/lang/String;

.field public static final q:[I

.field public static final r:[B

.field public static final s:Lv0/a$c;

.field public static final t:[[Lv0/a$c;

.field public static final u:[Lv0/a$c;

.field public static final v:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lv0/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lv0/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Landroid/content/res/AssetManager$AssetInputStream;

.field public b:I

.field public final c:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lv0/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/HashSet;

.field public e:Ljava/nio/ByteOrder;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public static constructor <clinit>()V
    .registers 29

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Ljava/lang/Integer;

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    const/4 v4, 0x0

    .line 10
    aput-object v3, v1, v4

    .line 12
    const/4 v5, 0x6

    .line 13
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v6

    .line 17
    aput-object v6, v1, v2

    .line 19
    const/4 v6, 0x3

    .line 20
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v7

    .line 24
    const/4 v8, 0x2

    .line 25
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v9

    .line 29
    aput-object v7, v1, v8

    .line 31
    const/16 v10, 0x8

    .line 33
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v11

    .line 37
    aput-object v11, v1, v6

    .line 39
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    new-array v1, v0, [Ljava/lang/Integer;

    .line 44
    aput-object v9, v1, v4

    .line 46
    const/4 v12, 0x7

    .line 47
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v13

    .line 51
    aput-object v13, v1, v2

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v14

    .line 57
    aput-object v14, v1, v8

    .line 59
    const/4 v14, 0x5

    .line 60
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v15

    .line 64
    aput-object v15, v1, v6

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 69
    new-array v1, v6, [I

    .line 71
    fill-array-data v1, :array_aea

    .line 74
    sput-object v1, Lv0/a;->k:[I

    .line 76
    new-array v1, v2, [I

    .line 78
    aput v10, v1, v4

    .line 80
    sput-object v1, Lv0/a;->l:[I

    .line 82
    new-array v1, v6, [B

    .line 84
    fill-array-data v1, :array_af4

    .line 87
    sput-object v1, Lv0/a;->m:[B

    .line 89
    new-array v1, v5, [B

    .line 91
    fill-array-data v1, :array_afa

    .line 94
    sput-object v1, Lv0/a;->n:[B

    .line 96
    const/16 v1, 0xa

    .line 98
    new-array v12, v1, [B

    .line 100
    fill-array-data v12, :array_b02

    .line 103
    sput-object v12, Lv0/a;->o:[B

    .line 105
    const-string v16, ""

    .line 107
    const-string v17, "BYTE"

    .line 109
    const-string v18, "STRING"

    .line 111
    const-string v19, "USHORT"

    .line 113
    const-string v20, "ULONG"

    .line 115
    const-string v21, "URATIONAL"

    .line 117
    const-string v22, "SBYTE"

    .line 119
    const-string v23, "UNDEFINED"

    .line 121
    const-string v24, "SSHORT"

    .line 123
    const-string v25, "SLONG"

    .line 125
    const-string v26, "SRATIONAL"

    .line 127
    const-string v27, "SINGLE"

    .line 129
    const-string v28, "DOUBLE"

    .line 131
    filled-new-array/range {v16 .. v28}, [Ljava/lang/String;

    .line 134
    move-result-object v12

    .line 135
    sput-object v12, Lv0/a;->p:[Ljava/lang/String;

    .line 137
    const/16 v12, 0xe

    .line 139
    new-array v1, v12, [I

    .line 141
    fill-array-data v1, :array_b0c

    .line 144
    sput-object v1, Lv0/a;->q:[I

    .line 146
    new-array v1, v10, [B

    .line 148
    fill-array-data v1, :array_b2c

    .line 151
    sput-object v1, Lv0/a;->r:[B

    .line 153
    const/16 v1, 0x29

    .line 155
    new-array v1, v1, [Lv0/a$c;

    .line 157
    new-instance v12, Lv0/a$c;

    .line 159
    const-string v10, "NewSubfileType"

    .line 161
    const/16 v5, 0xfe

    .line 163
    invoke-direct {v12, v10, v5, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 166
    aput-object v12, v1, v4

    .line 168
    new-instance v5, Lv0/a$c;

    .line 170
    const-string v10, "SubfileType"

    .line 172
    const/16 v12, 0xff

    .line 174
    invoke-direct {v5, v10, v12, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 177
    aput-object v5, v1, v2

    .line 179
    new-instance v5, Lv0/a$c;

    .line 181
    const-string v10, "ImageWidth"

    .line 183
    const/16 v12, 0x100

    .line 185
    invoke-direct {v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    .line 188
    aput-object v5, v1, v8

    .line 190
    new-instance v5, Lv0/a$c;

    .line 192
    const-string v10, "ImageLength"

    .line 194
    const/16 v12, 0x101

    .line 196
    invoke-direct {v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    .line 199
    aput-object v5, v1, v6

    .line 201
    new-instance v5, Lv0/a$c;

    .line 203
    const-string v10, "BitsPerSample"

    .line 205
    const/16 v12, 0x102

    .line 207
    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 210
    aput-object v5, v1, v0

    .line 212
    new-instance v5, Lv0/a$c;

    .line 214
    const-string v10, "Compression"

    .line 216
    const/16 v12, 0x103

    .line 218
    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 221
    aput-object v5, v1, v14

    .line 223
    new-instance v5, Lv0/a$c;

    .line 225
    const-string v10, "PhotometricInterpretation"

    .line 227
    const/16 v12, 0x106

    .line 229
    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 232
    const/4 v10, 0x6

    .line 233
    aput-object v5, v1, v10

    .line 235
    new-instance v5, Lv0/a$c;

    .line 237
    const-string v10, "ImageDescription"

    .line 239
    const/16 v12, 0x10e

    .line 241
    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 244
    const/4 v10, 0x7

    .line 245
    aput-object v5, v1, v10

    .line 247
    new-instance v5, Lv0/a$c;

    .line 249
    const-string v10, "Make"

    .line 251
    const/16 v12, 0x10f

    .line 253
    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 256
    const/16 v10, 0x8

    .line 258
    aput-object v5, v1, v10

    .line 260
    new-instance v5, Lv0/a$c;

    .line 262
    const-string v10, "Model"

    .line 264
    const/16 v12, 0x110

    .line 266
    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 269
    const/16 v10, 0x9

    .line 271
    aput-object v5, v1, v10

    .line 273
    new-instance v5, Lv0/a$c;

    .line 275
    const-string v12, "StripOffsets"

    .line 277
    const/16 v10, 0x111

    .line 279
    invoke-direct {v5, v12, v10}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    .line 282
    const/16 v10, 0xa

    .line 284
    aput-object v5, v1, v10

    .line 286
    new-instance v5, Lv0/a$c;

    .line 288
    const-string v10, "Orientation"

    .line 290
    const/16 v12, 0x112

    .line 292
    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 295
    const/16 v10, 0xb

    .line 297
    aput-object v5, v1, v10

    .line 299
    new-instance v5, Lv0/a$c;

    .line 301
    const-string v12, "SamplesPerPixel"

    .line 303
    const/16 v10, 0x115

    .line 305
    invoke-direct {v5, v12, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 308
    const/16 v10, 0xc

    .line 310
    aput-object v5, v1, v10

    .line 312
    new-instance v5, Lv0/a$c;

    .line 314
    const-string v10, "RowsPerStrip"

    .line 316
    const/16 v12, 0x116

    .line 318
    invoke-direct {v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    .line 321
    const/16 v10, 0xd

    .line 323
    aput-object v5, v1, v10

    .line 325
    new-instance v5, Lv0/a$c;

    .line 327
    const-string v10, "StripByteCounts"

    .line 329
    const/16 v12, 0x117

    .line 331
    invoke-direct {v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    .line 334
    const/16 v10, 0xe

    .line 336
    aput-object v5, v1, v10

    .line 338
    new-instance v5, Lv0/a$c;

    .line 340
    const-string v10, "XResolution"

    .line 342
    const/16 v12, 0x11a

    .line 344
    invoke-direct {v5, v10, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 347
    const/16 v10, 0xf

    .line 349
    aput-object v5, v1, v10

    .line 351
    new-instance v5, Lv0/a$c;

    .line 353
    const-string v10, "YResolution"

    .line 355
    const/16 v12, 0x11b

    .line 357
    invoke-direct {v5, v10, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 360
    const/16 v10, 0x10

    .line 362
    aput-object v5, v1, v10

    .line 364
    new-instance v5, Lv0/a$c;

    .line 366
    const-string v10, "PlanarConfiguration"

    .line 368
    const/16 v12, 0x11c

    .line 370
    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 373
    const/16 v10, 0x11

    .line 375
    aput-object v5, v1, v10

    .line 377
    new-instance v5, Lv0/a$c;

    .line 379
    const-string v10, "ResolutionUnit"

    .line 381
    const/16 v12, 0x128

    .line 383
    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 386
    const/16 v10, 0x12

    .line 388
    aput-object v5, v1, v10

    .line 390
    new-instance v5, Lv0/a$c;

    .line 392
    const-string v10, "TransferFunction"

    .line 394
    const/16 v12, 0x12d

    .line 396
    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 399
    const/16 v10, 0x13

    .line 401
    aput-object v5, v1, v10

    .line 403
    new-instance v5, Lv0/a$c;

    .line 405
    const-string v10, "Software"

    .line 407
    const/16 v12, 0x131

    .line 409
    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 412
    const/16 v10, 0x14

    .line 414
    aput-object v5, v1, v10

    .line 416
    new-instance v5, Lv0/a$c;

    .line 418
    const-string v10, "DateTime"

    .line 420
    const/16 v12, 0x132

    .line 422
    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 425
    const/16 v10, 0x15

    .line 427
    aput-object v5, v1, v10

    .line 429
    new-instance v5, Lv0/a$c;

    .line 431
    const-string v12, "Artist"

    .line 433
    const/16 v10, 0x13b

    .line 435
    invoke-direct {v5, v12, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 438
    const/16 v10, 0x16

    .line 440
    aput-object v5, v1, v10

    .line 442
    new-instance v5, Lv0/a$c;

    .line 444
    const-string v12, "WhitePoint"

    .line 446
    const/16 v10, 0x13e

    .line 448
    invoke-direct {v5, v12, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 451
    const/16 v10, 0x17

    .line 453
    aput-object v5, v1, v10

    .line 455
    new-instance v5, Lv0/a$c;

    .line 457
    const-string v12, "PrimaryChromaticities"

    .line 459
    const/16 v2, 0x13f

    .line 461
    invoke-direct {v5, v12, v2, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 464
    const/16 v2, 0x18

    .line 466
    aput-object v5, v1, v2

    .line 468
    new-instance v5, Lv0/a$c;

    .line 470
    const-string v12, "SubIFDPointer"

    .line 472
    const/16 v2, 0x14a

    .line 474
    invoke-direct {v5, v12, v2, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 477
    const/16 v2, 0x19

    .line 479
    aput-object v5, v1, v2

    .line 481
    new-instance v5, Lv0/a$c;

    .line 483
    const-string v12, "JPEGInterchangeFormat"

    .line 485
    const/16 v2, 0x201

    .line 487
    invoke-direct {v5, v12, v2, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 490
    const/16 v2, 0x1a

    .line 492
    aput-object v5, v1, v2

    .line 494
    new-instance v5, Lv0/a$c;

    .line 496
    const-string v12, "JPEGInterchangeFormatLength"

    .line 498
    const/16 v2, 0x202

    .line 500
    invoke-direct {v5, v12, v2, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 503
    const/16 v2, 0x1b

    .line 505
    aput-object v5, v1, v2

    .line 507
    new-instance v5, Lv0/a$c;

    .line 509
    const-string v12, "YCbCrCoefficients"

    .line 511
    const/16 v2, 0x211

    .line 513
    invoke-direct {v5, v12, v2, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 516
    const/16 v2, 0x1c

    .line 518
    aput-object v5, v1, v2

    .line 520
    new-instance v5, Lv0/a$c;

    .line 522
    const-string v12, "YCbCrSubSampling"

    .line 524
    const/16 v2, 0x212

    .line 526
    invoke-direct {v5, v12, v2, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 529
    const/16 v2, 0x1d

    .line 531
    aput-object v5, v1, v2

    .line 533
    new-instance v5, Lv0/a$c;

    .line 535
    const-string v12, "YCbCrPositioning"

    .line 537
    const/16 v2, 0x213

    .line 539
    invoke-direct {v5, v12, v2, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 542
    const/16 v2, 0x1e

    .line 544
    aput-object v5, v1, v2

    .line 546
    new-instance v5, Lv0/a$c;

    .line 548
    const-string v12, "ReferenceBlackWhite"

    .line 550
    const/16 v2, 0x214

    .line 552
    invoke-direct {v5, v12, v2, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 555
    const/16 v2, 0x1f

    .line 557
    aput-object v5, v1, v2

    .line 559
    new-instance v2, Lv0/a$c;

    .line 561
    const-string v5, "Copyright"

    .line 563
    const v12, 0x8298

    .line 566
    invoke-direct {v2, v5, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 569
    const/16 v5, 0x20

    .line 571
    aput-object v2, v1, v5

    .line 573
    new-instance v2, Lv0/a$c;

    .line 575
    const-string v5, "ExifIFDPointer"

    .line 577
    const v12, 0x8769

    .line 580
    invoke-direct {v2, v5, v12, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 583
    const/16 v5, 0x21

    .line 585
    aput-object v2, v1, v5

    .line 587
    new-instance v2, Lv0/a$c;

    .line 589
    const-string v5, "GPSInfoIFDPointer"

    .line 591
    const v12, 0x8825

    .line 594
    invoke-direct {v2, v5, v12, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 597
    const/16 v5, 0x22

    .line 599
    aput-object v2, v1, v5

    .line 601
    new-instance v2, Lv0/a$c;

    .line 603
    const-string v5, "SensorTopBorder"

    .line 605
    invoke-direct {v2, v5, v0, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 608
    const/16 v5, 0x23

    .line 610
    aput-object v2, v1, v5

    .line 612
    new-instance v2, Lv0/a$c;

    .line 614
    const-string v5, "SensorLeftBorder"

    .line 616
    invoke-direct {v2, v5, v14, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 619
    const/16 v5, 0x24

    .line 621
    aput-object v2, v1, v5

    .line 623
    new-instance v2, Lv0/a$c;

    .line 625
    const-string v5, "SensorBottomBorder"

    .line 627
    const/4 v12, 0x6

    .line 628
    invoke-direct {v2, v5, v12, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 631
    const/16 v5, 0x25

    .line 633
    aput-object v2, v1, v5

    .line 635
    new-instance v2, Lv0/a$c;

    .line 637
    const-string v5, "SensorRightBorder"

    .line 639
    const/4 v12, 0x7

    .line 640
    invoke-direct {v2, v5, v12, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 643
    const/16 v5, 0x26

    .line 645
    aput-object v2, v1, v5

    .line 647
    new-instance v2, Lv0/a$c;

    .line 649
    const-string v5, "ISO"

    .line 651
    invoke-direct {v2, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 654
    const/16 v5, 0x27

    .line 656
    aput-object v2, v1, v5

    .line 658
    new-instance v2, Lv0/a$c;

    .line 660
    const-string v5, "JpgFromRaw"

    .line 662
    const/16 v10, 0x2e

    .line 664
    invoke-direct {v2, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 667
    const/16 v5, 0x28

    .line 669
    aput-object v2, v1, v5

    .line 671
    const/16 v2, 0x3b

    .line 673
    new-array v2, v2, [Lv0/a$c;

    .line 675
    new-instance v5, Lv0/a$c;

    .line 677
    const-string v10, "ExposureTime"

    .line 679
    const v12, 0x829a

    .line 682
    invoke-direct {v5, v10, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 685
    aput-object v5, v2, v4

    .line 687
    new-instance v5, Lv0/a$c;

    .line 689
    const-string v10, "FNumber"

    .line 691
    const v12, 0x829d

    .line 694
    invoke-direct {v5, v10, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 697
    const/4 v10, 0x1

    .line 698
    aput-object v5, v2, v10

    .line 700
    new-instance v5, Lv0/a$c;

    .line 702
    const-string v10, "ExposureProgram"

    .line 704
    const v12, 0x8822

    .line 707
    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 710
    aput-object v5, v2, v8

    .line 712
    new-instance v5, Lv0/a$c;

    .line 714
    const-string v10, "SpectralSensitivity"

    .line 716
    const v12, 0x8824

    .line 719
    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 722
    aput-object v5, v2, v6

    .line 724
    new-instance v5, Lv0/a$c;

    .line 726
    const-string v10, "PhotographicSensitivity"

    .line 728
    const v12, 0x8827

    .line 731
    invoke-direct {v5, v10, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 734
    aput-object v5, v2, v0

    .line 736
    new-instance v5, Lv0/a$c;

    .line 738
    const-string v10, "OECF"

    .line 740
    const v12, 0x8828

    .line 743
    const/4 v4, 0x7

    .line 744
    invoke-direct {v5, v10, v12, v4}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 747
    aput-object v5, v2, v14

    .line 749
    new-instance v5, Lv0/a$c;

    .line 751
    const-string v10, "ExifVersion"

    .line 753
    const v12, 0x9000

    .line 756
    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 759
    const/4 v10, 0x6

    .line 760
    aput-object v5, v2, v10

    .line 762
    new-instance v5, Lv0/a$c;

    .line 764
    const-string v10, "DateTimeOriginal"

    .line 766
    const v12, 0x9003

    .line 769
    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 772
    aput-object v5, v2, v4

    .line 774
    new-instance v5, Lv0/a$c;

    .line 776
    const-string v10, "DateTimeDigitized"

    .line 778
    const v12, 0x9004

    .line 781
    invoke-direct {v5, v10, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 784
    const/16 v10, 0x8

    .line 786
    aput-object v5, v2, v10

    .line 788
    new-instance v5, Lv0/a$c;

    .line 790
    const-string v10, "ComponentsConfiguration"

    .line 792
    const v12, 0x9101

    .line 795
    invoke-direct {v5, v10, v12, v4}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 798
    const/16 v4, 0x9

    .line 800
    aput-object v5, v2, v4

    .line 802
    new-instance v4, Lv0/a$c;

    .line 804
    const-string v5, "CompressedBitsPerPixel"

    .line 806
    const v10, 0x9102

    .line 809
    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 812
    const/16 v5, 0xa

    .line 814
    aput-object v4, v2, v5

    .line 816
    new-instance v4, Lv0/a$c;

    .line 818
    const-string v10, "ShutterSpeedValue"

    .line 820
    const v12, 0x9201

    .line 823
    invoke-direct {v4, v10, v12, v5}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 826
    const/16 v10, 0xb

    .line 828
    aput-object v4, v2, v10

    .line 830
    new-instance v4, Lv0/a$c;

    .line 832
    const-string v10, "ApertureValue"

    .line 834
    const v12, 0x9202

    .line 837
    invoke-direct {v4, v10, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 840
    const/16 v10, 0xc

    .line 842
    aput-object v4, v2, v10

    .line 844
    new-instance v4, Lv0/a$c;

    .line 846
    const-string v10, "BrightnessValue"

    .line 848
    const v12, 0x9203

    .line 851
    invoke-direct {v4, v10, v12, v5}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 854
    const/16 v10, 0xd

    .line 856
    aput-object v4, v2, v10

    .line 858
    new-instance v4, Lv0/a$c;

    .line 860
    const-string v10, "ExposureBiasValue"

    .line 862
    const v12, 0x9204

    .line 865
    invoke-direct {v4, v10, v12, v5}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 868
    const/16 v5, 0xe

    .line 870
    aput-object v4, v2, v5

    .line 872
    new-instance v4, Lv0/a$c;

    .line 874
    const-string v5, "MaxApertureValue"

    .line 876
    const v10, 0x9205

    .line 879
    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 882
    const/16 v5, 0xf

    .line 884
    aput-object v4, v2, v5

    .line 886
    new-instance v4, Lv0/a$c;

    .line 888
    const-string v5, "SubjectDistance"

    .line 890
    const v10, 0x9206

    .line 893
    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 896
    const/16 v5, 0x10

    .line 898
    aput-object v4, v2, v5

    .line 900
    new-instance v4, Lv0/a$c;

    .line 902
    const-string v5, "MeteringMode"

    .line 904
    const v10, 0x9207

    .line 907
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 910
    const/16 v5, 0x11

    .line 912
    aput-object v4, v2, v5

    .line 914
    new-instance v4, Lv0/a$c;

    .line 916
    const-string v5, "LightSource"

    .line 918
    const v10, 0x9208

    .line 921
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 924
    const/16 v5, 0x12

    .line 926
    aput-object v4, v2, v5

    .line 928
    new-instance v4, Lv0/a$c;

    .line 930
    const-string v5, "Flash"

    .line 932
    const v10, 0x9209

    .line 935
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 938
    const/16 v5, 0x13

    .line 940
    aput-object v4, v2, v5

    .line 942
    new-instance v4, Lv0/a$c;

    .line 944
    const-string v5, "FocalLength"

    .line 946
    const v10, 0x920a

    .line 949
    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 952
    const/16 v5, 0x14

    .line 954
    aput-object v4, v2, v5

    .line 956
    new-instance v4, Lv0/a$c;

    .line 958
    const-string v5, "SubjectArea"

    .line 960
    const v10, 0x9214

    .line 963
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 966
    const/16 v5, 0x15

    .line 968
    aput-object v4, v2, v5

    .line 970
    new-instance v4, Lv0/a$c;

    .line 972
    const-string v5, "MakerNote"

    .line 974
    const v10, 0x927c

    .line 977
    const/4 v12, 0x7

    .line 978
    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 981
    const/16 v5, 0x16

    .line 983
    aput-object v4, v2, v5

    .line 985
    new-instance v4, Lv0/a$c;

    .line 987
    const-string v5, "UserComment"

    .line 989
    const v10, 0x9286

    .line 992
    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 995
    const/16 v5, 0x17

    .line 997
    aput-object v4, v2, v5

    .line 999
    new-instance v4, Lv0/a$c;

    .line 1001
    const-string v5, "SubSecTime"

    .line 1003
    const v10, 0x9290

    .line 1006
    invoke-direct {v4, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1009
    const/16 v5, 0x18

    .line 1011
    aput-object v4, v2, v5

    .line 1013
    new-instance v4, Lv0/a$c;

    .line 1015
    const-string v5, "SubSecTimeOriginal"

    .line 1017
    const v10, 0x9291

    .line 1020
    invoke-direct {v4, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1023
    const/16 v5, 0x19

    .line 1025
    aput-object v4, v2, v5

    .line 1027
    new-instance v4, Lv0/a$c;

    .line 1029
    const-string v5, "SubSecTimeDigitized"

    .line 1031
    const v10, 0x9292

    .line 1034
    invoke-direct {v4, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1037
    const/16 v5, 0x1a

    .line 1039
    aput-object v4, v2, v5

    .line 1041
    new-instance v4, Lv0/a$c;

    .line 1043
    const-string v5, "FlashpixVersion"

    .line 1045
    const v10, 0xa000

    .line 1048
    const/4 v12, 0x7

    .line 1049
    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1052
    const/16 v5, 0x1b

    .line 1054
    aput-object v4, v2, v5

    .line 1056
    new-instance v4, Lv0/a$c;

    .line 1058
    const-string v5, "ColorSpace"

    .line 1060
    const v10, 0xa001

    .line 1063
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1066
    const/16 v5, 0x1c

    .line 1068
    aput-object v4, v2, v5

    .line 1070
    new-instance v4, Lv0/a$c;

    .line 1072
    const-string v5, "PixelXDimension"

    .line 1074
    const v10, 0xa002

    .line 1077
    invoke-direct {v4, v5, v10}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    .line 1080
    const/16 v5, 0x1d

    .line 1082
    aput-object v4, v2, v5

    .line 1084
    new-instance v4, Lv0/a$c;

    .line 1086
    const-string v5, "PixelYDimension"

    .line 1088
    const v10, 0xa003

    .line 1091
    invoke-direct {v4, v5, v10}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    .line 1094
    const/16 v5, 0x1e

    .line 1096
    aput-object v4, v2, v5

    .line 1098
    new-instance v4, Lv0/a$c;

    .line 1100
    const-string v5, "RelatedSoundFile"

    .line 1102
    const v10, 0xa004

    .line 1105
    invoke-direct {v4, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1108
    const/16 v5, 0x1f

    .line 1110
    aput-object v4, v2, v5

    .line 1112
    new-instance v4, Lv0/a$c;

    .line 1114
    const-string v5, "InteroperabilityIFDPointer"

    .line 1116
    const v10, 0xa005

    .line 1119
    invoke-direct {v4, v5, v10, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1122
    const/16 v5, 0x20

    .line 1124
    aput-object v4, v2, v5

    .line 1126
    new-instance v4, Lv0/a$c;

    .line 1128
    const-string v5, "FlashEnergy"

    .line 1130
    const v10, 0xa20b

    .line 1133
    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1136
    const/16 v5, 0x21

    .line 1138
    aput-object v4, v2, v5

    .line 1140
    new-instance v4, Lv0/a$c;

    .line 1142
    const-string v5, "SpatialFrequencyResponse"

    .line 1144
    const v10, 0xa20c

    .line 1147
    const/4 v12, 0x7

    .line 1148
    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1151
    const/16 v5, 0x22

    .line 1153
    aput-object v4, v2, v5

    .line 1155
    new-instance v4, Lv0/a$c;

    .line 1157
    const-string v5, "FocalPlaneXResolution"

    .line 1159
    const v10, 0xa20e

    .line 1162
    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1165
    const/16 v5, 0x23

    .line 1167
    aput-object v4, v2, v5

    .line 1169
    new-instance v4, Lv0/a$c;

    .line 1171
    const-string v5, "FocalPlaneYResolution"

    .line 1173
    const v10, 0xa20f

    .line 1176
    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1179
    const/16 v5, 0x24

    .line 1181
    aput-object v4, v2, v5

    .line 1183
    new-instance v4, Lv0/a$c;

    .line 1185
    const-string v5, "FocalPlaneResolutionUnit"

    .line 1187
    const v10, 0xa210

    .line 1190
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1193
    const/16 v5, 0x25

    .line 1195
    aput-object v4, v2, v5

    .line 1197
    new-instance v4, Lv0/a$c;

    .line 1199
    const-string v5, "SubjectLocation"

    .line 1201
    const v10, 0xa214

    .line 1204
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1207
    const/16 v5, 0x26

    .line 1209
    aput-object v4, v2, v5

    .line 1211
    new-instance v4, Lv0/a$c;

    .line 1213
    const-string v5, "ExposureIndex"

    .line 1215
    const v10, 0xa215

    .line 1218
    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1221
    const/16 v5, 0x27

    .line 1223
    aput-object v4, v2, v5

    .line 1225
    new-instance v4, Lv0/a$c;

    .line 1227
    const-string v5, "SensingMethod"

    .line 1229
    const v10, 0xa217

    .line 1232
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1235
    const/16 v5, 0x28

    .line 1237
    aput-object v4, v2, v5

    .line 1239
    new-instance v4, Lv0/a$c;

    .line 1241
    const-string v5, "FileSource"

    .line 1243
    const v10, 0xa300

    .line 1246
    const/4 v12, 0x7

    .line 1247
    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1250
    const/16 v5, 0x29

    .line 1252
    aput-object v4, v2, v5

    .line 1254
    new-instance v4, Lv0/a$c;

    .line 1256
    const-string v5, "SceneType"

    .line 1258
    const v10, 0xa301

    .line 1261
    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1264
    const/16 v5, 0x2a

    .line 1266
    aput-object v4, v2, v5

    .line 1268
    new-instance v4, Lv0/a$c;

    .line 1270
    const-string v5, "CFAPattern"

    .line 1272
    const v10, 0xa302

    .line 1275
    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1278
    const/16 v5, 0x2b

    .line 1280
    aput-object v4, v2, v5

    .line 1282
    new-instance v4, Lv0/a$c;

    .line 1284
    const-string v5, "CustomRendered"

    .line 1286
    const v10, 0xa401

    .line 1289
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1292
    const/16 v5, 0x2c

    .line 1294
    aput-object v4, v2, v5

    .line 1296
    new-instance v4, Lv0/a$c;

    .line 1298
    const-string v5, "ExposureMode"

    .line 1300
    const v10, 0xa402

    .line 1303
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1306
    const/16 v5, 0x2d

    .line 1308
    aput-object v4, v2, v5

    .line 1310
    new-instance v4, Lv0/a$c;

    .line 1312
    const-string v5, "WhiteBalance"

    .line 1314
    const v10, 0xa403

    .line 1317
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1320
    const/16 v5, 0x2e

    .line 1322
    aput-object v4, v2, v5

    .line 1324
    new-instance v4, Lv0/a$c;

    .line 1326
    const-string v5, "DigitalZoomRatio"

    .line 1328
    const v10, 0xa404

    .line 1331
    invoke-direct {v4, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1334
    const/16 v5, 0x2f

    .line 1336
    aput-object v4, v2, v5

    .line 1338
    new-instance v4, Lv0/a$c;

    .line 1340
    const-string v5, "FocalLengthIn35mmFilm"

    .line 1342
    const v10, 0xa405

    .line 1345
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1348
    const/16 v5, 0x30

    .line 1350
    aput-object v4, v2, v5

    .line 1352
    new-instance v4, Lv0/a$c;

    .line 1354
    const-string v5, "SceneCaptureType"

    .line 1356
    const v10, 0xa406

    .line 1359
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1362
    const/16 v5, 0x31

    .line 1364
    aput-object v4, v2, v5

    .line 1366
    new-instance v4, Lv0/a$c;

    .line 1368
    const-string v5, "GainControl"

    .line 1370
    const v10, 0xa407

    .line 1373
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1376
    const/16 v5, 0x32

    .line 1378
    aput-object v4, v2, v5

    .line 1380
    new-instance v4, Lv0/a$c;

    .line 1382
    const-string v5, "Contrast"

    .line 1384
    const v10, 0xa408

    .line 1387
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1390
    const/16 v5, 0x33

    .line 1392
    aput-object v4, v2, v5

    .line 1394
    new-instance v4, Lv0/a$c;

    .line 1396
    const-string v5, "Saturation"

    .line 1398
    const v10, 0xa409

    .line 1401
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1404
    const/16 v5, 0x34

    .line 1406
    aput-object v4, v2, v5

    .line 1408
    new-instance v4, Lv0/a$c;

    .line 1410
    const-string v5, "Sharpness"

    .line 1412
    const v10, 0xa40a

    .line 1415
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1418
    const/16 v5, 0x35

    .line 1420
    aput-object v4, v2, v5

    .line 1422
    new-instance v4, Lv0/a$c;

    .line 1424
    const-string v5, "DeviceSettingDescription"

    .line 1426
    const v10, 0xa40b

    .line 1429
    const/4 v12, 0x7

    .line 1430
    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1433
    const/16 v5, 0x36

    .line 1435
    aput-object v4, v2, v5

    .line 1437
    new-instance v4, Lv0/a$c;

    .line 1439
    const-string v5, "SubjectDistanceRange"

    .line 1441
    const v10, 0xa40c

    .line 1444
    invoke-direct {v4, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1447
    const/16 v5, 0x37

    .line 1449
    aput-object v4, v2, v5

    .line 1451
    new-instance v4, Lv0/a$c;

    .line 1453
    const-string v5, "ImageUniqueID"

    .line 1455
    const v10, 0xa420

    .line 1458
    invoke-direct {v4, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1461
    const/16 v5, 0x38

    .line 1463
    aput-object v4, v2, v5

    .line 1465
    new-instance v4, Lv0/a$c;

    .line 1467
    const-string v5, "DNGVersion"

    .line 1469
    const v10, 0xc612

    .line 1472
    const/4 v12, 0x1

    .line 1473
    invoke-direct {v4, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1476
    const/16 v5, 0x39

    .line 1478
    aput-object v4, v2, v5

    .line 1480
    new-instance v4, Lv0/a$c;

    .line 1482
    const-string v5, "DefaultCropSize"

    .line 1484
    const v10, 0xc620

    .line 1487
    invoke-direct {v4, v5, v10}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    .line 1490
    const/16 v5, 0x3a

    .line 1492
    aput-object v4, v2, v5

    .line 1494
    const/16 v4, 0x1f

    .line 1496
    new-array v4, v4, [Lv0/a$c;

    .line 1498
    new-instance v5, Lv0/a$c;

    .line 1500
    const-string v10, "GPSVersionID"

    .line 1502
    const/4 v0, 0x1

    .line 1503
    const/4 v12, 0x0

    .line 1504
    invoke-direct {v5, v10, v12, v0}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1507
    aput-object v5, v4, v12

    .line 1509
    new-instance v5, Lv0/a$c;

    .line 1511
    const-string v10, "GPSLatitudeRef"

    .line 1513
    invoke-direct {v5, v10, v0, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1516
    aput-object v5, v4, v0

    .line 1518
    new-instance v0, Lv0/a$c;

    .line 1520
    const-string v5, "GPSLatitude"

    .line 1522
    invoke-direct {v0, v5, v8, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1525
    aput-object v0, v4, v8

    .line 1527
    new-instance v0, Lv0/a$c;

    .line 1529
    const-string v5, "GPSLongitudeRef"

    .line 1531
    invoke-direct {v0, v5, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1534
    aput-object v0, v4, v6

    .line 1536
    new-instance v0, Lv0/a$c;

    .line 1538
    const-string v5, "GPSLongitude"

    .line 1540
    const/4 v10, 0x4

    .line 1541
    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1544
    aput-object v0, v4, v10

    .line 1546
    new-instance v0, Lv0/a$c;

    .line 1548
    const-string v5, "GPSAltitudeRef"

    .line 1550
    const/4 v10, 0x1

    .line 1551
    invoke-direct {v0, v5, v14, v10}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1554
    aput-object v0, v4, v14

    .line 1556
    new-instance v0, Lv0/a$c;

    .line 1558
    const-string v5, "GPSAltitude"

    .line 1560
    const/4 v10, 0x6

    .line 1561
    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1564
    aput-object v0, v4, v10

    .line 1566
    new-instance v0, Lv0/a$c;

    .line 1568
    const-string v5, "GPSTimeStamp"

    .line 1570
    const/4 v10, 0x7

    .line 1571
    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1574
    aput-object v0, v4, v10

    .line 1576
    new-instance v0, Lv0/a$c;

    .line 1578
    const-string v5, "GPSSatellites"

    .line 1580
    const/16 v10, 0x8

    .line 1582
    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1585
    aput-object v0, v4, v10

    .line 1587
    new-instance v0, Lv0/a$c;

    .line 1589
    const-string v5, "GPSStatus"

    .line 1591
    const/16 v10, 0x9

    .line 1593
    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1596
    aput-object v0, v4, v10

    .line 1598
    new-instance v0, Lv0/a$c;

    .line 1600
    const-string v5, "GPSMeasureMode"

    .line 1602
    const/16 v10, 0xa

    .line 1604
    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1607
    aput-object v0, v4, v10

    .line 1609
    new-instance v0, Lv0/a$c;

    .line 1611
    const-string v5, "GPSDOP"

    .line 1613
    const/16 v10, 0xb

    .line 1615
    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1618
    aput-object v0, v4, v10

    .line 1620
    new-instance v0, Lv0/a$c;

    .line 1622
    const-string v5, "GPSSpeedRef"

    .line 1624
    const/16 v10, 0xc

    .line 1626
    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1629
    aput-object v0, v4, v10

    .line 1631
    new-instance v0, Lv0/a$c;

    .line 1633
    const-string v5, "GPSSpeed"

    .line 1635
    const/16 v10, 0xd

    .line 1637
    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1640
    aput-object v0, v4, v10

    .line 1642
    new-instance v0, Lv0/a$c;

    .line 1644
    const-string v5, "GPSTrackRef"

    .line 1646
    const/16 v10, 0xe

    .line 1648
    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1651
    aput-object v0, v4, v10

    .line 1653
    new-instance v0, Lv0/a$c;

    .line 1655
    const-string v5, "GPSTrack"

    .line 1657
    const/16 v10, 0xf

    .line 1659
    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1662
    aput-object v0, v4, v10

    .line 1664
    new-instance v0, Lv0/a$c;

    .line 1666
    const-string v5, "GPSImgDirectionRef"

    .line 1668
    const/16 v10, 0x10

    .line 1670
    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1673
    aput-object v0, v4, v10

    .line 1675
    new-instance v0, Lv0/a$c;

    .line 1677
    const-string v5, "GPSImgDirection"

    .line 1679
    const/16 v10, 0x11

    .line 1681
    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1684
    aput-object v0, v4, v10

    .line 1686
    new-instance v0, Lv0/a$c;

    .line 1688
    const-string v5, "GPSMapDatum"

    .line 1690
    const/16 v10, 0x12

    .line 1692
    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1695
    aput-object v0, v4, v10

    .line 1697
    new-instance v0, Lv0/a$c;

    .line 1699
    const-string v5, "GPSDestLatitudeRef"

    .line 1701
    const/16 v10, 0x13

    .line 1703
    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1706
    aput-object v0, v4, v10

    .line 1708
    new-instance v0, Lv0/a$c;

    .line 1710
    const-string v5, "GPSDestLatitude"

    .line 1712
    const/16 v10, 0x14

    .line 1714
    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1717
    aput-object v0, v4, v10

    .line 1719
    new-instance v0, Lv0/a$c;

    .line 1721
    const-string v5, "GPSDestLongitudeRef"

    .line 1723
    const/16 v10, 0x15

    .line 1725
    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1728
    aput-object v0, v4, v10

    .line 1730
    new-instance v0, Lv0/a$c;

    .line 1732
    const-string v5, "GPSDestLongitude"

    .line 1734
    const/16 v10, 0x16

    .line 1736
    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1739
    aput-object v0, v4, v10

    .line 1741
    new-instance v0, Lv0/a$c;

    .line 1743
    const-string v5, "GPSDestBearingRef"

    .line 1745
    const/16 v10, 0x17

    .line 1747
    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1750
    aput-object v0, v4, v10

    .line 1752
    new-instance v0, Lv0/a$c;

    .line 1754
    const-string v5, "GPSDestBearing"

    .line 1756
    const/16 v10, 0x18

    .line 1758
    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1761
    aput-object v0, v4, v10

    .line 1763
    new-instance v0, Lv0/a$c;

    .line 1765
    const-string v5, "GPSDestDistanceRef"

    .line 1767
    const/16 v10, 0x19

    .line 1769
    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1772
    aput-object v0, v4, v10

    .line 1774
    new-instance v0, Lv0/a$c;

    .line 1776
    const-string v5, "GPSDestDistance"

    .line 1778
    const/16 v10, 0x1a

    .line 1780
    invoke-direct {v0, v5, v10, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1783
    aput-object v0, v4, v10

    .line 1785
    new-instance v0, Lv0/a$c;

    .line 1787
    const-string v5, "GPSProcessingMethod"

    .line 1789
    const/16 v10, 0x1b

    .line 1791
    const/4 v12, 0x7

    .line 1792
    invoke-direct {v0, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1795
    aput-object v0, v4, v10

    .line 1797
    new-instance v0, Lv0/a$c;

    .line 1799
    const-string v5, "GPSAreaInformation"

    .line 1801
    const/16 v10, 0x1c

    .line 1803
    invoke-direct {v0, v5, v10, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1806
    aput-object v0, v4, v10

    .line 1808
    new-instance v0, Lv0/a$c;

    .line 1810
    const-string v5, "GPSDateStamp"

    .line 1812
    const/16 v10, 0x1d

    .line 1814
    invoke-direct {v0, v5, v10, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1817
    aput-object v0, v4, v10

    .line 1819
    new-instance v0, Lv0/a$c;

    .line 1821
    const-string v5, "GPSDifferential"

    .line 1823
    const/16 v10, 0x1e

    .line 1825
    invoke-direct {v0, v5, v10, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1828
    aput-object v0, v4, v10

    .line 1830
    const/4 v0, 0x1

    .line 1831
    new-array v5, v0, [Lv0/a$c;

    .line 1833
    new-instance v10, Lv0/a$c;

    .line 1835
    const-string v12, "InteroperabilityIndex"

    .line 1837
    invoke-direct {v10, v12, v0, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1840
    const/4 v0, 0x0

    .line 1841
    aput-object v10, v5, v0

    .line 1843
    const/16 v10, 0x25

    .line 1845
    new-array v10, v10, [Lv0/a$c;

    .line 1847
    new-instance v12, Lv0/a$c;

    .line 1849
    const-string v14, "NewSubfileType"

    .line 1851
    const/16 v6, 0xfe

    .line 1853
    const/4 v8, 0x4

    .line 1854
    invoke-direct {v12, v14, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1857
    aput-object v12, v10, v0

    .line 1859
    new-instance v0, Lv0/a$c;

    .line 1861
    const-string v6, "SubfileType"

    .line 1863
    const/16 v12, 0xff

    .line 1865
    invoke-direct {v0, v6, v12, v8}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1868
    const/4 v6, 0x1

    .line 1869
    aput-object v0, v10, v6

    .line 1871
    new-instance v0, Lv0/a$c;

    .line 1873
    const-string v6, "ThumbnailImageWidth"

    .line 1875
    const/16 v8, 0x100

    .line 1877
    invoke-direct {v0, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    .line 1880
    const/4 v6, 0x2

    .line 1881
    aput-object v0, v10, v6

    .line 1883
    new-instance v0, Lv0/a$c;

    .line 1885
    const-string v6, "ThumbnailImageLength"

    .line 1887
    const/16 v8, 0x101

    .line 1889
    invoke-direct {v0, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    .line 1892
    const/4 v6, 0x3

    .line 1893
    aput-object v0, v10, v6

    .line 1895
    new-instance v0, Lv0/a$c;

    .line 1897
    const-string v8, "BitsPerSample"

    .line 1899
    const/16 v12, 0x102

    .line 1901
    invoke-direct {v0, v8, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1904
    const/4 v8, 0x4

    .line 1905
    aput-object v0, v10, v8

    .line 1907
    new-instance v0, Lv0/a$c;

    .line 1909
    const-string v8, "Compression"

    .line 1911
    const/16 v12, 0x103

    .line 1913
    invoke-direct {v0, v8, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1916
    const/4 v8, 0x5

    .line 1917
    aput-object v0, v10, v8

    .line 1919
    new-instance v0, Lv0/a$c;

    .line 1921
    const-string v8, "PhotometricInterpretation"

    .line 1923
    const/16 v12, 0x106

    .line 1925
    invoke-direct {v0, v8, v12, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1928
    const/4 v6, 0x6

    .line 1929
    aput-object v0, v10, v6

    .line 1931
    new-instance v0, Lv0/a$c;

    .line 1933
    const-string v6, "ImageDescription"

    .line 1935
    const/16 v8, 0x10e

    .line 1937
    const/4 v12, 0x2

    .line 1938
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1941
    const/4 v6, 0x7

    .line 1942
    aput-object v0, v10, v6

    .line 1944
    new-instance v0, Lv0/a$c;

    .line 1946
    const-string v6, "Make"

    .line 1948
    const/16 v8, 0x10f

    .line 1950
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1953
    const/16 v6, 0x8

    .line 1955
    aput-object v0, v10, v6

    .line 1957
    new-instance v0, Lv0/a$c;

    .line 1959
    const-string v6, "Model"

    .line 1961
    const/16 v8, 0x110

    .line 1963
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1966
    const/16 v6, 0x9

    .line 1968
    aput-object v0, v10, v6

    .line 1970
    new-instance v0, Lv0/a$c;

    .line 1972
    const-string v6, "StripOffsets"

    .line 1974
    const/16 v8, 0x111

    .line 1976
    invoke-direct {v0, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    .line 1979
    const/16 v6, 0xa

    .line 1981
    aput-object v0, v10, v6

    .line 1983
    new-instance v0, Lv0/a$c;

    .line 1985
    const-string v6, "Orientation"

    .line 1987
    const/16 v8, 0x112

    .line 1989
    const/4 v12, 0x3

    .line 1990
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 1993
    const/16 v6, 0xb

    .line 1995
    aput-object v0, v10, v6

    .line 1997
    new-instance v0, Lv0/a$c;

    .line 1999
    const-string v6, "SamplesPerPixel"

    .line 2001
    const/16 v8, 0x115

    .line 2003
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2006
    const/16 v6, 0xc

    .line 2008
    aput-object v0, v10, v6

    .line 2010
    new-instance v0, Lv0/a$c;

    .line 2012
    const-string v6, "RowsPerStrip"

    .line 2014
    const/16 v8, 0x116

    .line 2016
    invoke-direct {v0, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    .line 2019
    const/16 v6, 0xd

    .line 2021
    aput-object v0, v10, v6

    .line 2023
    new-instance v0, Lv0/a$c;

    .line 2025
    const-string v6, "StripByteCounts"

    .line 2027
    const/16 v8, 0x117

    .line 2029
    invoke-direct {v0, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    .line 2032
    const/16 v6, 0xe

    .line 2034
    aput-object v0, v10, v6

    .line 2036
    new-instance v0, Lv0/a$c;

    .line 2038
    const-string v6, "XResolution"

    .line 2040
    const/16 v8, 0x11a

    .line 2042
    const/4 v12, 0x5

    .line 2043
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2046
    const/16 v6, 0xf

    .line 2048
    aput-object v0, v10, v6

    .line 2050
    new-instance v0, Lv0/a$c;

    .line 2052
    const-string v6, "YResolution"

    .line 2054
    const/16 v8, 0x11b

    .line 2056
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2059
    const/16 v6, 0x10

    .line 2061
    aput-object v0, v10, v6

    .line 2063
    new-instance v0, Lv0/a$c;

    .line 2065
    const-string v6, "PlanarConfiguration"

    .line 2067
    const/16 v8, 0x11c

    .line 2069
    const/4 v12, 0x3

    .line 2070
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2073
    const/16 v6, 0x11

    .line 2075
    aput-object v0, v10, v6

    .line 2077
    new-instance v0, Lv0/a$c;

    .line 2079
    const-string v6, "ResolutionUnit"

    .line 2081
    const/16 v8, 0x128

    .line 2083
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2086
    const/16 v6, 0x12

    .line 2088
    aput-object v0, v10, v6

    .line 2090
    new-instance v0, Lv0/a$c;

    .line 2092
    const-string v6, "TransferFunction"

    .line 2094
    const/16 v8, 0x12d

    .line 2096
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2099
    const/16 v6, 0x13

    .line 2101
    aput-object v0, v10, v6

    .line 2103
    new-instance v0, Lv0/a$c;

    .line 2105
    const-string v6, "Software"

    .line 2107
    const/16 v8, 0x131

    .line 2109
    const/4 v12, 0x2

    .line 2110
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2113
    const/16 v6, 0x14

    .line 2115
    aput-object v0, v10, v6

    .line 2117
    new-instance v0, Lv0/a$c;

    .line 2119
    const-string v6, "DateTime"

    .line 2121
    const/16 v8, 0x132

    .line 2123
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2126
    const/16 v6, 0x15

    .line 2128
    aput-object v0, v10, v6

    .line 2130
    new-instance v0, Lv0/a$c;

    .line 2132
    const-string v6, "Artist"

    .line 2134
    const/16 v8, 0x13b

    .line 2136
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2139
    const/16 v6, 0x16

    .line 2141
    aput-object v0, v10, v6

    .line 2143
    new-instance v0, Lv0/a$c;

    .line 2145
    const-string v6, "WhitePoint"

    .line 2147
    const/16 v8, 0x13e

    .line 2149
    const/4 v12, 0x5

    .line 2150
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2153
    const/16 v6, 0x17

    .line 2155
    aput-object v0, v10, v6

    .line 2157
    new-instance v0, Lv0/a$c;

    .line 2159
    const-string v6, "PrimaryChromaticities"

    .line 2161
    const/16 v8, 0x13f

    .line 2163
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2166
    const/16 v6, 0x18

    .line 2168
    aput-object v0, v10, v6

    .line 2170
    new-instance v0, Lv0/a$c;

    .line 2172
    const-string v6, "SubIFDPointer"

    .line 2174
    const/16 v8, 0x14a

    .line 2176
    const/4 v12, 0x4

    .line 2177
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2180
    const/16 v6, 0x19

    .line 2182
    aput-object v0, v10, v6

    .line 2184
    new-instance v0, Lv0/a$c;

    .line 2186
    const-string v6, "JPEGInterchangeFormat"

    .line 2188
    const/16 v8, 0x201

    .line 2190
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2193
    const/16 v6, 0x1a

    .line 2195
    aput-object v0, v10, v6

    .line 2197
    new-instance v0, Lv0/a$c;

    .line 2199
    const-string v6, "JPEGInterchangeFormatLength"

    .line 2201
    const/16 v8, 0x202

    .line 2203
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2206
    const/16 v6, 0x1b

    .line 2208
    aput-object v0, v10, v6

    .line 2210
    new-instance v0, Lv0/a$c;

    .line 2212
    const-string v6, "YCbCrCoefficients"

    .line 2214
    const/16 v8, 0x211

    .line 2216
    const/4 v12, 0x5

    .line 2217
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2220
    const/16 v6, 0x1c

    .line 2222
    aput-object v0, v10, v6

    .line 2224
    new-instance v0, Lv0/a$c;

    .line 2226
    const-string v6, "YCbCrSubSampling"

    .line 2228
    const/16 v8, 0x212

    .line 2230
    const/4 v12, 0x3

    .line 2231
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2234
    const/16 v6, 0x1d

    .line 2236
    aput-object v0, v10, v6

    .line 2238
    new-instance v0, Lv0/a$c;

    .line 2240
    const-string v6, "YCbCrPositioning"

    .line 2242
    const/16 v8, 0x213

    .line 2244
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2247
    const/16 v6, 0x1e

    .line 2249
    aput-object v0, v10, v6

    .line 2251
    new-instance v0, Lv0/a$c;

    .line 2253
    const-string v6, "ReferenceBlackWhite"

    .line 2255
    const/16 v8, 0x214

    .line 2257
    const/4 v12, 0x5

    .line 2258
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2261
    const/16 v6, 0x1f

    .line 2263
    aput-object v0, v10, v6

    .line 2265
    new-instance v0, Lv0/a$c;

    .line 2267
    const-string v6, "Copyright"

    .line 2269
    const v8, 0x8298

    .line 2272
    const/4 v12, 0x2

    .line 2273
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2276
    const/16 v6, 0x20

    .line 2278
    aput-object v0, v10, v6

    .line 2280
    new-instance v0, Lv0/a$c;

    .line 2282
    const-string v6, "ExifIFDPointer"

    .line 2284
    const v8, 0x8769

    .line 2287
    const/4 v12, 0x4

    .line 2288
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2291
    const/16 v6, 0x21

    .line 2293
    aput-object v0, v10, v6

    .line 2295
    new-instance v0, Lv0/a$c;

    .line 2297
    const-string v6, "GPSInfoIFDPointer"

    .line 2299
    const v8, 0x8825

    .line 2302
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2305
    const/16 v6, 0x22

    .line 2307
    aput-object v0, v10, v6

    .line 2309
    new-instance v0, Lv0/a$c;

    .line 2311
    const-string v6, "DNGVersion"

    .line 2313
    const v8, 0xc612

    .line 2316
    const/4 v12, 0x1

    .line 2317
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2320
    const/16 v6, 0x23

    .line 2322
    aput-object v0, v10, v6

    .line 2324
    new-instance v0, Lv0/a$c;

    .line 2326
    const-string v6, "DefaultCropSize"

    .line 2328
    const v8, 0xc620

    .line 2331
    invoke-direct {v0, v6, v8}, Lv0/a$c;-><init>(Ljava/lang/String;I)V

    .line 2334
    const/16 v6, 0x24

    .line 2336
    aput-object v0, v10, v6

    .line 2338
    new-instance v0, Lv0/a$c;

    .line 2340
    const-string v6, "StripOffsets"

    .line 2342
    const/16 v8, 0x111

    .line 2344
    const/4 v12, 0x3

    .line 2345
    invoke-direct {v0, v6, v8, v12}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2348
    sput-object v0, Lv0/a;->s:Lv0/a$c;

    .line 2350
    new-array v0, v12, [Lv0/a$c;

    .line 2352
    new-instance v6, Lv0/a$c;

    .line 2354
    const-string v8, "ThumbnailImage"

    .line 2356
    const/16 v12, 0x100

    .line 2358
    const/4 v14, 0x7

    .line 2359
    invoke-direct {v6, v8, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2362
    const/4 v8, 0x0

    .line 2363
    aput-object v6, v0, v8

    .line 2365
    new-instance v6, Lv0/a$c;

    .line 2367
    const-string v8, "CameraSettingsIFDPointer"

    .line 2369
    const/16 v12, 0x2020

    .line 2371
    const/4 v14, 0x4

    .line 2372
    invoke-direct {v6, v8, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2375
    const/4 v8, 0x1

    .line 2376
    aput-object v6, v0, v8

    .line 2378
    new-instance v6, Lv0/a$c;

    .line 2380
    const-string v8, "ImageProcessingIFDPointer"

    .line 2382
    const/16 v12, 0x2040

    .line 2384
    invoke-direct {v6, v8, v12, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2387
    const/4 v8, 0x2

    .line 2388
    aput-object v6, v0, v8

    .line 2390
    new-array v6, v8, [Lv0/a$c;

    .line 2392
    new-instance v8, Lv0/a$c;

    .line 2394
    const-string v12, "PreviewImageStart"

    .line 2396
    move-object/from16 v17, v11

    .line 2398
    const/16 v11, 0x101

    .line 2400
    invoke-direct {v8, v12, v11, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2403
    const/4 v11, 0x0

    .line 2404
    aput-object v8, v6, v11

    .line 2406
    new-instance v8, Lv0/a$c;

    .line 2408
    const-string v12, "PreviewImageLength"

    .line 2410
    const/16 v11, 0x102

    .line 2412
    invoke-direct {v8, v12, v11, v14}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2415
    const/4 v11, 0x1

    .line 2416
    aput-object v8, v6, v11

    .line 2418
    new-array v8, v11, [Lv0/a$c;

    .line 2420
    new-instance v12, Lv0/a$c;

    .line 2422
    const-string v14, "AspectFrame"

    .line 2424
    const/16 v11, 0x1113

    .line 2426
    move-object/from16 v21, v13

    .line 2428
    const/4 v13, 0x3

    .line 2429
    invoke-direct {v12, v14, v11, v13}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2432
    const/4 v11, 0x0

    .line 2433
    aput-object v12, v8, v11

    .line 2435
    const/4 v12, 0x1

    .line 2436
    new-array v14, v12, [Lv0/a$c;

    .line 2438
    new-instance v12, Lv0/a$c;

    .line 2440
    const-string v11, "ColorSpace"

    .line 2442
    move-object/from16 v22, v7

    .line 2444
    const/16 v7, 0x37

    .line 2446
    invoke-direct {v12, v11, v7, v13}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2449
    const/4 v7, 0x0

    .line 2450
    aput-object v12, v14, v7

    .line 2452
    const/16 v11, 0xa

    .line 2454
    new-array v12, v11, [[Lv0/a$c;

    .line 2456
    aput-object v1, v12, v7

    .line 2458
    const/4 v7, 0x1

    .line 2459
    aput-object v2, v12, v7

    .line 2461
    const/4 v2, 0x2

    .line 2462
    aput-object v4, v12, v2

    .line 2464
    aput-object v5, v12, v13

    .line 2466
    const/4 v2, 0x4

    .line 2467
    aput-object v10, v12, v2

    .line 2469
    const/4 v4, 0x5

    .line 2470
    aput-object v1, v12, v4

    .line 2472
    const/4 v1, 0x6

    .line 2473
    aput-object v0, v12, v1

    .line 2475
    const/4 v0, 0x7

    .line 2476
    aput-object v6, v12, v0

    .line 2478
    const/16 v0, 0x8

    .line 2480
    aput-object v8, v12, v0

    .line 2482
    const/16 v0, 0x9

    .line 2484
    aput-object v14, v12, v0

    .line 2486
    sput-object v12, Lv0/a;->t:[[Lv0/a$c;

    .line 2488
    new-array v0, v1, [Lv0/a$c;

    .line 2490
    new-instance v1, Lv0/a$c;

    .line 2492
    const-string v4, "SubIFDPointer"

    .line 2494
    const/16 v5, 0x14a

    .line 2496
    invoke-direct {v1, v4, v5, v2}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2499
    const/4 v4, 0x0

    .line 2500
    aput-object v1, v0, v4

    .line 2502
    new-instance v1, Lv0/a$c;

    .line 2504
    const-string v4, "ExifIFDPointer"

    .line 2506
    const v5, 0x8769

    .line 2509
    invoke-direct {v1, v4, v5, v2}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2512
    const/4 v4, 0x1

    .line 2513
    aput-object v1, v0, v4

    .line 2515
    new-instance v1, Lv0/a$c;

    .line 2517
    const-string v4, "GPSInfoIFDPointer"

    .line 2519
    const v5, 0x8825

    .line 2522
    invoke-direct {v1, v4, v5, v2}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2525
    const/4 v4, 0x2

    .line 2526
    aput-object v1, v0, v4

    .line 2528
    new-instance v1, Lv0/a$c;

    .line 2530
    const-string v4, "InteroperabilityIFDPointer"

    .line 2532
    const v5, 0xa005

    .line 2535
    invoke-direct {v1, v4, v5, v2}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2538
    const/4 v4, 0x3

    .line 2539
    aput-object v1, v0, v4

    .line 2541
    new-instance v1, Lv0/a$c;

    .line 2543
    const-string v4, "CameraSettingsIFDPointer"

    .line 2545
    const/16 v5, 0x2020

    .line 2547
    const/4 v6, 0x1

    .line 2548
    invoke-direct {v1, v4, v5, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2551
    aput-object v1, v0, v2

    .line 2553
    new-instance v1, Lv0/a$c;

    .line 2555
    const-string v2, "ImageProcessingIFDPointer"

    .line 2557
    const/16 v4, 0x2040

    .line 2559
    invoke-direct {v1, v2, v4, v6}, Lv0/a$c;-><init>(Ljava/lang/String;II)V

    .line 2562
    const/4 v2, 0x5

    .line 2563
    aput-object v1, v0, v2

    .line 2565
    sput-object v0, Lv0/a;->u:[Lv0/a$c;

    .line 2567
    const/16 v0, 0xa

    .line 2569
    new-array v1, v0, [Ljava/util/HashMap;

    .line 2571
    sput-object v1, Lv0/a;->v:[Ljava/util/HashMap;

    .line 2573
    new-array v0, v0, [Ljava/util/HashMap;

    .line 2575
    sput-object v0, Lv0/a;->w:[Ljava/util/HashMap;

    .line 2577
    new-instance v0, Ljava/util/HashSet;

    .line 2579
    const-string v1, "FNumber"

    .line 2581
    const-string v2, "DigitalZoomRatio"

    .line 2583
    const-string v4, "ExposureTime"

    .line 2585
    const-string v5, "SubjectDistance"

    .line 2587
    const-string v6, "GPSTimeStamp"

    .line 2589
    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/String;

    .line 2592
    move-result-object v1

    .line 2593
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2596
    move-result-object v1

    .line 2597
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2600
    sput-object v0, Lv0/a;->x:Ljava/util/HashSet;

    .line 2602
    new-instance v0, Ljava/util/HashMap;

    .line 2604
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2607
    sput-object v0, Lv0/a;->y:Ljava/util/HashMap;

    .line 2609
    const-string v0, "US-ASCII"

    .line 2611
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 2614
    move-result-object v0

    .line 2615
    sput-object v0, Lv0/a;->z:Ljava/nio/charset/Charset;

    .line 2617
    const-string v1, "Exif\u0000\u0000"

    .line 2619
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 2622
    move-result-object v0

    .line 2623
    sput-object v0, Lv0/a;->A:[B

    .line 2625
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2627
    const-string v1, "yyyy:MM:dd HH:mm:ss"

    .line 2629
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2632
    const-string v1, "UTC"

    .line 2634
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 2637
    move-result-object v1

    .line 2638
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2641
    const/4 v12, 0x0

    .line 2642
    :goto_a51
    sget-object v0, Lv0/a;->t:[[Lv0/a$c;

    .line 2644
    array-length v1, v0

    .line 2645
    if-ge v12, v1, :cond_a8c

    .line 2647
    sget-object v1, Lv0/a;->v:[Ljava/util/HashMap;

    .line 2649
    new-instance v2, Ljava/util/HashMap;

    .line 2651
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2654
    aput-object v2, v1, v12

    .line 2656
    sget-object v1, Lv0/a;->w:[Ljava/util/HashMap;

    .line 2658
    new-instance v2, Ljava/util/HashMap;

    .line 2660
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2663
    aput-object v2, v1, v12

    .line 2665
    aget-object v0, v0, v12

    .line 2667
    array-length v1, v0

    .line 2668
    const/4 v2, 0x0

    .line 2669
    :goto_a6c
    if-ge v2, v1, :cond_a89

    .line 2671
    aget-object v4, v0, v2

    .line 2673
    sget-object v5, Lv0/a;->v:[Ljava/util/HashMap;

    .line 2675
    aget-object v5, v5, v12

    .line 2677
    iget v6, v4, Lv0/a$c;->a:I

    .line 2679
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2682
    move-result-object v6

    .line 2683
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2686
    sget-object v5, Lv0/a;->w:[Ljava/util/HashMap;

    .line 2688
    aget-object v5, v5, v12

    .line 2690
    iget-object v6, v4, Lv0/a$c;->b:Ljava/lang/String;

    .line 2692
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2695
    add-int/lit8 v2, v2, 0x1

    .line 2697
    goto :goto_a6c

    .line 2698
    :cond_a89
    add-int/lit8 v12, v12, 0x1

    .line 2700
    goto :goto_a51

    .line 2701
    :cond_a8c
    sget-object v0, Lv0/a;->y:Ljava/util/HashMap;

    .line 2703
    sget-object v1, Lv0/a;->u:[Lv0/a$c;

    .line 2705
    const/4 v2, 0x0

    .line 2706
    aget-object v2, v1, v2

    .line 2708
    iget v2, v2, Lv0/a$c;->a:I

    .line 2710
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2713
    move-result-object v2

    .line 2714
    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2717
    const/4 v2, 0x1

    .line 2718
    aget-object v2, v1, v2

    .line 2720
    iget v2, v2, Lv0/a$c;->a:I

    .line 2722
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2725
    move-result-object v2

    .line 2726
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2729
    const/4 v2, 0x2

    .line 2730
    aget-object v2, v1, v2

    .line 2732
    iget v2, v2, Lv0/a$c;->a:I

    .line 2734
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2737
    move-result-object v2

    .line 2738
    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2741
    const/4 v2, 0x3

    .line 2742
    aget-object v2, v1, v2

    .line 2744
    iget v2, v2, Lv0/a$c;->a:I

    .line 2746
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2749
    move-result-object v2

    .line 2750
    move-object/from16 v3, v22

    .line 2752
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    const/4 v2, 0x4

    .line 2756
    aget-object v2, v1, v2

    .line 2758
    iget v2, v2, Lv0/a$c;->a:I

    .line 2760
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2763
    move-result-object v2

    .line 2764
    move-object/from16 v3, v21

    .line 2766
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2769
    const/4 v2, 0x5

    .line 2770
    aget-object v1, v1, v2

    .line 2772
    iget v1, v1, Lv0/a$c;->a:I

    .line 2774
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2777
    move-result-object v1

    .line 2778
    move-object/from16 v2, v17

    .line 2780
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2783
    const-string v0, ".*[1-9].*"

    .line 2785
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2788
    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 2790
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2793
    return-void

    .line 2794
    nop

    .line 2795
    :array_aea
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    .line 2805
    :array_af4
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 2811
    :array_afa
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    .line 2818
    nop

    .line 2819
    :array_b02
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    .line 2828
    nop

    :array_b0c
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_b2c
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lv0/a;->t:[[Lv0/a$c;

    .line 6
    array-length v1, v0

    .line 7
    new-array v1, v1, [Ljava/util/HashMap;

    .line 9
    iput-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 11
    new-instance v1, Ljava/util/HashSet;

    .line 13
    array-length v0, v0

    .line 14
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 17
    iput-object v1, p0, Lv0/a;->d:Ljava/util/HashSet;

    .line 19
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 21
    iput-object v0, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 23
    if-eqz p1, :cond_70

    .line 25
    const/4 v0, 0x0

    .line 26
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    .line 28
    if-eqz v1, :cond_23

    .line 30
    move-object v0, p1

    .line 31
    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    .line 33
    iput-object v0, p0, Lv0/a;->a:Landroid/content/res/AssetManager$AssetInputStream;

    .line 35
    goto :goto_25

    .line 36
    :cond_23
    iput-object v0, p0, Lv0/a;->a:Landroid/content/res/AssetManager$AssetInputStream;

    .line 38
    :goto_25
    const/4 v0, 0x0

    .line 39
    move v1, v0

    .line 40
    :goto_27
    :try_start_27
    sget-object v2, Lv0/a;->t:[[Lv0/a$c;

    .line 42
    array-length v2, v2

    .line 43
    if-ge v1, v2, :cond_38

    .line 45
    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 47
    new-instance v3, Ljava/util/HashMap;

    .line 49
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 52
    aput-object v3, v2, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_27

    .line 57
    :cond_38
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 59
    const/16 v2, 0x1388

    .line 61
    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 64
    invoke-virtual {p0, v1}, Lv0/a;->f(Ljava/io/BufferedInputStream;)I

    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lv0/a;->b:I

    .line 70
    new-instance p1, Lv0/a$a;

    .line 72
    invoke-direct {p1, v1}, Lv0/a$a;-><init>(Ljava/io/InputStream;)V

    .line 75
    iget v1, p0, Lv0/a;->b:I

    .line 77
    packed-switch v1, :pswitch_data_78

    .line 80
    goto :goto_63

    .line 81
    :pswitch_50  #0xa
    invoke-virtual {p0, p1}, Lv0/a;->j(Lv0/a$a;)V

    .line 84
    goto :goto_63

    .line 85
    :pswitch_54  #0x9
    invoke-virtual {p0, p1}, Lv0/a;->h(Lv0/a$a;)V

    .line 88
    goto :goto_63

    .line 89
    :pswitch_58  #0x7
    invoke-virtual {p0, p1}, Lv0/a;->g(Lv0/a$a;)V

    .line 92
    goto :goto_63

    .line 93
    :pswitch_5c  #0x4
    invoke-virtual {p0, p1, v0, v0}, Lv0/a;->e(Lv0/a$a;II)V

    .line 96
    goto :goto_63

    .line 97
    :pswitch_60  #0x0, 0x1, 0x2, 0x3, 0x5, 0x6, 0x8, 0xb
    invoke-virtual {p0, p1}, Lv0/a;->i(Lv0/a$a;)V

    .line 100
    :goto_63
    invoke-virtual {p0, p1}, Lv0/a;->p(Lv0/a$a;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_66} :catch_6c
    .catchall {:try_start_27 .. :try_end_66} :catchall_67

    .line 103
    goto :goto_6c

    .line 104
    :catchall_67
    move-exception p1

    .line 105
    invoke-virtual {p0}, Lv0/a;->a()V

    .line 108
    throw p1

    .line 109
    :catch_6c
    :goto_6c
    invoke-virtual {p0}, Lv0/a;->a()V

    .line 112
    return-void

    .line 113
    :cond_70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 115
    const-string v0, "inputStream cannot be null"

    .line 117
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    throw p1

    .line 121
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_60  #00000000
        :pswitch_60  #00000001
        :pswitch_60  #00000002
        :pswitch_60  #00000003
        :pswitch_5c  #00000004
        :pswitch_60  #00000005
        :pswitch_60  #00000006
        :pswitch_58  #00000007
        :pswitch_60  #00000008
        :pswitch_54  #00000009
        :pswitch_50  #0000000a
        :pswitch_60  #0000000b
    .end packed-switch
.end method

.method public static b(Ljava/io/Serializable;)[J
    .registers 5

    .line 1
    instance-of v0, p0, [I

    .line 3
    if-eqz v0, :cond_16

    .line 5
    check-cast p0, [I

    .line 7
    array-length v0, p0

    .line 8
    new-array v0, v0, [J

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    array-length v2, p0

    .line 12
    if-ge v1, v2, :cond_15

    .line 14
    aget v2, p0, v1

    .line 16
    int-to-long v2, v2

    .line 17
    aput-wide v2, v0, v1

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_a

    .line 22
    :cond_15
    return-object v0

    .line 23
    :cond_16
    instance-of v0, p0, [J

    .line 25
    if-eqz v0, :cond_1d

    .line 27
    check-cast p0, [J

    .line 29
    return-object p0

    .line 30
    :cond_1d
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static n(Lv0/a$a;)Ljava/nio/ByteOrder;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lv0/a$a;->readShort()S

    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x4949

    .line 7
    if-eq p0, v0, :cond_26

    .line 9
    const/16 v0, 0x4d4d

    .line 11
    if-ne p0, v0, :cond_f

    .line 13
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 15
    return-object p0

    .line 16
    :cond_f
    new-instance v0, Ljava/io/IOException;

    .line 18
    const-string v1, "Invalid byte order: "

    .line 20
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    throw v0

    .line 39
    :cond_26
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 41
    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 7

    .line 1
    const-string v0, "DateTimeOriginal"

    .line 3
    invoke-virtual {p0, v0}, Lv0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1c

    .line 10
    const-string v2, "DateTime"

    .line 12
    invoke-virtual {p0, v2}, Lv0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_1c

    .line 18
    iget-object v3, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 20
    aget-object v3, v3, v1

    .line 22
    invoke-static {v0}, Lv0/a$b;->a(Ljava/lang/String;)Lv0/a$b;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_1c
    const-string v0, "ImageWidth"

    .line 31
    invoke-virtual {p0, v0}, Lv0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    const-wide/16 v3, 0x0

    .line 37
    if-nez v2, :cond_33

    .line 39
    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 41
    aget-object v2, v2, v1

    .line 43
    iget-object v5, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 45
    invoke-static {v3, v4, v5}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_33
    const-string v0, "ImageLength"

    .line 54
    invoke-virtual {p0, v0}, Lv0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_48

    .line 60
    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 62
    aget-object v2, v2, v1

    .line 64
    iget-object v5, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 66
    invoke-static {v3, v4, v5}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_48
    const-string v0, "Orientation"

    .line 75
    invoke-virtual {p0, v0}, Lv0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    if-nez v2, :cond_5d

    .line 81
    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 83
    aget-object v1, v2, v1

    .line 85
    iget-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 87
    invoke-static {v3, v4, v2}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_5d
    const-string v0, "LightSource"

    .line 96
    invoke-virtual {p0, v0}, Lv0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    if-nez v1, :cond_73

    .line 102
    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 104
    const/4 v2, 0x1

    .line 105
    aget-object v1, v1, v2

    .line 107
    iget-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 109
    invoke-static {v3, v4, v2}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_73
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-virtual {p0, p1}, Lv0/a;->d(Ljava/lang/String;)Lv0/a$b;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a7

    .line 8
    sget-object v2, Lv0/a;->x:Ljava/util/HashSet;

    .line 10
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_16

    .line 16
    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 18
    invoke-virtual {v0, p1}, Lv0/a$b;->g(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_16
    const-string v2, "GPSTimeStamp"

    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_9c

    .line 31
    iget p1, v0, Lv0/a$b;->a:I

    .line 33
    const/4 v2, 0x5

    .line 34
    const-string v3, "ExifInterface"

    .line 36
    if-eq p1, v2, :cond_3c

    .line 38
    const/16 v2, 0xa

    .line 40
    if-eq p1, v2, :cond_3c

    .line 42
    const-string p1, "GPS Timestamp format is not rational. format="

    .line 44
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object p1

    .line 48
    iget v0, v0, Lv0/a$b;->a:I

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-object v1

    .line 61
    :cond_3c
    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 63
    invoke-virtual {v0, p1}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 66
    move-result-object p1

    .line 67
    check-cast p1, [Lv0/a$d;

    .line 69
    if-eqz p1, :cond_87

    .line 71
    array-length v0, p1

    .line 72
    const/4 v2, 0x3

    .line 73
    if-eq v0, v2, :cond_4b

    .line 75
    goto :goto_87

    .line 76
    :cond_4b
    new-array v0, v2, [Ljava/lang/Object;

    .line 78
    const/4 v1, 0x0

    .line 79
    aget-object v2, p1, v1

    .line 81
    iget-wide v3, v2, Lv0/a$d;->a:J

    .line 83
    long-to-float v3, v3

    .line 84
    iget-wide v4, v2, Lv0/a$d;->b:J

    .line 86
    long-to-float v2, v4

    .line 87
    div-float/2addr v3, v2

    .line 88
    float-to-int v2, v3

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v2

    .line 93
    aput-object v2, v0, v1

    .line 95
    const/4 v1, 0x1

    .line 96
    aget-object v2, p1, v1

    .line 98
    iget-wide v3, v2, Lv0/a$d;->a:J

    .line 100
    long-to-float v3, v3

    .line 101
    iget-wide v4, v2, Lv0/a$d;->b:J

    .line 103
    long-to-float v2, v4

    .line 104
    div-float/2addr v3, v2

    .line 105
    float-to-int v2, v3

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v2

    .line 110
    aput-object v2, v0, v1

    .line 112
    const/4 v1, 0x2

    .line 113
    aget-object p1, p1, v1

    .line 115
    iget-wide v2, p1, Lv0/a$d;->a:J

    .line 117
    long-to-float v2, v2

    .line 118
    iget-wide v3, p1, Lv0/a$d;->b:J

    .line 120
    long-to-float p1, v3

    .line 121
    div-float/2addr v2, p1

    .line 122
    float-to-int p1, v2

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object p1

    .line 127
    aput-object p1, v0, v1

    .line 129
    const-string p1, "%02d:%02d:%02d"

    .line 131
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    return-object p1

    .line 136
    :cond_87
    :goto_87
    const-string v0, "Invalid GPS Timestamp array. array="

    .line 138
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    move-result-object v0

    .line 142
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object v1

    .line 157
    :cond_9c
    :try_start_9c
    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 159
    invoke-virtual {v0, p1}, Lv0/a$b;->e(Ljava/nio/ByteOrder;)D

    .line 162
    move-result-wide v2

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 166
    move-result-object p1
    :try_end_a6
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_a6} :catch_a7

    .line 167
    return-object p1

    .line 168
    :catch_a7
    :cond_a7
    return-object v1
.end method

.method public final d(Ljava/lang/String;)Lv0/a$b;
    .registers 4

    .line 1
    const-string v0, "ISOSpeedRatings"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const-string p1, "PhotographicSensitivity"

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    sget-object v1, Lv0/a;->t:[[Lv0/a$c;

    .line 14
    array-length v1, v1

    .line 15
    if-ge v0, v1, :cond_20

    .line 17
    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 19
    aget-object v1, v1, v0

    .line 21
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lv0/a$b;

    .line 27
    if-eqz v1, :cond_1d

    .line 29
    return-object v1

    .line 30
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    .line 32
    goto :goto_b

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method public final e(Lv0/a$a;II)V
    .registers 13

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 3
    iput-object v0, p1, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 5
    int-to-long v0, p2

    .line 6
    invoke-virtual {p1, v0, v1}, Lv0/a$a;->seek(J)V

    .line 9
    invoke-virtual {p1}, Lv0/a$a;->readByte()B

    .line 12
    move-result v0

    .line 13
    const-string v1, "Invalid marker: "

    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne v0, v2, :cond_14f

    .line 18
    const/4 v3, 0x1

    .line 19
    add-int/2addr p2, v3

    .line 20
    invoke-virtual {p1}, Lv0/a$a;->readByte()B

    .line 23
    move-result v4

    .line 24
    const/16 v5, -0x28

    .line 26
    if-ne v4, v5, :cond_138

    .line 28
    add-int/2addr p2, v3

    .line 29
    :goto_1c
    invoke-virtual {p1}, Lv0/a$a;->readByte()B

    .line 32
    move-result v0

    .line 33
    if-ne v0, v2, :cond_11f

    .line 35
    add-int/2addr p2, v3

    .line 36
    invoke-virtual {p1}, Lv0/a$a;->readByte()B

    .line 39
    move-result v0

    .line 40
    add-int/2addr p2, v3

    .line 41
    const/16 v1, -0x27

    .line 43
    if-eq v0, v1, :cond_11a

    .line 45
    const/16 v1, -0x26

    .line 47
    if-ne v0, v1, :cond_32

    .line 49
    goto/16 :goto_11a

    .line 51
    :cond_32
    invoke-virtual {p1}, Lv0/a$a;->readUnsignedShort()I

    .line 54
    move-result v1

    .line 55
    const/4 v4, -0x2

    .line 56
    add-int/2addr v1, v4

    .line 57
    add-int/lit8 p2, p2, 0x2

    .line 59
    const-string v5, "Invalid length"

    .line 61
    if-ltz v1, :cond_114

    .line 63
    const/16 v6, -0x1f

    .line 65
    const/4 v7, 0x0

    .line 66
    const-string v8, "Invalid exif"

    .line 68
    if-eq v0, v6, :cond_b7

    .line 70
    if-eq v0, v4, :cond_8e

    .line 72
    packed-switch v0, :pswitch_data_166

    .line 75
    packed-switch v0, :pswitch_data_172

    .line 78
    packed-switch v0, :pswitch_data_17c

    .line 81
    packed-switch v0, :pswitch_data_186

    .line 84
    goto/16 :goto_e9

    .line 86
    :pswitch_55  #0xffffffc0, 0xffffffc1, 0xffffffc2, 0xffffffc3, 0xffffffc5, 0xffffffc6, 0xffffffc7, 0xffffffc9, 0xffffffca, 0xffffffcb, 0xffffffcd, 0xffffffce, 0xffffffcf
    invoke-virtual {p1, v3}, Lv0/a$a;->skipBytes(I)I

    .line 89
    move-result v0

    .line 90
    if-ne v0, v3, :cond_86

    .line 92
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 94
    aget-object v0, v0, p3

    .line 96
    invoke-virtual {p1}, Lv0/a$a;->readUnsignedShort()I

    .line 99
    move-result v4

    .line 100
    int-to-long v6, v4

    .line 101
    iget-object v4, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 103
    invoke-static {v6, v7, v4}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    .line 106
    move-result-object v4

    .line 107
    const-string v6, "ImageLength"

    .line 109
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 114
    aget-object v0, v0, p3

    .line 116
    invoke-virtual {p1}, Lv0/a$a;->readUnsignedShort()I

    .line 119
    move-result v4

    .line 120
    int-to-long v6, v4

    .line 121
    iget-object v4, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 123
    invoke-static {v6, v7, v4}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    .line 126
    move-result-object v4

    .line 127
    const-string v6, "ImageWidth"

    .line 129
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v1, v1, -0x5

    .line 134
    goto :goto_e9

    .line 135
    :cond_86
    new-instance p1, Ljava/io/IOException;

    .line 137
    const-string p2, "Invalid SOFx"

    .line 139
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 142
    throw p1

    .line 143
    :cond_8e
    new-array v0, v1, [B

    .line 145
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 148
    move-result v4

    .line 149
    if-ne v4, v1, :cond_b1

    .line 151
    const-string v1, "UserComment"

    .line 153
    invoke-virtual {p0, v1}, Lv0/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object v4

    .line 157
    if-nez v4, :cond_e8

    .line 159
    iget-object v4, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 161
    aget-object v4, v4, v3

    .line 163
    new-instance v6, Ljava/lang/String;

    .line 165
    sget-object v8, Lv0/a;->z:Ljava/nio/charset/Charset;

    .line 167
    invoke-direct {v6, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 170
    invoke-static {v6}, Lv0/a$b;->a(Ljava/lang/String;)Lv0/a$b;

    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    goto :goto_e8

    .line 178
    :cond_b1
    new-instance p1, Ljava/io/IOException;

    .line 180
    invoke-direct {p1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 183
    throw p1

    .line 184
    :cond_b7
    const/4 v0, 0x6

    .line 185
    if-ge v1, v0, :cond_bb

    .line 187
    goto :goto_e9

    .line 188
    :cond_bb
    new-array v4, v0, [B

    .line 190
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    .line 193
    move-result v6

    .line 194
    if-ne v6, v0, :cond_10e

    .line 196
    add-int/lit8 p2, p2, 0x6

    .line 198
    add-int/lit8 v1, v1, -0x6

    .line 200
    sget-object v0, Lv0/a;->A:[B

    .line 202
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_d0

    .line 208
    goto :goto_e9

    .line 209
    :cond_d0
    if-lez v1, :cond_108

    .line 211
    iput p2, p0, Lv0/a;->f:I

    .line 213
    new-array v0, v1, [B

    .line 215
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 218
    move-result v4

    .line 219
    if-ne v4, v1, :cond_102

    .line 221
    add-int/2addr p2, v1

    .line 222
    new-instance v4, Lv0/a$a;

    .line 224
    invoke-direct {v4, v0}, Lv0/a$a;-><init>([B)V

    .line 227
    invoke-virtual {p0, v4, v1}, Lv0/a;->m(Lv0/a$a;I)V

    .line 230
    invoke-virtual {p0, v4, p3}, Lv0/a;->o(Lv0/a$a;I)V

    .line 233
    :cond_e8
    :goto_e8
    move v1, v7

    .line 234
    :goto_e9
    if-ltz v1, :cond_fc

    .line 236
    invoke-virtual {p1, v1}, Lv0/a$a;->skipBytes(I)I

    .line 239
    move-result v0

    .line 240
    if-ne v0, v1, :cond_f4

    .line 242
    add-int/2addr p2, v1

    .line 243
    goto/16 :goto_1c

    .line 245
    :cond_f4
    new-instance p1, Ljava/io/IOException;

    .line 247
    const-string p2, "Invalid JPEG segment"

    .line 249
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 252
    throw p1

    .line 253
    :cond_fc
    new-instance p1, Ljava/io/IOException;

    .line 255
    invoke-direct {p1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 258
    throw p1

    .line 259
    :cond_102
    new-instance p1, Ljava/io/IOException;

    .line 261
    invoke-direct {p1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 264
    throw p1

    .line 265
    :cond_108
    new-instance p1, Ljava/io/IOException;

    .line 267
    invoke-direct {p1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 270
    throw p1

    .line 271
    :cond_10e
    new-instance p1, Ljava/io/IOException;

    .line 273
    invoke-direct {p1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 276
    throw p1

    .line 277
    :cond_114
    new-instance p1, Ljava/io/IOException;

    .line 279
    invoke-direct {p1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 282
    throw p1

    .line 283
    :cond_11a
    :goto_11a
    iget-object p2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 285
    iput-object p2, p1, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 287
    return-void

    .line 288
    :cond_11f
    new-instance p1, Ljava/io/IOException;

    .line 290
    const-string p2, "Invalid marker:"

    .line 292
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    move-result-object p2

    .line 296
    and-int/lit16 p3, v0, 0xff

    .line 298
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 301
    move-result-object p3

    .line 302
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    move-result-object p2

    .line 309
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 312
    throw p1

    .line 313
    :cond_138
    new-instance p1, Ljava/io/IOException;

    .line 315
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    move-result-object p2

    .line 319
    and-int/lit16 p3, v0, 0xff

    .line 321
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 324
    move-result-object p3

    .line 325
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    move-result-object p2

    .line 332
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 335
    throw p1

    .line 336
    :cond_14f
    new-instance p1, Ljava/io/IOException;

    .line 338
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    move-result-object p2

    .line 342
    and-int/lit16 p3, v0, 0xff

    .line 344
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 347
    move-result-object p3

    .line 348
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    move-result-object p2

    .line 355
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 358
    throw p1

    .line 359
    :pswitch_data_166
    .packed-switch -0x40
        :pswitch_55  #ffffffc0
        :pswitch_55  #ffffffc1
        :pswitch_55  #ffffffc2
        :pswitch_55  #ffffffc3
    .end packed-switch

    .line 371
    :pswitch_data_172
    .packed-switch -0x3b
        :pswitch_55  #ffffffc5
        :pswitch_55  #ffffffc6
        :pswitch_55  #ffffffc7
    .end packed-switch

    .line 381
    :pswitch_data_17c
    .packed-switch -0x37
        :pswitch_55  #ffffffc9
        :pswitch_55  #ffffffca
        :pswitch_55  #ffffffcb
    .end packed-switch

    .line 391
    :pswitch_data_186
    .packed-switch -0x33
        :pswitch_55  #ffffffcd
        :pswitch_55  #ffffffce
        :pswitch_55  #ffffffcf
    .end packed-switch
.end method

.method public final f(Ljava/io/BufferedInputStream;)I
    .registers 8

    .line 1
    const/16 v0, 0x1388

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 6
    new-array v0, v0, [B

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 11
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 14
    const/4 p1, 0x0

    .line 15
    move v1, p1

    .line 16
    :goto_f
    sget-object v2, Lv0/a;->m:[B

    .line 18
    array-length v3, v2

    .line 19
    const/4 v4, 0x1

    .line 20
    if-ge v1, v3, :cond_20

    .line 22
    aget-byte v3, v0, v1

    .line 24
    aget-byte v2, v2, v1

    .line 26
    if-eq v3, v2, :cond_1d

    .line 28
    move v1, p1

    .line 29
    goto :goto_21

    .line 30
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_f

    .line 33
    :cond_20
    move v1, v4

    .line 34
    :goto_21
    if-eqz v1, :cond_25

    .line 36
    const/4 p1, 0x4

    .line 37
    return p1

    .line 38
    :cond_25
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 41
    move-result-object v1

    .line 42
    const-string v2, "FUJIFILMCCD-RAW"

    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 47
    move-result-object v1

    .line 48
    move v2, p1

    .line 49
    :goto_30
    array-length v3, v1

    .line 50
    if-ge v2, v3, :cond_3e

    .line 52
    aget-byte v3, v0, v2

    .line 54
    aget-byte v5, v1, v2

    .line 56
    if-eq v3, v5, :cond_3b

    .line 58
    move v1, p1

    .line 59
    goto :goto_3f

    .line 60
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    .line 62
    goto :goto_30

    .line 63
    :cond_3e
    move v1, v4

    .line 64
    :goto_3f
    if-eqz v1, :cond_44

    .line 66
    const/16 p1, 0x9

    .line 68
    return p1

    .line 69
    :cond_44
    new-instance v1, Lv0/a$a;

    .line 71
    invoke-direct {v1, v0}, Lv0/a$a;-><init>([B)V

    .line 74
    invoke-static {v1}, Lv0/a;->n(Lv0/a$a;)Ljava/nio/ByteOrder;

    .line 77
    move-result-object v2

    .line 78
    iput-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 80
    iput-object v2, v1, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 82
    invoke-virtual {v1}, Lv0/a$a;->readShort()S

    .line 85
    move-result v2

    .line 86
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 89
    const/16 v1, 0x4f52

    .line 91
    if-eq v2, v1, :cond_63

    .line 93
    const/16 v1, 0x5352

    .line 95
    if-ne v2, v1, :cond_61

    .line 97
    goto :goto_63

    .line 98
    :cond_61
    move v1, p1

    .line 99
    goto :goto_64

    .line 100
    :cond_63
    :goto_63
    move v1, v4

    .line 101
    :goto_64
    if-eqz v1, :cond_68

    .line 103
    const/4 p1, 0x7

    .line 104
    return p1

    .line 105
    :cond_68
    new-instance v1, Lv0/a$a;

    .line 107
    invoke-direct {v1, v0}, Lv0/a$a;-><init>([B)V

    .line 110
    invoke-static {v1}, Lv0/a;->n(Lv0/a$a;)Ljava/nio/ByteOrder;

    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 116
    iput-object v0, v1, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 118
    invoke-virtual {v1}, Lv0/a$a;->readShort()S

    .line 121
    move-result v0

    .line 122
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 125
    const/16 v1, 0x55

    .line 127
    if-ne v0, v1, :cond_81

    .line 129
    goto :goto_82

    .line 130
    :cond_81
    move v4, p1

    .line 131
    :goto_82
    if-eqz v4, :cond_86

    .line 133
    const/16 p1, 0xa

    .line 135
    :cond_86
    return p1
.end method

.method public final g(Lv0/a$a;)V
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Lv0/a;->i(Lv0/a$a;)V

    .line 4
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 6
    const/4 v0, 0x1

    .line 7
    aget-object p1, p1, v0

    .line 9
    const-string v1, "MakerNote"

    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lv0/a$b;

    .line 17
    if-eqz p1, :cond_ea

    .line 19
    new-instance v1, Lv0/a$a;

    .line 21
    iget-object p1, p1, Lv0/a$b;->c:[B

    .line 23
    invoke-direct {v1, p1}, Lv0/a$a;-><init>([B)V

    .line 26
    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 28
    iput-object p1, v1, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 30
    sget-object p1, Lv0/a;->n:[B

    .line 32
    array-length v2, p1

    .line 33
    new-array v2, v2, [B

    .line 35
    invoke-virtual {v1, v2}, Lv0/a$a;->readFully([B)V

    .line 38
    const-wide/16 v3, 0x0

    .line 40
    invoke-virtual {v1, v3, v4}, Lv0/a$a;->seek(J)V

    .line 43
    sget-object v3, Lv0/a;->o:[B

    .line 45
    array-length v4, v3

    .line 46
    new-array v4, v4, [B

    .line 48
    invoke-virtual {v1, v4}, Lv0/a$a;->readFully([B)V

    .line 51
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3e

    .line 57
    const-wide/16 v2, 0x8

    .line 59
    invoke-virtual {v1, v2, v3}, Lv0/a$a;->seek(J)V

    .line 62
    goto :goto_49

    .line 63
    :cond_3e
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_49

    .line 69
    const-wide/16 v2, 0xc

    .line 71
    invoke-virtual {v1, v2, v3}, Lv0/a$a;->seek(J)V

    .line 74
    :cond_49
    :goto_49
    const/4 p1, 0x6

    .line 75
    invoke-virtual {p0, v1, p1}, Lv0/a;->o(Lv0/a$a;I)V

    .line 78
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 80
    const/4 v1, 0x7

    .line 81
    aget-object p1, p1, v1

    .line 83
    const-string v2, "PreviewImageStart"

    .line 85
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lv0/a$b;

    .line 91
    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 93
    aget-object v1, v2, v1

    .line 95
    const-string v2, "PreviewImageLength"

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lv0/a$b;

    .line 103
    if-eqz p1, :cond_7d

    .line 105
    if-eqz v1, :cond_7d

    .line 107
    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 109
    const/4 v3, 0x5

    .line 110
    aget-object v2, v2, v3

    .line 112
    const-string v4, "JPEGInterchangeFormat"

    .line 114
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 119
    aget-object p1, p1, v3

    .line 121
    const-string v2, "JPEGInterchangeFormatLength"

    .line 123
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_7d
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 128
    const/16 v1, 0x8

    .line 130
    aget-object p1, p1, v1

    .line 132
    const-string v1, "AspectFrame"

    .line 134
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Lv0/a$b;

    .line 140
    if-eqz p1, :cond_ea

    .line 142
    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 144
    invoke-virtual {p1, v1}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 147
    move-result-object p1

    .line 148
    check-cast p1, [I

    .line 150
    if-eqz p1, :cond_d4

    .line 152
    array-length v1, p1

    .line 153
    const/4 v2, 0x4

    .line 154
    if-eq v1, v2, :cond_9c

    .line 156
    goto :goto_d4

    .line 157
    :cond_9c
    const/4 v1, 0x2

    .line 158
    aget v1, p1, v1

    .line 160
    const/4 v2, 0x0

    .line 161
    aget v3, p1, v2

    .line 163
    if-le v1, v3, :cond_ea

    .line 165
    const/4 v4, 0x3

    .line 166
    aget v4, p1, v4

    .line 168
    aget p1, p1, v0

    .line 170
    if-le v4, p1, :cond_ea

    .line 172
    sub-int/2addr v1, v3

    .line 173
    add-int/2addr v1, v0

    .line 174
    sub-int/2addr v4, p1

    .line 175
    add-int/2addr v4, v0

    .line 176
    if-ge v1, v4, :cond_b5

    .line 178
    add-int/2addr v1, v4

    .line 179
    sub-int v4, v1, v4

    .line 181
    sub-int/2addr v1, v4

    .line 182
    :cond_b5
    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 184
    invoke-static {v1, p1}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    .line 187
    move-result-object p1

    .line 188
    iget-object v0, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 190
    invoke-static {v4, v0}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    .line 193
    move-result-object v0

    .line 194
    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 196
    aget-object v1, v1, v2

    .line 198
    const-string v3, "ImageWidth"

    .line 200
    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 205
    aget-object p1, p1, v2

    .line 207
    const-string v1, "ImageLength"

    .line 209
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    goto :goto_ea

    .line 213
    :cond_d4
    :goto_d4
    const-string v0, "Invalid aspect frame values. frame="

    .line 215
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    move-result-object v0

    .line 219
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object p1

    .line 230
    const-string v0, "ExifInterface"

    .line 232
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_ea
    :goto_ea
    return-void
.end method

.method public final h(Lv0/a$a;)V
    .registers 8

    .line 1
    const/16 v0, 0x54

    .line 3
    invoke-virtual {p1, v0}, Lv0/a$a;->skipBytes(I)I

    .line 6
    const/4 v0, 0x4

    .line 7
    new-array v1, v0, [B

    .line 9
    new-array v2, v0, [B

    .line 11
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 14
    invoke-virtual {p1, v0}, Lv0/a$a;->skipBytes(I)I

    .line 17
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 20
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 27
    move-result v0

    .line 28
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x5

    .line 37
    invoke-virtual {p0, p1, v0, v2}, Lv0/a;->e(Lv0/a$a;II)V

    .line 40
    int-to-long v0, v1

    .line 41
    invoke-virtual {p1, v0, v1}, Lv0/a$a;->seek(J)V

    .line 44
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 46
    iput-object v0, p1, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 48
    invoke-virtual {p1}, Lv0/a$a;->readInt()I

    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x0

    .line 53
    move v2, v1

    .line 54
    :goto_35
    if-ge v2, v0, :cond_72

    .line 56
    invoke-virtual {p1}, Lv0/a$a;->readUnsignedShort()I

    .line 59
    move-result v3

    .line 60
    invoke-virtual {p1}, Lv0/a$a;->readUnsignedShort()I

    .line 63
    move-result v4

    .line 64
    sget-object v5, Lv0/a;->s:Lv0/a$c;

    .line 66
    iget v5, v5, Lv0/a$c;->a:I

    .line 68
    if-ne v3, v5, :cond_6c

    .line 70
    invoke-virtual {p1}, Lv0/a$a;->readShort()S

    .line 73
    move-result v0

    .line 74
    invoke-virtual {p1}, Lv0/a$a;->readShort()S

    .line 77
    move-result p1

    .line 78
    iget-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 80
    invoke-static {v0, v2}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    .line 83
    move-result-object v0

    .line 84
    iget-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 86
    invoke-static {p1, v2}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    .line 89
    move-result-object p1

    .line 90
    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 92
    aget-object v2, v2, v1

    .line 94
    const-string v3, "ImageLength"

    .line 96
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 101
    aget-object v0, v0, v1

    .line 103
    const-string v1, "ImageWidth"

    .line 105
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void

    .line 109
    :cond_6c
    invoke-virtual {p1, v4}, Lv0/a$a;->skipBytes(I)I

    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 114
    goto :goto_35

    .line 115
    :cond_72
    return-void
.end method

.method public final i(Lv0/a$a;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Lv0/a$a;->available()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lv0/a;->m(Lv0/a$a;I)V

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lv0/a;->o(Lv0/a$a;I)V

    .line 12
    invoke-virtual {p0, p1, v0}, Lv0/a;->r(Lv0/a$a;I)V

    .line 15
    const/4 v1, 0x5

    .line 16
    invoke-virtual {p0, p1, v1}, Lv0/a;->r(Lv0/a$a;I)V

    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-virtual {p0, p1, v2}, Lv0/a;->r(Lv0/a$a;I)V

    .line 23
    invoke-virtual {p0, v0, v1}, Lv0/a;->q(II)V

    .line 26
    invoke-virtual {p0, v0, v2}, Lv0/a;->q(II)V

    .line 29
    invoke-virtual {p0, v1, v2}, Lv0/a;->q(II)V

    .line 32
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 34
    const/4 v3, 0x1

    .line 35
    aget-object p1, p1, v3

    .line 37
    const-string v4, "PixelXDimension"

    .line 39
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lv0/a$b;

    .line 45
    iget-object v4, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 47
    aget-object v4, v4, v3

    .line 49
    const-string v5, "PixelYDimension"

    .line 51
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lv0/a$b;

    .line 57
    if-eqz p1, :cond_4e

    .line 59
    if-eqz v4, :cond_4e

    .line 61
    iget-object v5, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 63
    aget-object v5, v5, v0

    .line 65
    const-string v6, "ImageWidth"

    .line 67
    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 72
    aget-object p1, p1, v0

    .line 74
    const-string v0, "ImageLength"

    .line 76
    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_4e
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 81
    aget-object p1, p1, v2

    .line 83
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_6f

    .line 89
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 91
    aget-object p1, p1, v1

    .line 93
    invoke-virtual {p0, p1}, Lv0/a;->l(Ljava/util/HashMap;)Z

    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_6f

    .line 99
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 101
    aget-object v0, p1, v1

    .line 103
    aput-object v0, p1, v2

    .line 105
    new-instance v0, Ljava/util/HashMap;

    .line 107
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    aput-object v0, p1, v1

    .line 112
    :cond_6f
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 114
    aget-object p1, p1, v2

    .line 116
    invoke-virtual {p0, p1}, Lv0/a;->l(Ljava/util/HashMap;)Z

    .line 119
    move-result p1

    .line 120
    if-nez p1, :cond_80

    .line 122
    const-string p1, "ExifInterface"

    .line 124
    const-string v0, "No image meets the size requirements of a thumbnail image."

    .line 126
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_80
    iget p1, p0, Lv0/a;->b:I

    .line 131
    const/16 v0, 0x8

    .line 133
    if-ne p1, v0, :cond_be

    .line 135
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 137
    aget-object p1, p1, v3

    .line 139
    const-string v0, "MakerNote"

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Lv0/a$b;

    .line 147
    if-eqz p1, :cond_be

    .line 149
    new-instance v0, Lv0/a$a;

    .line 151
    iget-object p1, p1, Lv0/a$b;->c:[B

    .line 153
    invoke-direct {v0, p1}, Lv0/a$a;-><init>([B)V

    .line 156
    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 158
    iput-object p1, v0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 160
    const-wide/16 v1, 0x6

    .line 162
    invoke-virtual {v0, v1, v2}, Lv0/a$a;->seek(J)V

    .line 165
    const/16 p1, 0x9

    .line 167
    invoke-virtual {p0, v0, p1}, Lv0/a;->o(Lv0/a$a;I)V

    .line 170
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 172
    aget-object p1, v0, p1

    .line 174
    const-string v0, "ColorSpace"

    .line 176
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    move-result-object p1

    .line 180
    check-cast p1, Lv0/a$b;

    .line 182
    if-eqz p1, :cond_be

    .line 184
    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 186
    aget-object v1, v1, v3

    .line 188
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_be
    return-void
.end method

.method public final j(Lv0/a$a;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lv0/a;->i(Lv0/a$a;)V

    .line 4
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v0, v0, v1

    .line 9
    const-string v2, "JpgFromRaw"

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lv0/a$b;

    .line 17
    if-eqz v0, :cond_18

    .line 19
    iget v0, p0, Lv0/a;->j:I

    .line 21
    const/4 v2, 0x5

    .line 22
    invoke-virtual {p0, p1, v0, v2}, Lv0/a;->e(Lv0/a$a;II)V

    .line 25
    :cond_18
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 27
    aget-object p1, p1, v1

    .line 29
    const-string v0, "ISO"

    .line 31
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lv0/a$b;

    .line 37
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 39
    const/4 v1, 0x1

    .line 40
    aget-object v0, v0, v1

    .line 42
    const-string v2, "PhotographicSensitivity"

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lv0/a$b;

    .line 50
    if-eqz p1, :cond_3c

    .line 52
    if-nez v0, :cond_3c

    .line 54
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 56
    aget-object v0, v0, v1

    .line 58
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_3c
    return-void
.end method

.method public final k(Lv0/a$a;Ljava/util/HashMap;)V
    .registers 6

    .line 1
    const-string v0, "JPEGInterchangeFormat"

    .line 3
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lv0/a$b;

    .line 9
    const-string v1, "JPEGInterchangeFormatLength"

    .line 11
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lv0/a$b;

    .line 17
    if-eqz v0, :cond_51

    .line 19
    if-eqz p2, :cond_51

    .line 21
    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 23
    invoke-virtual {v0, v1}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 29
    invoke-virtual {p2, v1}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 32
    move-result p2

    .line 33
    invoke-virtual {p1}, Lv0/a$a;->available()I

    .line 36
    move-result v1

    .line 37
    sub-int/2addr v1, v0

    .line 38
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 41
    move-result p2

    .line 42
    iget v1, p0, Lv0/a;->b:I

    .line 44
    const/4 v2, 0x4

    .line 45
    if-eq v1, v2, :cond_3d

    .line 47
    const/16 v2, 0x9

    .line 49
    if-eq v1, v2, :cond_3d

    .line 51
    const/16 v2, 0xa

    .line 53
    if-ne v1, v2, :cond_37

    .line 55
    goto :goto_3d

    .line 56
    :cond_37
    const/4 v2, 0x7

    .line 57
    if-ne v1, v2, :cond_40

    .line 59
    iget v1, p0, Lv0/a;->g:I

    .line 61
    goto :goto_3f

    .line 62
    :cond_3d
    :goto_3d
    iget v1, p0, Lv0/a;->f:I

    .line 64
    :goto_3f
    add-int/2addr v0, v1

    .line 65
    :cond_40
    if-lez v0, :cond_51

    .line 67
    if-lez p2, :cond_51

    .line 69
    iget-object v1, p0, Lv0/a;->a:Landroid/content/res/AssetManager$AssetInputStream;

    .line 71
    if-nez v1, :cond_51

    .line 73
    new-array p2, p2, [B

    .line 75
    int-to-long v0, v0

    .line 76
    invoke-virtual {p1, v0, v1}, Lv0/a$a;->seek(J)V

    .line 79
    invoke-virtual {p1, p2}, Lv0/a$a;->readFully([B)V

    .line 82
    :cond_51
    return-void
.end method

.method public final l(Ljava/util/HashMap;)Z
    .registers 4

    .line 1
    const-string v0, "ImageLength"

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lv0/a$b;

    .line 9
    const-string v1, "ImageWidth"

    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lv0/a$b;

    .line 17
    if-eqz v0, :cond_28

    .line 19
    if-eqz p1, :cond_28

    .line 21
    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 23
    invoke-virtual {v0, v1}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 29
    invoke-virtual {p1, v1}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 32
    move-result p1

    .line 33
    const/16 v1, 0x200

    .line 35
    if-gt v0, v1, :cond_28

    .line 37
    if-gt p1, v1, :cond_28

    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public final m(Lv0/a$a;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Lv0/a;->n(Lv0/a$a;)Ljava/nio/ByteOrder;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 7
    iput-object v0, p1, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 9
    invoke-virtual {p1}, Lv0/a$a;->readUnsignedShort()I

    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lv0/a;->b:I

    .line 15
    const/4 v2, 0x7

    .line 16
    if-eq v1, v2, :cond_31

    .line 18
    const/16 v2, 0xa

    .line 20
    if-eq v1, v2, :cond_31

    .line 22
    const/16 v1, 0x2a

    .line 24
    if-ne v0, v1, :cond_1a

    .line 26
    goto :goto_31

    .line 27
    :cond_1a
    new-instance p1, Ljava/io/IOException;

    .line 29
    const-string p2, "Invalid start code: "

    .line 31
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object p2

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    :cond_31
    :goto_31
    invoke-virtual {p1}, Lv0/a$a;->readInt()I

    .line 53
    move-result v0

    .line 54
    const/16 v1, 0x8

    .line 56
    if-lt v0, v1, :cond_53

    .line 58
    if-ge v0, p2, :cond_53

    .line 60
    add-int/lit8 v0, v0, -0x8

    .line 62
    if-lez v0, :cond_52

    .line 64
    invoke-virtual {p1, v0}, Lv0/a$a;->skipBytes(I)I

    .line 67
    move-result p1

    .line 68
    if-ne p1, v0, :cond_46

    .line 70
    goto :goto_52

    .line 71
    :cond_46
    new-instance p1, Ljava/io/IOException;

    .line 73
    const-string p2, "Couldn\'t jump to first Ifd: "

    .line 75
    invoke-static {p2, v0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 78
    move-result-object p2

    .line 79
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p1

    .line 83
    :cond_52
    :goto_52
    return-void

    .line 84
    :cond_53
    new-instance p1, Ljava/io/IOException;

    .line 86
    const-string p2, "Invalid first Ifd offset: "

    .line 88
    invoke-static {p2, v0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 91
    move-result-object p2

    .line 92
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p1
.end method

.method public final o(Lv0/a$a;I)V
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    iget-object v3, v0, Lv0/a;->d:Ljava/util/HashSet;

    .line 9
    iget v4, v1, Lv0/a$a;->d:I

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    iget v3, v1, Lv0/a$a;->d:I

    .line 20
    add-int/lit8 v3, v3, 0x2

    .line 22
    iget v4, v1, Lv0/a$a;->c:I

    .line 24
    if-le v3, v4, :cond_1a

    .line 26
    return-void

    .line 27
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readShort()S

    .line 30
    move-result v3

    .line 31
    iget v4, v1, Lv0/a$a;->d:I

    .line 33
    mul-int/lit8 v5, v3, 0xc

    .line 35
    add-int/2addr v5, v4

    .line 36
    iget v4, v1, Lv0/a$a;->c:I

    .line 38
    if-gt v5, v4, :cond_34d

    .line 40
    if-gtz v3, :cond_2b

    .line 42
    goto/16 :goto_34d

    .line 44
    :cond_2b
    const/4 v4, 0x0

    .line 45
    :goto_2c
    const-string v5, "ExifInterface"

    .line 47
    const/4 v6, 0x4

    .line 48
    if-ge v4, v3, :cond_2e0

    .line 50
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readUnsignedShort()I

    .line 53
    move-result v7

    .line 54
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readUnsignedShort()I

    .line 57
    move-result v8

    .line 58
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readInt()I

    .line 61
    move-result v9

    .line 62
    iget v10, v1, Lv0/a$a;->d:I

    .line 64
    int-to-long v10, v10

    .line 65
    const-wide/16 v12, 0x4

    .line 67
    add-long/2addr v10, v12

    .line 68
    sget-object v12, Lv0/a;->v:[Ljava/util/HashMap;

    .line 70
    aget-object v12, v12, v2

    .line 72
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v13

    .line 76
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v12

    .line 80
    check-cast v12, Lv0/a$c;

    .line 82
    const/4 v14, 0x7

    .line 83
    if-nez v12, :cond_69

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    const-string v13, "Skip the tag entry since tag number is not defined: "

    .line 92
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v6

    .line 102
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    goto :goto_c1

    .line 106
    :cond_69
    if-lez v8, :cond_f6

    .line 108
    sget-object v15, Lv0/a;->q:[I

    .line 110
    array-length v13, v15

    .line 111
    if-lt v8, v13, :cond_72

    .line 113
    goto/16 :goto_f6

    .line 115
    :cond_72
    iget v13, v12, Lv0/a$c;->c:I

    .line 117
    if-eq v13, v14, :cond_a0

    .line 119
    if-ne v8, v14, :cond_79

    .line 121
    goto :goto_a0

    .line 122
    :cond_79
    if-eq v13, v8, :cond_a0

    .line 124
    iget v14, v12, Lv0/a$c;->d:I

    .line 126
    if-ne v14, v8, :cond_80

    .line 128
    goto :goto_a0

    .line 129
    :cond_80
    if-eq v13, v6, :cond_84

    .line 131
    if-ne v14, v6, :cond_88

    .line 133
    :cond_84
    const/4 v6, 0x3

    .line 134
    if-ne v8, v6, :cond_88

    .line 136
    goto :goto_a0

    .line 137
    :cond_88
    const/16 v6, 0x9

    .line 139
    if-eq v13, v6, :cond_8e

    .line 141
    if-ne v14, v6, :cond_93

    .line 143
    :cond_8e
    const/16 v6, 0x8

    .line 145
    if-ne v8, v6, :cond_93

    .line 147
    goto :goto_a0

    .line 148
    :cond_93
    const/16 v6, 0xc

    .line 150
    if-eq v13, v6, :cond_99

    .line 152
    if-ne v14, v6, :cond_9e

    .line 154
    :cond_99
    const/16 v6, 0xb

    .line 156
    if-ne v8, v6, :cond_9e

    .line 158
    goto :goto_a0

    .line 159
    :cond_9e
    const/4 v6, 0x0

    .line 160
    goto :goto_a1

    .line 161
    :cond_a0
    :goto_a0
    const/4 v6, 0x1

    .line 162
    :goto_a1
    if-nez v6, :cond_c5

    .line 164
    const-string v6, "Skip the tag entry since data format ("

    .line 166
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    move-result-object v6

    .line 170
    sget-object v13, Lv0/a;->p:[Ljava/lang/String;

    .line 172
    aget-object v13, v13, v8

    .line 174
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v13, ") is unexpected for tag: "

    .line 179
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v13, v12, Lv0/a$c;->b:Ljava/lang/String;

    .line 184
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v6

    .line 191
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_c1
    move v15, v3

    .line 195
    move/from16 v17, v4

    .line 197
    goto :goto_10d

    .line 198
    :cond_c5
    const/4 v6, 0x7

    .line 199
    if-ne v8, v6, :cond_c9

    .line 201
    move v8, v13

    .line 202
    :cond_c9
    int-to-long v13, v9

    .line 203
    aget v6, v15, v8

    .line 205
    move v15, v3

    .line 206
    move/from16 v17, v4

    .line 208
    int-to-long v3, v6

    .line 209
    mul-long/2addr v3, v13

    .line 210
    const-wide/16 v13, 0x0

    .line 212
    cmp-long v6, v3, v13

    .line 214
    if-ltz v6, :cond_e1

    .line 216
    const-wide/32 v13, 0x7fffffff

    .line 219
    cmp-long v6, v3, v13

    .line 221
    if-lez v6, :cond_df

    .line 223
    goto :goto_e1

    .line 224
    :cond_df
    const/4 v13, 0x1

    .line 225
    goto :goto_110

    .line 226
    :cond_e1
    :goto_e1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    const-string v13, "Skip the tag entry since the number of components is invalid: "

    .line 233
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object v6

    .line 243
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    goto :goto_10f

    .line 247
    :cond_f6
    :goto_f6
    move v15, v3

    .line 248
    move/from16 v17, v4

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    .line 252
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    const-string v4, "Skip the tag entry since data format is invalid: "

    .line 257
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object v3

    .line 267
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_10d
    const-wide/16 v3, 0x0

    .line 272
    :goto_10f
    const/4 v13, 0x0

    .line 273
    :goto_110
    if-nez v13, :cond_119

    .line 275
    invoke-virtual {v1, v10, v11}, Lv0/a$a;->seek(J)V

    .line 278
    move/from16 v16, v15

    .line 280
    goto/16 :goto_2d9

    .line 282
    :cond_119
    const-wide/16 v13, 0x4

    .line 284
    cmp-long v6, v3, v13

    .line 286
    const-string v13, "Compression"

    .line 288
    if-lez v6, :cond_1cc

    .line 290
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readInt()I

    .line 293
    move-result v6

    .line 294
    iget v14, v0, Lv0/a;->b:I

    .line 296
    move/from16 v16, v15

    .line 298
    const/4 v15, 0x7

    .line 299
    if-ne v14, v15, :cond_18b

    .line 301
    iget-object v14, v12, Lv0/a$c;->b:Ljava/lang/String;

    .line 303
    const-string v15, "MakerNote"

    .line 305
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    move-result v14

    .line 309
    if-eqz v14, :cond_139

    .line 311
    iput v6, v0, Lv0/a;->g:I

    .line 313
    goto :goto_184

    .line 314
    :cond_139
    const/4 v14, 0x6

    .line 315
    if-ne v2, v14, :cond_184

    .line 317
    iget-object v14, v12, Lv0/a$c;->b:Ljava/lang/String;

    .line 319
    const-string v15, "ThumbnailImage"

    .line 321
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    move-result v14

    .line 325
    if-eqz v14, :cond_184

    .line 327
    iput v6, v0, Lv0/a;->h:I

    .line 329
    iput v9, v0, Lv0/a;->i:I

    .line 331
    iget-object v14, v0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 333
    const/4 v15, 0x6

    .line 334
    invoke-static {v15, v14}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    .line 337
    move-result-object v14

    .line 338
    iget v15, v0, Lv0/a;->h:I

    .line 340
    move/from16 v19, v8

    .line 342
    move/from16 v18, v9

    .line 344
    int-to-long v8, v15

    .line 345
    iget-object v15, v0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 347
    invoke-static {v8, v9, v15}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    .line 350
    move-result-object v8

    .line 351
    iget v9, v0, Lv0/a;->i:I

    .line 353
    move-wide/from16 v20, v10

    .line 355
    int-to-long v9, v9

    .line 356
    iget-object v11, v0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 358
    invoke-static {v9, v10, v11}, Lv0/a$b;->b(JLjava/nio/ByteOrder;)Lv0/a$b;

    .line 361
    move-result-object v9

    .line 362
    iget-object v10, v0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 364
    const/4 v11, 0x4

    .line 365
    aget-object v10, v10, v11

    .line 367
    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v10, v0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 372
    aget-object v10, v10, v11

    .line 374
    const-string v14, "JPEGInterchangeFormat"

    .line 376
    invoke-virtual {v10, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v8, v0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 381
    aget-object v8, v8, v11

    .line 383
    const-string v10, "JPEGInterchangeFormatLength"

    .line 385
    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    goto :goto_1a1

    .line 389
    :cond_184
    :goto_184
    move/from16 v19, v8

    .line 391
    move/from16 v18, v9

    .line 393
    move-wide/from16 v20, v10

    .line 395
    goto :goto_1a1

    .line 396
    :cond_18b
    move/from16 v19, v8

    .line 398
    move/from16 v18, v9

    .line 400
    move-wide/from16 v20, v10

    .line 402
    const/16 v8, 0xa

    .line 404
    if-ne v14, v8, :cond_1a1

    .line 406
    iget-object v8, v12, Lv0/a$c;->b:Ljava/lang/String;

    .line 408
    const-string v9, "JpgFromRaw"

    .line 410
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    move-result v8

    .line 414
    if-eqz v8, :cond_1a1

    .line 416
    iput v6, v0, Lv0/a;->j:I

    .line 418
    :cond_1a1
    :goto_1a1
    int-to-long v8, v6

    .line 419
    add-long v10, v8, v3

    .line 421
    iget v14, v1, Lv0/a$a;->c:I

    .line 423
    int-to-long v14, v14

    .line 424
    cmp-long v10, v10, v14

    .line 426
    if-gtz v10, :cond_1b1

    .line 428
    invoke-virtual {v1, v8, v9}, Lv0/a$a;->seek(J)V

    .line 431
    move-wide/from16 v10, v20

    .line 433
    goto :goto_1d2

    .line 434
    :cond_1b1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 436
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    const-string v4, "Skip the tag entry since data offset is invalid: "

    .line 441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    move-result-object v3

    .line 451
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    move-wide/from16 v10, v20

    .line 456
    invoke-virtual {v1, v10, v11}, Lv0/a$a;->seek(J)V

    .line 459
    goto/16 :goto_2d9

    .line 461
    :cond_1cc
    move/from16 v19, v8

    .line 463
    move/from16 v18, v9

    .line 465
    move/from16 v16, v15

    .line 467
    :goto_1d2
    sget-object v6, Lv0/a;->y:Ljava/util/HashMap;

    .line 469
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    move-result-object v7

    .line 473
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    move-result-object v6

    .line 477
    check-cast v6, Ljava/lang/Integer;

    .line 479
    if-eqz v6, :cond_271

    .line 481
    const-wide/16 v3, -0x1

    .line 483
    const/4 v7, 0x3

    .line 484
    move/from16 v8, v19

    .line 486
    if-eq v8, v7, :cond_20d

    .line 488
    const/4 v7, 0x4

    .line 489
    if-eq v8, v7, :cond_201

    .line 491
    const/16 v7, 0x8

    .line 493
    if-eq v8, v7, :cond_1fc

    .line 495
    const/16 v7, 0x9

    .line 497
    if-eq v8, v7, :cond_1f7

    .line 499
    const/16 v7, 0xd

    .line 501
    if-eq v8, v7, :cond_1f7

    .line 503
    goto :goto_212

    .line 504
    :cond_1f7
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readInt()I

    .line 507
    move-result v3

    .line 508
    goto :goto_211

    .line 509
    :cond_1fc
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readShort()S

    .line 512
    move-result v3

    .line 513
    goto :goto_211

    .line 514
    :cond_201
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readInt()I

    .line 517
    move-result v3

    .line 518
    int-to-long v3, v3

    .line 519
    const-wide v7, 0xffffffffL

    .line 524
    and-long/2addr v3, v7

    .line 525
    goto :goto_212

    .line 526
    :cond_20d
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readUnsignedShort()I

    .line 529
    move-result v3

    .line 530
    :goto_211
    int-to-long v3, v3

    .line 531
    :goto_212
    const-wide/16 v7, 0x0

    .line 533
    cmp-long v7, v3, v7

    .line 535
    if-lez v7, :cond_259

    .line 537
    iget v7, v1, Lv0/a$a;->c:I

    .line 539
    int-to-long v7, v7

    .line 540
    cmp-long v7, v3, v7

    .line 542
    if-gez v7, :cond_259

    .line 544
    iget-object v7, v0, Lv0/a;->d:Ljava/util/HashSet;

    .line 546
    long-to-int v8, v3

    .line 547
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    move-result-object v8

    .line 551
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 554
    move-result v7

    .line 555
    if-nez v7, :cond_237

    .line 557
    invoke-virtual {v1, v3, v4}, Lv0/a$a;->seek(J)V

    .line 560
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 563
    move-result v3

    .line 564
    invoke-virtual {v0, v1, v3}, Lv0/a;->o(Lv0/a$a;I)V

    .line 567
    goto :goto_26d

    .line 568
    :cond_237
    new-instance v7, Ljava/lang/StringBuilder;

    .line 570
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    const-string v8, "Skip jump into the IFD since it has already been read: IfdType "

    .line 575
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 581
    const-string v6, " (at "

    .line 583
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 589
    const-string v3, ")"

    .line 591
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 597
    move-result-object v3

    .line 598
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    goto :goto_26d

    .line 602
    :cond_259
    new-instance v6, Ljava/lang/StringBuilder;

    .line 604
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    const-string v7, "Skip jump into the IFD since its offset is invalid: "

    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    move-result-object v3

    .line 619
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :goto_26d
    invoke-virtual {v1, v10, v11}, Lv0/a$a;->seek(J)V

    .line 625
    goto :goto_2d9

    .line 626
    :cond_271
    move/from16 v8, v19

    .line 628
    long-to-int v3, v3

    .line 629
    new-array v3, v3, [B

    .line 631
    invoke-virtual {v1, v3}, Lv0/a$a;->readFully([B)V

    .line 634
    new-instance v4, Lv0/a$b;

    .line 636
    move/from16 v5, v18

    .line 638
    invoke-direct {v4, v8, v3, v5}, Lv0/a$b;-><init>(I[BI)V

    .line 641
    iget-object v3, v0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 643
    aget-object v3, v3, v2

    .line 645
    iget-object v5, v12, Lv0/a$c;->b:Ljava/lang/String;

    .line 647
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    iget-object v3, v12, Lv0/a$c;->b:Ljava/lang/String;

    .line 652
    const-string v5, "DNGVersion"

    .line 654
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 657
    move-result v3

    .line 658
    if-eqz v3, :cond_296

    .line 660
    const/4 v3, 0x3

    .line 661
    iput v3, v0, Lv0/a;->b:I

    .line 663
    :cond_296
    iget-object v3, v12, Lv0/a$c;->b:Ljava/lang/String;

    .line 665
    const-string v5, "Make"

    .line 667
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 670
    move-result v3

    .line 671
    if-nez v3, :cond_2aa

    .line 673
    iget-object v3, v12, Lv0/a$c;->b:Ljava/lang/String;

    .line 675
    const-string v5, "Model"

    .line 677
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 680
    move-result v3

    .line 681
    if-eqz v3, :cond_2b8

    .line 683
    :cond_2aa
    iget-object v3, v0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 685
    invoke-virtual {v4, v3}, Lv0/a$b;->g(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 688
    move-result-object v3

    .line 689
    const-string v5, "PENTAX"

    .line 691
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 694
    move-result v3

    .line 695
    if-nez v3, :cond_2cb

    .line 697
    :cond_2b8
    iget-object v3, v12, Lv0/a$c;->b:Ljava/lang/String;

    .line 699
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 702
    move-result v3

    .line 703
    if-eqz v3, :cond_2cf

    .line 705
    iget-object v3, v0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 707
    invoke-virtual {v4, v3}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 710
    move-result v3

    .line 711
    const v4, 0xffff

    .line 714
    if-ne v3, v4, :cond_2cf

    .line 716
    :cond_2cb
    const/16 v3, 0x8

    .line 718
    iput v3, v0, Lv0/a;->b:I

    .line 720
    :cond_2cf
    iget v3, v1, Lv0/a$a;->d:I

    .line 722
    int-to-long v3, v3

    .line 723
    cmp-long v3, v3, v10

    .line 725
    if-eqz v3, :cond_2d9

    .line 727
    invoke-virtual {v1, v10, v11}, Lv0/a$a;->seek(J)V

    .line 730
    :cond_2d9
    :goto_2d9
    add-int/lit8 v4, v17, 0x1

    .line 732
    int-to-short v4, v4

    .line 733
    move/from16 v3, v16

    .line 735
    goto/16 :goto_2c

    .line 737
    :cond_2e0
    iget v2, v1, Lv0/a$a;->d:I

    .line 739
    add-int/lit8 v2, v2, 0x4

    .line 741
    iget v3, v1, Lv0/a$a;->c:I

    .line 743
    if-gt v2, v3, :cond_34d

    .line 745
    invoke-virtual/range {p1 .. p1}, Lv0/a$a;->readInt()I

    .line 748
    move-result v2

    .line 749
    int-to-long v3, v2

    .line 750
    const-wide/16 v6, 0x0

    .line 752
    cmp-long v6, v3, v6

    .line 754
    if-lez v6, :cond_339

    .line 756
    iget v6, v1, Lv0/a$a;->c:I

    .line 758
    if-ge v2, v6, :cond_339

    .line 760
    iget-object v6, v0, Lv0/a;->d:Ljava/util/HashSet;

    .line 762
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 765
    move-result-object v7

    .line 766
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 769
    move-result v6

    .line 770
    if-nez v6, :cond_324

    .line 772
    invoke-virtual {v1, v3, v4}, Lv0/a$a;->seek(J)V

    .line 775
    iget-object v2, v0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 777
    const/4 v3, 0x4

    .line 778
    aget-object v2, v2, v3

    .line 780
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 783
    move-result v2

    .line 784
    if-eqz v2, :cond_315

    .line 786
    invoke-virtual {v0, v1, v3}, Lv0/a;->o(Lv0/a$a;I)V

    .line 789
    goto :goto_34d

    .line 790
    :cond_315
    iget-object v2, v0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 792
    const/4 v3, 0x5

    .line 793
    aget-object v2, v2, v3

    .line 795
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 798
    move-result v2

    .line 799
    if-eqz v2, :cond_34d

    .line 801
    invoke-virtual {v0, v1, v3}, Lv0/a;->o(Lv0/a$a;I)V

    .line 804
    goto :goto_34d

    .line 805
    :cond_324
    new-instance v1, Ljava/lang/StringBuilder;

    .line 807
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 810
    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    .line 812
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    move-result-object v1

    .line 822
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    goto :goto_34d

    .line 826
    :cond_339
    new-instance v1, Ljava/lang/StringBuilder;

    .line 828
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    .line 833
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 842
    move-result-object v1

    .line 843
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_34d
    :goto_34d
    return-void
.end method

.method public final p(Lv0/a$a;)V
    .registers 14

    .line 1
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 3
    const/4 v1, 0x4

    .line 4
    aget-object v0, v0, v1

    .line 6
    const-string v1, "Compression"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lv0/a$b;

    .line 14
    if-eqz v1, :cond_db

    .line 16
    iget-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 18
    invoke-virtual {v1, v2}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x6

    .line 24
    if-eq v1, v2, :cond_25

    .line 26
    if-eq v1, v3, :cond_20

    .line 28
    const/4 v4, 0x7

    .line 29
    if-eq v1, v4, :cond_25

    .line 31
    goto/16 :goto_de

    .line 33
    :cond_20
    invoke-virtual {p0, p1, v0}, Lv0/a;->k(Lv0/a$a;Ljava/util/HashMap;)V

    .line 36
    goto/16 :goto_de

    .line 38
    :cond_25
    const-string v1, "BitsPerSample"

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lv0/a$b;

    .line 46
    const/4 v4, 0x0

    .line 47
    if-eqz v1, :cond_69

    .line 49
    iget-object v5, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 51
    invoke-virtual {v1, v5}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 54
    move-result-object v1

    .line 55
    check-cast v1, [I

    .line 57
    sget-object v5, Lv0/a;->k:[I

    .line 59
    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_41

    .line 65
    goto :goto_6a

    .line 66
    :cond_41
    iget v6, p0, Lv0/a;->b:I

    .line 68
    const/4 v7, 0x3

    .line 69
    if-ne v6, v7, :cond_69

    .line 71
    const-string v6, "PhotometricInterpretation"

    .line 73
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Lv0/a$b;

    .line 79
    if-eqz v6, :cond_69

    .line 81
    iget-object v7, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 83
    invoke-virtual {v6, v7}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 86
    move-result v6

    .line 87
    if-ne v6, v2, :cond_60

    .line 89
    sget-object v7, Lv0/a;->l:[I

    .line 91
    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([I[I)Z

    .line 94
    move-result v7

    .line 95
    if-nez v7, :cond_6a

    .line 97
    :cond_60
    if-ne v6, v3, :cond_69

    .line 99
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_69

    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    move v2, v4

    .line 107
    :cond_6a
    :goto_6a
    if-eqz v2, :cond_de

    .line 109
    const-string v1, "StripOffsets"

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lv0/a$b;

    .line 117
    const-string v2, "StripByteCounts"

    .line 119
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lv0/a$b;

    .line 125
    if-eqz v1, :cond_de

    .line 127
    if-eqz v0, :cond_de

    .line 129
    iget-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 131
    invoke-virtual {v1, v2}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 134
    move-result-object v1

    .line 135
    invoke-static {v1}, Lv0/a;->b(Ljava/io/Serializable;)[J

    .line 138
    move-result-object v1

    .line 139
    iget-object v2, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 141
    invoke-virtual {v0, v2}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Lv0/a;->b(Ljava/io/Serializable;)[J

    .line 148
    move-result-object v0

    .line 149
    const-string v2, "ExifInterface"

    .line 151
    if-nez v1, :cond_9e

    .line 153
    const-string p1, "stripOffsets should not be null."

    .line 155
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    goto :goto_de

    .line 159
    :cond_9e
    if-nez v0, :cond_a6

    .line 161
    const-string p1, "stripByteCounts should not be null."

    .line 163
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    goto :goto_de

    .line 167
    :cond_a6
    const-wide/16 v5, 0x0

    .line 169
    array-length v3, v0

    .line 170
    move v7, v4

    .line 171
    :goto_aa
    if-ge v7, v3, :cond_b2

    .line 173
    aget-wide v8, v0, v7

    .line 175
    add-long/2addr v5, v8

    .line 176
    add-int/lit8 v7, v7, 0x1

    .line 178
    goto :goto_aa

    .line 179
    :cond_b2
    long-to-int v3, v5

    .line 180
    new-array v3, v3, [B

    .line 182
    move v5, v4

    .line 183
    move v6, v5

    .line 184
    move v7, v6

    .line 185
    :goto_b8
    array-length v8, v1

    .line 186
    if-ge v5, v8, :cond_de

    .line 188
    aget-wide v8, v1, v5

    .line 190
    long-to-int v8, v8

    .line 191
    aget-wide v9, v0, v5

    .line 193
    long-to-int v9, v9

    .line 194
    sub-int/2addr v8, v6

    .line 195
    if-gez v8, :cond_c9

    .line 197
    const-string v10, "Invalid strip offset value"

    .line 199
    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_c9
    int-to-long v10, v8

    .line 203
    invoke-virtual {p1, v10, v11}, Lv0/a$a;->seek(J)V

    .line 206
    add-int/2addr v6, v8

    .line 207
    new-array v8, v9, [B

    .line 209
    invoke-virtual {p1, v8}, Ljava/io/InputStream;->read([B)I

    .line 212
    add-int/2addr v6, v9

    .line 213
    invoke-static {v8, v4, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    add-int/2addr v7, v9

    .line 217
    add-int/lit8 v5, v5, 0x1

    .line 219
    goto :goto_b8

    .line 220
    :cond_db
    invoke-virtual {p0, p1, v0}, Lv0/a;->k(Lv0/a$a;Ljava/util/HashMap;)V

    .line 223
    :cond_de
    :goto_de
    return-void
.end method

.method public final q(II)V
    .registers 8

    .line 1
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 3
    aget-object v0, v0, p1

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_71

    .line 11
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 13
    aget-object v0, v0, p2

    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_15

    .line 21
    goto :goto_71

    .line 22
    :cond_15
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 24
    aget-object v0, v0, p1

    .line 26
    const-string v1, "ImageLength"

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lv0/a$b;

    .line 34
    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 36
    aget-object v2, v2, p1

    .line 38
    const-string v3, "ImageWidth"

    .line 40
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lv0/a$b;

    .line 46
    iget-object v4, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 48
    aget-object v4, v4, p2

    .line 50
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lv0/a$b;

    .line 56
    iget-object v4, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 58
    aget-object v4, v4, p2

    .line 60
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lv0/a$b;

    .line 66
    if-eqz v0, :cond_71

    .line 68
    if-nez v2, :cond_46

    .line 70
    goto :goto_71

    .line 71
    :cond_46
    if-eqz v1, :cond_71

    .line 73
    if-nez v3, :cond_4b

    .line 75
    goto :goto_71

    .line 76
    :cond_4b
    iget-object v4, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 78
    invoke-virtual {v0, v4}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 81
    move-result v0

    .line 82
    iget-object v4, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 84
    invoke-virtual {v2, v4}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 87
    move-result v2

    .line 88
    iget-object v4, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 90
    invoke-virtual {v1, v4}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 93
    move-result v1

    .line 94
    iget-object v4, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 96
    invoke-virtual {v3, v4}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 99
    move-result v3

    .line 100
    if-ge v0, v1, :cond_71

    .line 102
    if-ge v2, v3, :cond_71

    .line 104
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 106
    aget-object v1, v0, p1

    .line 108
    aget-object v2, v0, p2

    .line 110
    aput-object v2, v0, p1

    .line 112
    aput-object v1, v0, p2

    .line 114
    :cond_71
    :goto_71
    return-void
.end method

.method public final r(Lv0/a$a;I)V
    .registers 12

    .line 1
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 3
    aget-object v0, v0, p2

    .line 5
    const-string v1, "DefaultCropSize"

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lv0/a$b;

    .line 13
    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 15
    aget-object v1, v1, p2

    .line 17
    const-string v2, "SensorTopBorder"

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lv0/a$b;

    .line 25
    iget-object v2, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 27
    aget-object v2, v2, p2

    .line 29
    const-string v3, "SensorLeftBorder"

    .line 31
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lv0/a$b;

    .line 37
    iget-object v3, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 39
    aget-object v3, v3, p2

    .line 41
    const-string v4, "SensorBottomBorder"

    .line 43
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lv0/a$b;

    .line 49
    iget-object v4, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 51
    aget-object v4, v4, p2

    .line 53
    const-string v5, "SensorRightBorder"

    .line 55
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lv0/a$b;

    .line 61
    const-string v5, "ImageWidth"

    .line 63
    const-string v6, "ImageLength"

    .line 65
    if-eqz v0, :cond_c1

    .line 67
    iget p1, v0, Lv0/a$b;->a:I

    .line 69
    const/4 v1, 0x5

    .line 70
    const/4 v2, 0x1

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x2

    .line 73
    const-string v7, "Invalid crop size values. cropSize="

    .line 75
    const-string v8, "ExifInterface"

    .line 77
    if-ne p1, v1, :cond_80

    .line 79
    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 81
    invoke-virtual {v0, p1}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 84
    move-result-object p1

    .line 85
    check-cast p1, [Lv0/a$d;

    .line 87
    if-eqz p1, :cond_6d

    .line 89
    array-length v0, p1

    .line 90
    if-eq v0, v4, :cond_5c

    .line 92
    goto :goto_6d

    .line 93
    :cond_5c
    aget-object v0, p1, v3

    .line 95
    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 97
    invoke-static {v0, v1}, Lv0/a$b;->c(Lv0/a$d;Ljava/nio/ByteOrder;)Lv0/a$b;

    .line 100
    move-result-object v0

    .line 101
    aget-object p1, p1, v2

    .line 103
    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 105
    invoke-static {p1, v1}, Lv0/a$b;->c(Lv0/a$d;Ljava/nio/ByteOrder;)Lv0/a$b;

    .line 108
    move-result-object p1

    .line 109
    goto :goto_9e

    .line 110
    :cond_6d
    :goto_6d
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    move-result-object p2

    .line 114
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 125
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 129
    :cond_80
    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 131
    invoke-virtual {v0, p1}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 134
    move-result-object p1

    .line 135
    check-cast p1, [I

    .line 137
    if-eqz p1, :cond_ae

    .line 139
    array-length v0, p1

    .line 140
    if-eq v0, v4, :cond_8e

    .line 142
    goto :goto_ae

    .line 143
    :cond_8e
    aget v0, p1, v3

    .line 145
    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 147
    invoke-static {v0, v1}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    .line 150
    move-result-object v0

    .line 151
    aget p1, p1, v2

    .line 153
    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 155
    invoke-static {p1, v1}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    .line 158
    move-result-object p1

    .line 159
    :goto_9e
    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 161
    aget-object v1, v1, p2

    .line 163
    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 168
    aget-object p2, v0, p2

    .line 170
    invoke-virtual {p2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    goto/16 :goto_131

    .line 175
    :cond_ae
    :goto_ae
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    move-result-object p2

    .line 179
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p1

    .line 190
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 194
    :cond_c1
    if-eqz v1, :cond_102

    .line 196
    if-eqz v2, :cond_102

    .line 198
    if-eqz v3, :cond_102

    .line 200
    if-eqz v4, :cond_102

    .line 202
    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 204
    invoke-virtual {v1, p1}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 207
    move-result p1

    .line 208
    iget-object v0, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 210
    invoke-virtual {v3, v0}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 213
    move-result v0

    .line 214
    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 216
    invoke-virtual {v4, v1}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 219
    move-result v1

    .line 220
    iget-object v3, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 222
    invoke-virtual {v2, v3}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 225
    move-result v2

    .line 226
    if-le v0, p1, :cond_131

    .line 228
    if-le v1, v2, :cond_131

    .line 230
    sub-int/2addr v0, p1

    .line 231
    sub-int/2addr v1, v2

    .line 232
    iget-object p1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 234
    invoke-static {v0, p1}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    .line 237
    move-result-object p1

    .line 238
    iget-object v0, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 240
    invoke-static {v1, v0}, Lv0/a$b;->d(ILjava/nio/ByteOrder;)Lv0/a$b;

    .line 243
    move-result-object v0

    .line 244
    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 246
    aget-object v1, v1, p2

    .line 248
    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object p1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 253
    aget-object p1, p1, p2

    .line 255
    invoke-virtual {p1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    goto :goto_131

    .line 259
    :cond_102
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 261
    aget-object v0, v0, p2

    .line 263
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Lv0/a$b;

    .line 269
    iget-object v1, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 271
    aget-object v1, v1, p2

    .line 273
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    move-result-object v1

    .line 277
    check-cast v1, Lv0/a$b;

    .line 279
    if-eqz v0, :cond_11a

    .line 281
    if-nez v1, :cond_131

    .line 283
    :cond_11a
    iget-object v0, p0, Lv0/a;->c:[Ljava/util/HashMap;

    .line 285
    aget-object v0, v0, p2

    .line 287
    const-string v1, "JPEGInterchangeFormat"

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Lv0/a$b;

    .line 295
    if-eqz v0, :cond_131

    .line 297
    iget-object v1, p0, Lv0/a;->e:Ljava/nio/ByteOrder;

    .line 299
    invoke-virtual {v0, v1}, Lv0/a$b;->f(Ljava/nio/ByteOrder;)I

    .line 302
    move-result v0

    .line 303
    invoke-virtual {p0, p1, v0, p2}, Lv0/a;->e(Lv0/a$a;II)V

    .line 306
    :cond_131
    :goto_131
    return-void
.end method
