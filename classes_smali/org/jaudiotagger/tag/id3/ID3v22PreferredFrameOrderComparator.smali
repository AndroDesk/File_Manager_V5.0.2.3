.class public Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;
.super Ljava/lang/Object;
.source "ID3v22PreferredFrameOrderComparator.java"

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
.field private static comparator:Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;

.field private static frameIdsInPreferredOrder:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 8
    const-string v1, "UFI"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 15
    const-string v1, "TT2"

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 22
    const-string v1, "TP1"

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 29
    const-string v1, "TAL"

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 36
    const-string v1, "TOR"

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 43
    const-string v2, "TCO"

    .line 45
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 50
    const-string v2, "TCM"

    .line 52
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 57
    const-string v2, "TPE"

    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 64
    const-string v2, "TT1"

    .line 66
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 71
    const-string v2, "TRK"

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 78
    const-string v2, "TYE"

    .line 80
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 85
    const-string v2, "TDA"

    .line 87
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 92
    const-string v2, "TIM"

    .line 94
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 99
    const-string v2, "TBP"

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 106
    const-string v2, "TRC"

    .line 108
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 118
    const-string v1, "TP2"

    .line 120
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 125
    const-string v1, "TT3"

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 132
    const-string v1, "ULT"

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 139
    const-string v1, "TXX"

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 146
    const-string v1, "WXX"

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 153
    const-string v1, "WAR"

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 160
    const-string v1, "WCM"

    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 167
    const-string v2, "WCP"

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 174
    const-string v2, "WAF"

    .line 176
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 181
    const-string v2, "WRS"

    .line 183
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 188
    const-string v2, "WPAY"

    .line 190
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 195
    const-string v2, "WPB"

    .line 197
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 207
    const-string v1, "TXT"

    .line 209
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 214
    const-string v1, "TMT"

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 221
    const-string v1, "IPL"

    .line 223
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 228
    const-string v1, "TLA"

    .line 230
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 235
    const-string v1, "TST"

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 242
    const-string v2, "TDY"

    .line 244
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 249
    const-string v2, "CNT"

    .line 251
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 256
    const-string v2, "POP"

    .line 258
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 263
    const-string v2, "TPB"

    .line 265
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 270
    const-string v2, "TS2"

    .line 272
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 277
    const-string v3, "TSC"

    .line 279
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 284
    const-string v4, "TCP"

    .line 286
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 291
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 296
    const-string v1, "TSP"

    .line 298
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 303
    const-string v1, "TSA"

    .line 305
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 310
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 315
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 320
    const-string v1, "COM"

    .line 322
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 327
    const-string v1, "TRD"

    .line 329
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 334
    const-string v1, "TCR"

    .line 336
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 341
    const-string v1, "TEN"

    .line 343
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 348
    const-string v1, "EQU"

    .line 350
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 355
    const-string v1, "ETC"

    .line 357
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 362
    const-string v1, "TFT"

    .line 364
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 369
    const-string v1, "TSS"

    .line 371
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 376
    const-string v1, "TKE"

    .line 378
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 383
    const-string v1, "TLE"

    .line 385
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 390
    const-string v1, "LNK"

    .line 392
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 397
    const-string v1, "TSI"

    .line 399
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 404
    const-string v1, "MLL"

    .line 406
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 411
    const-string v1, "TOA"

    .line 413
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 418
    const-string v1, "TOF"

    .line 420
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 425
    const-string v1, "TOL"

    .line 427
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 432
    const-string v1, "TOT"

    .line 434
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 439
    const-string v1, "BUF"

    .line 441
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 446
    const-string v1, "TP4"

    .line 448
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 453
    const-string v1, "REV"

    .line 455
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 460
    const-string v1, "TPA"

    .line 462
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 467
    const-string v1, "SLT"

    .line 469
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 474
    const-string v1, "STC"

    .line 476
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 481
    const-string v1, "PIC"

    .line 483
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 488
    const-string v1, "MCI"

    .line 490
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 495
    const-string v1, "CRA"

    .line 497
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    .line 502
    const-string v1, "GEO"

    .line 504
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstanceof()Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->comparator:Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;

    .line 7
    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;-><init>()V

    .line 10
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->comparator:Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;

    .line 12
    :cond_b
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->comparator:Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;

    .line 14
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 2
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 3
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;->frameIdsInPreferredOrder:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lorg/jaudiotagger/tag/id3/ID3v22PreferredFrameOrderComparator;

    .line 3
    return p1
.end method
