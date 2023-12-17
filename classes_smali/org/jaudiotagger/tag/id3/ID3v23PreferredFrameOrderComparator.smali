.class public Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;
.super Ljava/lang/Object;
.source "ID3v23PreferredFrameOrderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static comparator:Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;

.field private static frameIdsInPreferredOrder:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 8
    const-string v1, "UFID"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 15
    const-string v1, "TIT2"

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 22
    const-string v1, "TPE1"

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 29
    const-string v1, "TALB"

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 36
    const-string v1, "TORY"

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 43
    const-string v2, "TCON"

    .line 45
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 50
    const-string v2, "TCOM"

    .line 52
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 57
    const-string v2, "TPE3"

    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 64
    const-string v2, "TIT1"

    .line 66
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 71
    const-string v2, "TRCK"

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 78
    const-string v2, "TYER"

    .line 80
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 85
    const-string v2, "TDAT"

    .line 87
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 92
    const-string v2, "TIME"

    .line 94
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 99
    const-string v2, "TBPM"

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 106
    const-string v2, "TSRC"

    .line 108
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 118
    const-string v1, "TPE2"

    .line 120
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 125
    const-string v1, "TIT3"

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 132
    const-string v1, "USLT"

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 139
    const-string v1, "TXXX"

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 146
    const-string v1, "WXXX"

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 153
    const-string v1, "WOAR"

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 160
    const-string v1, "WCOM"

    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 167
    const-string v2, "WCOP"

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 174
    const-string v2, "WOAF"

    .line 176
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 181
    const-string v2, "WORS"

    .line 183
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 188
    const-string v2, "WPAY"

    .line 190
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 195
    const-string v2, "WPUB"

    .line 197
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 207
    const-string v1, "TEXT"

    .line 209
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 214
    const-string v1, "TMED"

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 221
    const-string v1, "IPLS"

    .line 223
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 228
    const-string v1, "TLAN"

    .line 230
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 235
    const-string v1, "TSOT"

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 242
    const-string v2, "TDLY"

    .line 244
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 249
    const-string v2, "PCNT"

    .line 251
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 256
    const-string v2, "POPM"

    .line 258
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 263
    const-string v2, "TPUB"

    .line 265
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 270
    const-string v2, "TSO2"

    .line 272
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 277
    const-string v3, "TSOC"

    .line 279
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 284
    const-string v4, "TCMP"

    .line 286
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 291
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 296
    const-string v1, "TSOP"

    .line 298
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 303
    const-string v1, "TSOA"

    .line 305
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 310
    const-string v1, "XSOT"

    .line 312
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 317
    const-string v1, "XSOP"

    .line 319
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 324
    const-string v1, "XSOA"

    .line 326
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 331
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 336
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 341
    const-string v1, "COMM"

    .line 343
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 348
    const-string v1, "TRDA"

    .line 350
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 355
    const-string v1, "COMR"

    .line 357
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 362
    const-string v1, "TCOP"

    .line 364
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 369
    const-string v1, "TENC"

    .line 371
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 376
    const-string v1, "ENCR"

    .line 378
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 383
    const-string v1, "EQUA"

    .line 385
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 390
    const-string v1, "ETCO"

    .line 392
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 397
    const-string v1, "TOWN"

    .line 399
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 404
    const-string v1, "TFLT"

    .line 406
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 411
    const-string v1, "GRID"

    .line 413
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 418
    const-string v1, "TSSE"

    .line 420
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 425
    const-string v1, "TKEY"

    .line 427
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 432
    const-string v1, "TLEN"

    .line 434
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 439
    const-string v1, "LINK"

    .line 441
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 446
    const-string v1, "TSIZ"

    .line 448
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 453
    const-string v1, "MLLT"

    .line 455
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 460
    const-string v1, "TOPE"

    .line 462
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 467
    const-string v1, "TOFN"

    .line 469
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 474
    const-string v1, "TOLY"

    .line 476
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 481
    const-string v1, "TOAL"

    .line 483
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 488
    const-string v1, "OWNE"

    .line 490
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 495
    const-string v1, "POSS"

    .line 497
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 502
    const-string v1, "TRSN"

    .line 504
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 509
    const-string v1, "TRSO"

    .line 511
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 516
    const-string v1, "RBUF"

    .line 518
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 523
    const-string v1, "TPE4"

    .line 525
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 530
    const-string v1, "RVRB"

    .line 532
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 537
    const-string v1, "TPOS"

    .line 539
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 544
    const-string v1, "SYLT"

    .line 546
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 551
    const-string v1, "SYTC"

    .line 553
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 558
    const-string v1, "USER"

    .line 560
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 565
    const-string v1, "APIC"

    .line 567
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 572
    const-string v1, "PRIV"

    .line 574
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 579
    const-string v1, "MCDI"

    .line 581
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 586
    const-string v1, "AENC"

    .line 588
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 593
    const-string v1, "GEOB"

    .line 595
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstanceof()Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->comparator:Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;

    .line 7
    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;-><init>()V

    .line 10
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->comparator:Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;

    .line 12
    :cond_b
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->comparator:Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;

    .line 14
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 2
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 3
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;

    .line 3
    return p1
.end method
