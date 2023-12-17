.class public Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;
.super Ljava/lang/Object;
.source "ID3v24PreferredFrameOrderComparator.java"

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
.field private static comparator:Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;

.field private static frameIdsInPreferredOrder:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 8
    const-string v1, "UFID"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 15
    const-string v1, "TIT2"

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 22
    const-string v1, "TPE1"

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 29
    const-string v1, "TALB"

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 36
    const-string v1, "TSOA"

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 43
    const-string v1, "TCON"

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 50
    const-string v1, "TCOM"

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 57
    const-string v1, "TPE3"

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 64
    const-string v1, "TIT1"

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 71
    const-string v1, "TRCK"

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 78
    const-string v1, "TDRC"

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 85
    const-string v1, "TPE2"

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 92
    const-string v1, "TBPM"

    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 99
    const-string v1, "TSRC"

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 106
    const-string v1, "TSOT"

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 113
    const-string v1, "TIT3"

    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 120
    const-string v1, "USLT"

    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 127
    const-string v1, "TXXX"

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 134
    const-string v1, "WXXX"

    .line 136
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 141
    const-string v1, "WOAR"

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 148
    const-string v1, "WCOM"

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 155
    const-string v2, "WCOP"

    .line 157
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 162
    const-string v2, "WOAF"

    .line 164
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 169
    const-string v2, "WORS"

    .line 171
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 176
    const-string v2, "WPAY"

    .line 178
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 183
    const-string v2, "WPUB"

    .line 185
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 195
    const-string v1, "TEXT"

    .line 197
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 202
    const-string v1, "TMED"

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 209
    const-string v1, "TIPL"

    .line 211
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 216
    const-string v1, "TLAN"

    .line 218
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 223
    const-string v1, "TSOP"

    .line 225
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 230
    const-string v1, "TDLY"

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 237
    const-string v1, "PCNT"

    .line 239
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 244
    const-string v1, "POPM"

    .line 246
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 251
    const-string v1, "TPUB"

    .line 253
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 258
    const-string v1, "TSO2"

    .line 260
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 265
    const-string v1, "TSOC"

    .line 267
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 272
    const-string v1, "TCMP"

    .line 274
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 279
    const-string v1, "COMM"

    .line 281
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 286
    const-string v1, "ASPI"

    .line 288
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 293
    const-string v1, "COMR"

    .line 295
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 300
    const-string v1, "TCOP"

    .line 302
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 307
    const-string v1, "TENC"

    .line 309
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 314
    const-string v1, "TDEN"

    .line 316
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 321
    const-string v1, "ENCR"

    .line 323
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 328
    const-string v1, "EQU2"

    .line 330
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 335
    const-string v1, "ETCO"

    .line 337
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 342
    const-string v1, "TOWN"

    .line 344
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 349
    const-string v1, "TFLT"

    .line 351
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 356
    const-string v1, "GRID"

    .line 358
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 363
    const-string v1, "TSSE"

    .line 365
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 370
    const-string v1, "TKEY"

    .line 372
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 377
    const-string v1, "TLEN"

    .line 379
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 384
    const-string v1, "LINK"

    .line 386
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 391
    const-string v1, "TMOO"

    .line 393
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 398
    const-string v1, "MLLT"

    .line 400
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 405
    const-string v1, "TMCL"

    .line 407
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 412
    const-string v1, "TOPE"

    .line 414
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 419
    const-string v1, "TDOR"

    .line 421
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 426
    const-string v1, "TOFN"

    .line 428
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 433
    const-string v1, "TOLY"

    .line 435
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 440
    const-string v1, "TOAL"

    .line 442
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 447
    const-string v1, "OWNE"

    .line 449
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 454
    const-string v1, "POSS"

    .line 456
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 461
    const-string v1, "TPRO"

    .line 463
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 468
    const-string v1, "TRSN"

    .line 470
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 475
    const-string v1, "TRSO"

    .line 477
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 482
    const-string v1, "RBUF"

    .line 484
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 489
    const-string v1, "RVA2"

    .line 491
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 496
    const-string v1, "TDRL"

    .line 498
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 503
    const-string v1, "TPE4"

    .line 505
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 510
    const-string v1, "RVRB"

    .line 512
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 517
    const-string v1, "SEEK"

    .line 519
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 524
    const-string v1, "TPOS"

    .line 526
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 531
    const-string v1, "TSST"

    .line 533
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 538
    const-string v1, "SIGN"

    .line 540
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 545
    const-string v1, "SYLT"

    .line 547
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 552
    const-string v1, "SYTC"

    .line 554
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 559
    const-string v1, "TDTG"

    .line 561
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 566
    const-string v1, "USER"

    .line 568
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 573
    const-string v1, "APIC"

    .line 575
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 580
    const-string v1, "PRIV"

    .line 582
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 587
    const-string v1, "MCDI"

    .line 589
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 594
    const-string v1, "AENC"

    .line 596
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 601
    const-string v1, "GEOB"

    .line 603
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstanceof()Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->comparator:Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;

    .line 7
    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;-><init>()V

    .line 10
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->comparator:Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;

    .line 12
    :cond_b
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->comparator:Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;

    .line 14
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 2
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 3
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;

    .line 3
    return p1
.end method
