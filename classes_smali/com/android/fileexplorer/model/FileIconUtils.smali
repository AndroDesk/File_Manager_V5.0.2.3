.class public Lcom/android/fileexplorer/model/FileIconUtils;
.super Ljava/lang/Object;
.source "FileIconUtils.java"


# static fields
.field public static final BIG_THUMBNAIL:I = 0x5

.field public static final SMALL_THUMBNAIL:I = 0x3

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

.field private static sFileExtToIconsMirror:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sGridFileExtToIcons:Ljava/util/HashMap;
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
    .registers 39

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/model/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcom/android/fileexplorer/model/FileIconUtils;->sGridFileExtToIcons:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    sput-object v0, Lcom/android/fileexplorer/model/FileIconUtils;->sFileExtToIconsMirror:Ljava/util/HashMap;

    .line 22
    const-string v0, "mp3"

    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    const v2, 0x7f08017f

    .line 31
    const v3, 0x7f0801bb

    .line 34
    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 37
    const-string v1, "wma"

    .line 39
    filled-new-array {v1}, [Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    const v4, 0x7f0801c6

    .line 46
    invoke-static {v3, v2, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 49
    const-string v3, "wav"

    .line 51
    filled-new-array {v3}, [Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    const v5, 0x7f0801c5

    .line 58
    invoke-static {v4, v2, v5}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 61
    const-string v4, "mid"

    .line 63
    filled-new-array {v4}, [Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    const v6, 0x7f0801ba

    .line 70
    invoke-static {v5, v2, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 73
    const-string v7, "mp4"

    .line 75
    const-string v8, "wmv"

    .line 77
    const-string v9, "mpeg"

    .line 79
    const-string v10, "m4v"

    .line 81
    const-string v11, "3gp"

    .line 83
    const-string v12, "3g2"

    .line 85
    const-string v13, "3gpp2"

    .line 87
    const-string v14, "asf"

    .line 89
    const-string v15, "flv"

    .line 91
    const-string v16, "mkv"

    .line 93
    const-string v17, "vob"

    .line 95
    const-string v18, "ts"

    .line 97
    const-string v19, "f4v"

    .line 99
    const-string v20, "rm"

    .line 101
    const-string v21, "mov"

    .line 103
    const-string v22, "rmvb"

    .line 105
    const-string v23, "movie"

    .line 107
    const-string v24, "dv"

    .line 109
    filled-new-array/range {v7 .. v24}, [Ljava/lang/String;

    .line 112
    move-result-object v5

    .line 113
    const v6, 0x7f080194

    .line 116
    const v7, 0x7f0801c4

    .line 119
    invoke-static {v5, v6, v7}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 122
    const-string v8, "jpg"

    .line 124
    const-string v9, "jpeg"

    .line 126
    const-string v10, "gif"

    .line 128
    const-string v11, "png"

    .line 130
    const-string v12, "bmp"

    .line 132
    const-string v13, "wbmp"

    .line 134
    const-string v14, "heic"

    .line 136
    filled-new-array/range {v8 .. v14}, [Ljava/lang/String;

    .line 139
    move-result-object v5

    .line 140
    const v7, 0x7f080186

    .line 143
    const v8, 0x7f0801bf

    .line 146
    invoke-static {v5, v7, v8}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 149
    const-string v5, "txt"

    .line 151
    filled-new-array {v5}, [Ljava/lang/String;

    .line 154
    move-result-object v7

    .line 155
    const v8, 0x7f08018f

    .line 158
    const v9, 0x7f0801c2

    .line 161
    invoke-static {v7, v8, v9}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 164
    const-string v7, "doc"

    .line 166
    const-string v8, "docx"

    .line 168
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 171
    move-result-object v9

    .line 172
    const v10, 0x7f080198

    .line 175
    const v11, 0x7f0801c7

    .line 178
    invoke-static {v9, v10, v11}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 181
    const-string v9, "ppt"

    .line 183
    const-string v10, "pptx"

    .line 185
    filled-new-array {v9, v10}, [Ljava/lang/String;

    .line 188
    move-result-object v11

    .line 189
    const v12, 0x7f08018a

    .line 192
    const v13, 0x7f0801c0

    .line 195
    invoke-static {v11, v12, v13}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 198
    const-string v11, "xls"

    .line 200
    const-string v12, "xlsx"

    .line 202
    filled-new-array {v11, v12}, [Ljava/lang/String;

    .line 205
    move-result-object v13

    .line 206
    const v14, 0x7f08019f

    .line 209
    const v15, 0x7f0801c9

    .line 212
    invoke-static {v13, v14, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 215
    const-string v13, "wps"

    .line 217
    filled-new-array {v13}, [Ljava/lang/String;

    .line 220
    move-result-object v14

    .line 221
    const v15, 0x7f08019b

    .line 224
    const v6, 0x7f0801c8

    .line 227
    invoke-static {v14, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 230
    const-string v6, "pps"

    .line 232
    filled-new-array {v6}, [Ljava/lang/String;

    .line 235
    move-result-object v14

    .line 236
    const v15, 0x7f08016d

    .line 239
    const/4 v2, -0x1

    .line 240
    invoke-static {v14, v15, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 243
    const-string v14, "et"

    .line 245
    move-object/from16 v18, v6

    .line 247
    filled-new-array {v14}, [Ljava/lang/String;

    .line 250
    move-result-object v6

    .line 251
    invoke-static {v6, v15, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 254
    const-string v6, "wpt"

    .line 256
    move-object/from16 v19, v14

    .line 258
    filled-new-array {v6}, [Ljava/lang/String;

    .line 261
    move-result-object v14

    .line 262
    invoke-static {v14, v15, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 265
    const-string v14, "ett"

    .line 267
    move-object/from16 v20, v6

    .line 269
    filled-new-array {v14}, [Ljava/lang/String;

    .line 272
    move-result-object v6

    .line 273
    invoke-static {v6, v15, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 276
    const-string v6, "dps"

    .line 278
    filled-new-array {v6}, [Ljava/lang/String;

    .line 281
    move-result-object v6

    .line 282
    invoke-static {v6, v15, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 285
    const-string v6, "dpt"

    .line 287
    filled-new-array {v6}, [Ljava/lang/String;

    .line 290
    move-result-object v6

    .line 291
    invoke-static {v6, v15, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 294
    const-string v6, "pdf"

    .line 296
    filled-new-array {v6}, [Ljava/lang/String;

    .line 299
    move-result-object v6

    .line 300
    const v2, 0x7f080183

    .line 303
    const v15, 0x7f0801be

    .line 306
    invoke-static {v6, v2, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 309
    const-string v2, "zip"

    .line 311
    filled-new-array {v2}, [Ljava/lang/String;

    .line 314
    move-result-object v2

    .line 315
    const v6, 0x7f0801a3

    .line 318
    const v15, 0x7f0801cb

    .line 321
    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 324
    const-string v2, "mtz"

    .line 326
    filled-new-array {v2}, [Ljava/lang/String;

    .line 329
    move-result-object v2

    .line 330
    const v6, 0x7f08018c

    .line 333
    const v15, 0x7f0801c1

    .line 336
    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 339
    const-string v2, "rar"

    .line 341
    filled-new-array {v2}, [Ljava/lang/String;

    .line 344
    move-result-object v2

    .line 345
    const v6, 0x7f0801a3

    .line 348
    const v15, 0x7f0801cb

    .line 351
    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 354
    const-string v2, "apk"

    .line 356
    filled-new-array {v2}, [Ljava/lang/String;

    .line 359
    move-result-object v2

    .line 360
    const v6, 0x7f080167

    .line 363
    const v15, 0x7f0801b4

    .line 366
    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 369
    const-string v2, "amr"

    .line 371
    filled-new-array {v2}, [Ljava/lang/String;

    .line 374
    move-result-object v2

    .line 375
    const v6, 0x7f080162

    .line 378
    const v15, 0x7f0801b2

    .line 381
    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 384
    const-string v2, "vcf"

    .line 386
    filled-new-array {v2}, [Ljava/lang/String;

    .line 389
    move-result-object v2

    .line 390
    const v6, 0x7f080190

    .line 393
    const v15, 0x7f0801c3

    .line 396
    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 399
    const-string v2, "flac"

    .line 401
    filled-new-array {v2}, [Ljava/lang/String;

    .line 404
    move-result-object v2

    .line 405
    const v6, 0x7f0801b7

    .line 408
    const v15, 0x7f08017f

    .line 411
    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 414
    const-string v2, "aac"

    .line 416
    filled-new-array {v2}, [Ljava/lang/String;

    .line 419
    move-result-object v2

    .line 420
    const v6, 0x7f0801b1

    .line 423
    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 426
    const-string v2, "ape"

    .line 428
    filled-new-array {v2}, [Ljava/lang/String;

    .line 431
    move-result-object v2

    .line 432
    const v6, 0x7f0801b3

    .line 435
    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 438
    const-string v2, "m4a"

    .line 440
    filled-new-array {v2}, [Ljava/lang/String;

    .line 443
    move-result-object v2

    .line 444
    const v6, 0x7f0801b9

    .line 447
    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 450
    const-string v2, "ogg"

    .line 452
    filled-new-array {v2}, [Ljava/lang/String;

    .line 455
    move-result-object v2

    .line 456
    const v6, 0x7f0801bd

    .line 459
    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 462
    const-string v2, "audio"

    .line 464
    filled-new-array {v2}, [Ljava/lang/String;

    .line 467
    move-result-object v2

    .line 468
    const v6, 0x7f0801bc

    .line 471
    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 474
    const-string v2, "html"

    .line 476
    filled-new-array {v2}, [Ljava/lang/String;

    .line 479
    move-result-object v2

    .line 480
    const v6, 0x7f0801b8

    .line 483
    const v15, 0x7f08016d

    .line 486
    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 489
    const-string v2, "xml"

    .line 491
    filled-new-array {v2}, [Ljava/lang/String;

    .line 494
    move-result-object v2

    .line 495
    const v6, 0x7f0801ca

    .line 498
    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 501
    const-string v2, "3gpp"

    .line 503
    filled-new-array {v2}, [Ljava/lang/String;

    .line 506
    move-result-object v2

    .line 507
    const v6, 0x7f0801b0

    .line 510
    const v15, 0x7f080194

    .line 513
    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 516
    const-string v2, "epub"

    .line 518
    filled-new-array {v2}, [Ljava/lang/String;

    .line 521
    move-result-object v2

    .line 522
    const/4 v6, -0x1

    .line 523
    const v15, 0x7f08016d

    .line 526
    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 529
    const-string v2, "ics"

    .line 531
    filled-new-array {v2}, [Ljava/lang/String;

    .line 534
    move-result-object v2

    .line 535
    const v15, 0x7f080177

    .line 538
    invoke-static {v2, v15, v6}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 541
    const-string v2, "exe"

    .line 543
    filled-new-array {v2}, [Ljava/lang/String;

    .line 546
    move-result-object v2

    .line 547
    const v6, 0x7f080174

    .line 550
    const v15, 0x7f0801b6

    .line 553
    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 556
    const-string v2, "md"

    .line 558
    filled-new-array {v2}, [Ljava/lang/String;

    .line 561
    move-result-object v2

    .line 562
    const v6, 0x7f080243

    .line 565
    const v15, 0x7f0801cc

    .line 568
    invoke-static {v2, v6, v15}, Lcom/android/fileexplorer/model/FileIconUtils;->addItem([Ljava/lang/String;II)V

    .line 571
    filled-new-array {v0}, [Ljava/lang/String;

    .line 574
    move-result-object v0

    .line 575
    const v2, 0x7f08017e

    .line 578
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 581
    filled-new-array {v1}, [Ljava/lang/String;

    .line 584
    move-result-object v0

    .line 585
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 588
    filled-new-array {v3}, [Ljava/lang/String;

    .line 591
    move-result-object v0

    .line 592
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 595
    filled-new-array {v4}, [Ljava/lang/String;

    .line 598
    move-result-object v0

    .line 599
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 602
    const-string v21, "mp4"

    .line 604
    const-string v22, "wmv"

    .line 606
    const-string v23, "mpeg"

    .line 608
    const-string v24, "m4v"

    .line 610
    const-string v25, "3gp"

    .line 612
    const-string v26, "3g2"

    .line 614
    const-string v27, "3gpp2"

    .line 616
    const-string v28, "asf"

    .line 618
    const-string v29, "flv"

    .line 620
    const-string v30, "mkv"

    .line 622
    const-string v31, "vob"

    .line 624
    const-string v32, "ts"

    .line 626
    const-string v33, "f4v"

    .line 628
    const-string v34, "rm"

    .line 630
    const-string v35, "mov"

    .line 632
    const-string v36, "rmvb"

    .line 634
    const-string v37, "movie"

    .line 636
    const-string v38, "dv"

    .line 638
    filled-new-array/range {v21 .. v38}, [Ljava/lang/String;

    .line 641
    move-result-object v0

    .line 642
    const v1, 0x7f080193

    .line 645
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 648
    const-string v21, "jpg"

    .line 650
    const-string v22, "jpeg"

    .line 652
    const-string v23, "gif"

    .line 654
    const-string v24, "png"

    .line 656
    const-string v25, "bmp"

    .line 658
    const-string v26, "wbmp"

    .line 660
    const-string v27, "heic"

    .line 662
    filled-new-array/range {v21 .. v27}, [Ljava/lang/String;

    .line 665
    move-result-object v0

    .line 666
    const v1, 0x7f080185

    .line 669
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 672
    filled-new-array {v5}, [Ljava/lang/String;

    .line 675
    move-result-object v0

    .line 676
    const v1, 0x7f08018e

    .line 679
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 682
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 685
    move-result-object v0

    .line 686
    const v1, 0x7f080197

    .line 689
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 692
    filled-new-array {v9, v10}, [Ljava/lang/String;

    .line 695
    move-result-object v0

    .line 696
    const v1, 0x7f080189

    .line 699
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 702
    filled-new-array {v11, v12}, [Ljava/lang/String;

    .line 705
    move-result-object v0

    .line 706
    const v1, 0x7f08019e

    .line 709
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 712
    filled-new-array {v13}, [Ljava/lang/String;

    .line 715
    move-result-object v0

    .line 716
    const v1, 0x7f08019a

    .line 719
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 722
    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    .line 725
    move-result-object v0

    .line 726
    const v1, 0x7f08016c

    .line 729
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 732
    filled-new-array/range {v19 .. v19}, [Ljava/lang/String;

    .line 735
    move-result-object v0

    .line 736
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 739
    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    .line 742
    move-result-object v0

    .line 743
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 746
    filled-new-array {v14}, [Ljava/lang/String;

    .line 749
    move-result-object v0

    .line 750
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 753
    const-string v0, "dps"

    .line 755
    filled-new-array {v0}, [Ljava/lang/String;

    .line 758
    move-result-object v0

    .line 759
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 762
    const-string v0, "dpt"

    .line 764
    filled-new-array {v0}, [Ljava/lang/String;

    .line 767
    move-result-object v0

    .line 768
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 771
    const-string v0, "pdf"

    .line 773
    filled-new-array {v0}, [Ljava/lang/String;

    .line 776
    move-result-object v0

    .line 777
    const v3, 0x7f080182

    .line 780
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 783
    const-string v0, "zip"

    .line 785
    filled-new-array {v0}, [Ljava/lang/String;

    .line 788
    move-result-object v0

    .line 789
    const v3, 0x7f0801a2

    .line 792
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 795
    const-string v0, "mtz"

    .line 797
    filled-new-array {v0}, [Ljava/lang/String;

    .line 800
    move-result-object v0

    .line 801
    const v3, 0x7f08018c

    .line 804
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 807
    const-string v0, "rar"

    .line 809
    filled-new-array {v0}, [Ljava/lang/String;

    .line 812
    move-result-object v0

    .line 813
    const v3, 0x7f0801a2

    .line 816
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 819
    const-string v0, "apk"

    .line 821
    filled-new-array {v0}, [Ljava/lang/String;

    .line 824
    move-result-object v0

    .line 825
    const v3, 0x7f080166

    .line 828
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 831
    const-string v0, "amr"

    .line 833
    filled-new-array {v0}, [Ljava/lang/String;

    .line 836
    move-result-object v0

    .line 837
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 840
    const-string v0, "vcf"

    .line 842
    filled-new-array {v0}, [Ljava/lang/String;

    .line 845
    move-result-object v0

    .line 846
    const v3, 0x7f080191

    .line 849
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 852
    const-string v0, "flac"

    .line 854
    filled-new-array {v0}, [Ljava/lang/String;

    .line 857
    move-result-object v0

    .line 858
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 861
    const-string v0, "aac"

    .line 863
    filled-new-array {v0}, [Ljava/lang/String;

    .line 866
    move-result-object v0

    .line 867
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 870
    const-string v0, "ape"

    .line 872
    filled-new-array {v0}, [Ljava/lang/String;

    .line 875
    move-result-object v0

    .line 876
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 879
    const-string v0, "m4a"

    .line 881
    filled-new-array {v0}, [Ljava/lang/String;

    .line 884
    move-result-object v0

    .line 885
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 888
    const-string v0, "ogg"

    .line 890
    filled-new-array {v0}, [Ljava/lang/String;

    .line 893
    move-result-object v0

    .line 894
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 897
    const-string v0, "audio"

    .line 899
    filled-new-array {v0}, [Ljava/lang/String;

    .line 902
    move-result-object v0

    .line 903
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 906
    const-string v0, "html"

    .line 908
    filled-new-array {v0}, [Ljava/lang/String;

    .line 911
    move-result-object v0

    .line 912
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 915
    const-string v0, "xml"

    .line 917
    filled-new-array {v0}, [Ljava/lang/String;

    .line 920
    move-result-object v0

    .line 921
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 924
    const-string v0, "3gpp"

    .line 926
    filled-new-array {v0}, [Ljava/lang/String;

    .line 929
    move-result-object v0

    .line 930
    const v2, 0x7f080193

    .line 933
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 936
    const-string v0, "epub"

    .line 938
    filled-new-array {v0}, [Ljava/lang/String;

    .line 941
    move-result-object v0

    .line 942
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 945
    const-string v0, "ics"

    .line 947
    filled-new-array {v0}, [Ljava/lang/String;

    .line 950
    move-result-object v0

    .line 951
    const v1, 0x7f080177

    .line 954
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 957
    const-string v0, "md"

    .line 959
    filled-new-array {v0}, [Ljava/lang/String;

    .line 962
    move-result-object v0

    .line 963
    const v1, 0x7f080243

    .line 966
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->addItemMirror([Ljava/lang/String;I)V

    .line 969
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addItem([Ljava/lang/String;II)V
    .registers 9

    .line 1
    if-eqz p0, :cond_28

    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_4
    if-ge v1, v0, :cond_28

    .line 7
    aget-object v2, p0, v1

    .line 9
    sget-object v3, Lcom/android/fileexplorer/model/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object v4

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const/4 v3, -0x1

    .line 23
    if-eq p2, v3, :cond_25

    .line 25
    sget-object v3, Lcom/android/fileexplorer/model/FileIconUtils;->sGridFileExtToIcons:Ljava/util/HashMap;

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_25
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_4

    .line 41
    :cond_28
    return-void
.end method

.method private static addItemMirror([Ljava/lang/String;I)V
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
    sget-object v3, Lcom/android/fileexplorer/model/FileIconUtils;->sFileExtToIconsMirror:Ljava/util/HashMap;

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

.method public static getFileIconId(Ljava/lang/String;)I
    .registers 2

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0, v0}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result p0

    return p0
.end method

.method public static getFileIconId(Ljava/lang/String;ZZ)I
    .registers 3

    if-eqz p1, :cond_19

    .line 1
    sget-object p1, Lcom/android/fileexplorer/model/FileIconUtils;->sFileExtToIconsMirror:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_14

    const p0, 0x7f08016c

    return p0

    .line 2
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_19
    if-eqz p2, :cond_32

    .line 3
    sget-object p1, Lcom/android/fileexplorer/model/FileIconUtils;->sGridFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2d

    const p0, 0x7f0801b5

    return p0

    .line 4
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 5
    :cond_32
    invoke-static {p0}, Lmiuix/fileicon/FileIconUtils;->getFileIconId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
