.class public Lmiuix/pinyin/utilities/HindiPinyinConverter;
.super Ljava/lang/Object;
.source "HindiPinyinConverter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/SoftReferenceSingleton<",
            "Lmiuix/pinyin/utilities/HindiPinyinConverter;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUM_ADDITIONAL_CONSONANTS:I = 0x8

.field private static final NUM_CONSONANTS:I = 0x23

.field private static final NUM_DEPENDENT_VOWELS:I = 0xf

.field private static final NUM_INDEPENDENT_VOWELS:I = 0xc

.field private static final NUM_VARIOUS_SIGN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HindiPinyinConverter"

.field private static sArrayList:Lmiuix/core/util/Pools$SimplePool; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$SimplePool<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConsonantSyllableEnding:Ljava/lang/String; = "्"

.field private static sStringBuilder:Lmiuix/core/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$SimplePool<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdditionalConsonantPinyins:[Ljava/lang/String;

.field private mAdditionalConsonantUnicodes:[Ljava/lang/String;

.field private mConsonantPinyins:[Ljava/lang/String;

.field private mConsonantUnicodes:[Ljava/lang/String;

.field private mDependentVowelSignPinyins:[Ljava/lang/String;

.field private mDependentVowelSignUnicodes:[Ljava/lang/String;

.field private mDoubleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndependentVowelPinyins:[Ljava/lang/String;

.field private mIndependentVowelUnicodes:[Ljava/lang/String;

.field private mSingleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTripleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVariousSignPinyins:[Ljava/lang/String;

.field private mVariousSignUnicodes:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lmiuix/pinyin/utilities/HindiPinyinConverter$1;

    .line 3
    invoke-direct {v0}, Lmiuix/pinyin/utilities/HindiPinyinConverter$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    .line 8
    new-instance v0, Lmiuix/pinyin/utilities/HindiPinyinConverter$2;

    .line 10
    invoke-direct {v0}, Lmiuix/pinyin/utilities/HindiPinyinConverter$2;-><init>()V

    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSimplePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SimplePool;

    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    .line 20
    new-instance v0, Lmiuix/pinyin/utilities/HindiPinyinConverter$3;

    .line 22
    invoke-direct {v0}, Lmiuix/pinyin/utilities/HindiPinyinConverter$3;-><init>()V

    .line 25
    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSimplePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SimplePool;

    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->initUnicodeAndPinyin()V

    .line 4
    invoke-direct {p0}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mapUnicodeToPinyin()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/pinyin/utilities/HindiPinyinConverter$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/pinyin/utilities/HindiPinyinConverter;-><init>()V

    return-void
.end method

.method private static varargs concat([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    .line 3
    invoke-virtual {v0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/StringBuilder;

    .line 9
    array-length v1, p0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    if-ge v2, v1, :cond_14

    .line 13
    aget-object v3, p0, v2

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_a

    .line 21
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    sget-object v1, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    .line 27
    invoke-virtual {v1, v0}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 30
    return-object p0
.end method

.method public static getInstance()Lmiuix/pinyin/utilities/HindiPinyinConverter;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    .line 3
    invoke-virtual {v0}, Lmiuix/core/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;

    .line 9
    return-object v0
.end method

.method private initUnicodeAndPinyin()V
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/16 v1, 0xc

    .line 5
    new-array v2, v1, [Ljava/lang/String;

    .line 7
    iput-object v2, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    .line 9
    new-array v2, v1, [Ljava/lang/String;

    .line 11
    iput-object v2, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    .line 13
    const/16 v2, 0xf

    .line 15
    new-array v3, v2, [Ljava/lang/String;

    .line 17
    iput-object v3, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    .line 19
    new-array v3, v2, [Ljava/lang/String;

    .line 21
    iput-object v3, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    .line 23
    const/16 v3, 0x23

    .line 25
    new-array v4, v3, [Ljava/lang/String;

    .line 27
    iput-object v4, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    .line 29
    new-array v3, v3, [Ljava/lang/String;

    .line 31
    iput-object v3, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    .line 33
    const/16 v3, 0x8

    .line 35
    new-array v4, v3, [Ljava/lang/String;

    .line 37
    iput-object v4, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    .line 39
    new-array v4, v3, [Ljava/lang/String;

    .line 41
    iput-object v4, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    .line 43
    const/4 v4, 0x3

    .line 44
    new-array v5, v4, [Ljava/lang/String;

    .line 46
    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    .line 48
    new-array v5, v4, [Ljava/lang/String;

    .line 50
    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    .line 52
    new-instance v5, Ljava/util/HashMap;

    .line 54
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 57
    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    .line 59
    new-instance v5, Ljava/util/HashMap;

    .line 61
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 64
    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    .line 66
    new-instance v5, Ljava/util/HashMap;

    .line 68
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 71
    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    .line 73
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    .line 75
    const-string v6, "अ"

    .line 77
    const/4 v7, 0x0

    .line 78
    aput-object v6, v5, v7

    .line 80
    const-string v6, "आ"

    .line 82
    const/4 v8, 0x1

    .line 83
    aput-object v6, v5, v8

    .line 85
    const-string v6, "इ"

    .line 87
    const/4 v9, 0x2

    .line 88
    aput-object v6, v5, v9

    .line 90
    const-string v6, "ई"

    .line 92
    aput-object v6, v5, v4

    .line 94
    const-string v6, "उ"

    .line 96
    const/4 v10, 0x4

    .line 97
    aput-object v6, v5, v10

    .line 99
    const-string v6, "ऊ"

    .line 101
    const/4 v11, 0x5

    .line 102
    aput-object v6, v5, v11

    .line 104
    const-string v6, "ऋ"

    .line 106
    const/4 v12, 0x6

    .line 107
    aput-object v6, v5, v12

    .line 109
    const-string v6, "ए"

    .line 111
    const/4 v13, 0x7

    .line 112
    aput-object v6, v5, v13

    .line 114
    const-string v6, "ऐ"

    .line 116
    aput-object v6, v5, v3

    .line 118
    const-string v6, "ऑ"

    .line 120
    const/16 v14, 0x9

    .line 122
    aput-object v6, v5, v14

    .line 124
    const-string v6, "ओ"

    .line 126
    const/16 v15, 0xa

    .line 128
    aput-object v6, v5, v15

    .line 130
    const-string v6, "औ"

    .line 132
    const/16 v16, 0xb

    .line 134
    aput-object v6, v5, v16

    .line 136
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    .line 138
    const-string v6, "a"

    .line 140
    aput-object v6, v5, v7

    .line 142
    const-string v6, "aa"

    .line 144
    aput-object v6, v5, v8

    .line 146
    const-string v17, "i"

    .line 148
    aput-object v17, v5, v9

    .line 150
    const-string v18, "ee"

    .line 152
    aput-object v18, v5, v4

    .line 154
    const-string v18, "u"

    .line 156
    aput-object v18, v5, v10

    .line 158
    const-string v18, "oo"

    .line 160
    aput-object v18, v5, v11

    .line 162
    const-string v18, "r"

    .line 164
    aput-object v18, v5, v12

    .line 166
    const-string v19, "e"

    .line 168
    aput-object v19, v5, v13

    .line 170
    const-string v20, "ai"

    .line 172
    aput-object v20, v5, v3

    .line 174
    const-string v20, "o"

    .line 176
    aput-object v20, v5, v14

    .line 178
    aput-object v20, v5, v15

    .line 180
    const-string v21, "au"

    .line 182
    aput-object v21, v5, v16

    .line 184
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    .line 186
    const-string v21, "ा"

    .line 188
    aput-object v21, v5, v7

    .line 190
    const-string v21, "ि"

    .line 192
    aput-object v21, v5, v8

    .line 194
    const-string v21, "ी"

    .line 196
    aput-object v21, v5, v9

    .line 198
    const-string v21, "ु"

    .line 200
    aput-object v21, v5, v4

    .line 202
    const-string v21, "ू"

    .line 204
    aput-object v21, v5, v10

    .line 206
    const-string v21, "ृ"

    .line 208
    aput-object v21, v5, v11

    .line 210
    const-string v21, "ॄ"

    .line 212
    aput-object v21, v5, v12

    .line 214
    const-string v21, "ॅ"

    .line 216
    aput-object v21, v5, v13

    .line 218
    const-string v21, "े"

    .line 220
    aput-object v21, v5, v3

    .line 222
    const-string v21, "ै"

    .line 224
    aput-object v21, v5, v14

    .line 226
    const-string v21, "ॉ"

    .line 228
    aput-object v21, v5, v15

    .line 230
    const-string v21, "ो"

    .line 232
    aput-object v21, v5, v16

    .line 234
    const-string v21, "ौ"

    .line 236
    aput-object v21, v5, v1

    .line 238
    const-string v21, "ॎ"

    .line 240
    const/16 v22, 0xd

    .line 242
    aput-object v21, v5, v22

    .line 244
    const-string v21, "ॏ"

    .line 246
    const/16 v23, 0xe

    .line 248
    aput-object v21, v5, v23

    .line 250
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    .line 252
    aput-object v6, v5, v7

    .line 254
    aput-object v17, v5, v8

    .line 256
    const-string v6, "ee"

    .line 258
    aput-object v6, v5, v9

    .line 260
    const-string v6, "u"

    .line 262
    aput-object v6, v5, v4

    .line 264
    const-string v6, "oo"

    .line 266
    aput-object v6, v5, v10

    .line 268
    aput-object v18, v5, v11

    .line 270
    const-string v6, "R"

    .line 272
    aput-object v6, v5, v12

    .line 274
    aput-object v19, v5, v13

    .line 276
    aput-object v19, v5, v3

    .line 278
    const-string v6, "ai"

    .line 280
    aput-object v6, v5, v14

    .line 282
    aput-object v20, v5, v15

    .line 284
    aput-object v20, v5, v16

    .line 286
    const-string v6, "au"

    .line 288
    aput-object v6, v5, v1

    .line 290
    aput-object v19, v5, v22

    .line 292
    const-string v6, "aw"

    .line 294
    aput-object v6, v5, v23

    .line 296
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    .line 298
    const-string v6, "क"

    .line 300
    aput-object v6, v5, v7

    .line 302
    const-string v6, "ख"

    .line 304
    aput-object v6, v5, v8

    .line 306
    const-string v6, "ग"

    .line 308
    aput-object v6, v5, v9

    .line 310
    const-string v6, "घ"

    .line 312
    aput-object v6, v5, v4

    .line 314
    const-string v6, "ङ"

    .line 316
    aput-object v6, v5, v10

    .line 318
    const-string v6, "च"

    .line 320
    aput-object v6, v5, v11

    .line 322
    const-string v6, "छ"

    .line 324
    aput-object v6, v5, v12

    .line 326
    const-string v6, "ज"

    .line 328
    aput-object v6, v5, v13

    .line 330
    const-string v6, "झ"

    .line 332
    aput-object v6, v5, v3

    .line 334
    const-string v6, "ञ"

    .line 336
    aput-object v6, v5, v14

    .line 338
    const-string v6, "ट"

    .line 340
    aput-object v6, v5, v15

    .line 342
    const-string v6, "ठ"

    .line 344
    aput-object v6, v5, v16

    .line 346
    const-string v6, "ड"

    .line 348
    aput-object v6, v5, v1

    .line 350
    const-string v6, "ढ"

    .line 352
    aput-object v6, v5, v22

    .line 354
    const-string v6, "ण"

    .line 356
    aput-object v6, v5, v23

    .line 358
    const-string v6, "त"

    .line 360
    aput-object v6, v5, v2

    .line 362
    const/16 v6, 0x10

    .line 364
    const-string v17, "थ"

    .line 366
    aput-object v17, v5, v6

    .line 368
    const/16 v6, 0x11

    .line 370
    const-string v17, "द"

    .line 372
    aput-object v17, v5, v6

    .line 374
    const/16 v6, 0x12

    .line 376
    const-string v17, "ध"

    .line 378
    aput-object v17, v5, v6

    .line 380
    const/16 v6, 0x13

    .line 382
    const-string v17, "न"

    .line 384
    aput-object v17, v5, v6

    .line 386
    const/16 v6, 0x14

    .line 388
    const-string v17, "ऩ"

    .line 390
    aput-object v17, v5, v6

    .line 392
    const/16 v6, 0x15

    .line 394
    const-string v17, "प"

    .line 396
    aput-object v17, v5, v6

    .line 398
    const/16 v6, 0x16

    .line 400
    const-string v17, "फ"

    .line 402
    aput-object v17, v5, v6

    .line 404
    const/16 v6, 0x17

    .line 406
    const-string v17, "ब"

    .line 408
    aput-object v17, v5, v6

    .line 410
    const/16 v6, 0x18

    .line 412
    const-string v17, "भ"

    .line 414
    aput-object v17, v5, v6

    .line 416
    const/16 v6, 0x19

    .line 418
    const-string v17, "म"

    .line 420
    aput-object v17, v5, v6

    .line 422
    const/16 v6, 0x1a

    .line 424
    const-string v17, "य"

    .line 426
    aput-object v17, v5, v6

    .line 428
    const/16 v6, 0x1b

    .line 430
    const-string v17, "र"

    .line 432
    aput-object v17, v5, v6

    .line 434
    const/16 v6, 0x1c

    .line 436
    const-string v17, "ऱ"

    .line 438
    aput-object v17, v5, v6

    .line 440
    const/16 v6, 0x1d

    .line 442
    const-string v17, "ल"

    .line 444
    aput-object v17, v5, v6

    .line 446
    const/16 v6, 0x1e

    .line 448
    const-string v17, "व"

    .line 450
    aput-object v17, v5, v6

    .line 452
    const/16 v6, 0x1f

    .line 454
    const-string v17, "श"

    .line 456
    aput-object v17, v5, v6

    .line 458
    const/16 v6, 0x20

    .line 460
    const-string v17, "ष"

    .line 462
    aput-object v17, v5, v6

    .line 464
    const/16 v6, 0x21

    .line 466
    const-string v17, "स"

    .line 468
    aput-object v17, v5, v6

    .line 470
    const/16 v6, 0x22

    .line 472
    const-string v17, "ह"

    .line 474
    aput-object v17, v5, v6

    .line 476
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    .line 478
    const-string v6, "k"

    .line 480
    aput-object v6, v5, v7

    .line 482
    const-string v6, "kh"

    .line 484
    aput-object v6, v5, v8

    .line 486
    const-string v6, "g"

    .line 488
    aput-object v6, v5, v9

    .line 490
    const-string v6, "gh"

    .line 492
    aput-object v6, v5, v4

    .line 494
    const-string v6, "ng"

    .line 496
    aput-object v6, v5, v10

    .line 498
    const-string v6, "c"

    .line 500
    aput-object v6, v5, v11

    .line 502
    const-string v6, "ch"

    .line 504
    aput-object v6, v5, v12

    .line 506
    const-string v6, "j"

    .line 508
    aput-object v6, v5, v13

    .line 510
    const-string v6, "jh"

    .line 512
    aput-object v6, v5, v3

    .line 514
    const-string v3, "ny"

    .line 516
    aput-object v3, v5, v14

    .line 518
    const-string v3, "T"

    .line 520
    aput-object v3, v5, v15

    .line 522
    const-string v3, "Th"

    .line 524
    aput-object v3, v5, v16

    .line 526
    const-string v3, "D"

    .line 528
    aput-object v3, v5, v1

    .line 530
    const-string v1, "Dh"

    .line 532
    aput-object v1, v5, v22

    .line 534
    const-string v1, "N"

    .line 536
    aput-object v1, v5, v23

    .line 538
    const-string v1, "t"

    .line 540
    aput-object v1, v5, v2

    .line 542
    const/16 v1, 0x10

    .line 544
    const-string v2, "th"

    .line 546
    aput-object v2, v5, v1

    .line 548
    const/16 v1, 0x11

    .line 550
    const-string v2, "d"

    .line 552
    aput-object v2, v5, v1

    .line 554
    const/16 v1, 0x12

    .line 556
    const-string v2, "dh"

    .line 558
    aput-object v2, v5, v1

    .line 560
    const/16 v1, 0x13

    .line 562
    const-string v2, "n"

    .line 564
    aput-object v2, v5, v1

    .line 566
    const/16 v1, 0x14

    .line 568
    const-string v2, "Nn"

    .line 570
    aput-object v2, v5, v1

    .line 572
    const/16 v1, 0x15

    .line 574
    const-string v2, "p"

    .line 576
    aput-object v2, v5, v1

    .line 578
    const/16 v1, 0x16

    .line 580
    const-string v2, "ph"

    .line 582
    aput-object v2, v5, v1

    .line 584
    const/16 v1, 0x17

    .line 586
    const-string v2, "b"

    .line 588
    aput-object v2, v5, v1

    .line 590
    const/16 v1, 0x18

    .line 592
    const-string v2, "bh"

    .line 594
    aput-object v2, v5, v1

    .line 596
    const/16 v1, 0x19

    .line 598
    const-string v2, "m"

    .line 600
    aput-object v2, v5, v1

    .line 602
    const/16 v1, 0x1a

    .line 604
    const-string v2, "y"

    .line 606
    aput-object v2, v5, v1

    .line 608
    const/16 v1, 0x1b

    .line 610
    aput-object v18, v5, v1

    .line 612
    const/16 v1, 0x1c

    .line 614
    const-string v2, "R"

    .line 616
    aput-object v2, v5, v1

    .line 618
    const/16 v1, 0x1d

    .line 620
    const-string v2, "l"

    .line 622
    aput-object v2, v5, v1

    .line 624
    const/16 v1, 0x1e

    .line 626
    const-string v2, "v"

    .line 628
    aput-object v2, v5, v1

    .line 630
    const/16 v1, 0x1f

    .line 632
    const-string v2, "sh"

    .line 634
    aput-object v2, v5, v1

    .line 636
    const/16 v1, 0x20

    .line 638
    const-string v2, "S"

    .line 640
    aput-object v2, v5, v1

    .line 642
    const/16 v1, 0x21

    .line 644
    const-string v2, "s"

    .line 646
    aput-object v2, v5, v1

    .line 648
    const/16 v1, 0x22

    .line 650
    const-string v2, "h"

    .line 652
    aput-object v2, v5, v1

    .line 654
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    .line 656
    const-string v2, "क़"

    .line 658
    aput-object v2, v1, v7

    .line 660
    const-string v2, "ख़"

    .line 662
    aput-object v2, v1, v8

    .line 664
    const-string v2, "ग़"

    .line 666
    aput-object v2, v1, v9

    .line 668
    const-string v2, "ज़"

    .line 670
    aput-object v2, v1, v4

    .line 672
    const-string v2, "ड़"

    .line 674
    aput-object v2, v1, v10

    .line 676
    const-string v2, "ढ़"

    .line 678
    aput-object v2, v1, v11

    .line 680
    const-string v2, "फ़"

    .line 682
    aput-object v2, v1, v12

    .line 684
    const-string v2, "य़"

    .line 686
    aput-object v2, v1, v13

    .line 688
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    .line 690
    const-string v2, "q"

    .line 692
    aput-object v2, v1, v7

    .line 694
    const-string v2, "khh"

    .line 696
    aput-object v2, v1, v8

    .line 698
    const-string v2, "ghh"

    .line 700
    aput-object v2, v1, v9

    .line 702
    const-string v2, "z"

    .line 704
    aput-object v2, v1, v4

    .line 706
    const-string v2, "Ddh"

    .line 708
    aput-object v2, v1, v10

    .line 710
    const-string v2, "rh"

    .line 712
    aput-object v2, v1, v11

    .line 714
    const-string v2, "f"

    .line 716
    aput-object v2, v1, v12

    .line 718
    const-string v2, "Y"

    .line 720
    aput-object v2, v1, v13

    .line 722
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    .line 724
    const-string v2, "ँ"

    .line 726
    aput-object v2, v1, v7

    .line 728
    const-string v2, "ं"

    .line 730
    aput-object v2, v1, v8

    .line 732
    const-string v2, "ः"

    .line 734
    aput-object v2, v1, v9

    .line 736
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    .line 738
    const-string v2, "an"

    .line 740
    aput-object v2, v1, v7

    .line 742
    const-string v2, "an"

    .line 744
    aput-object v2, v1, v8

    .line 746
    const-string v2, "ah"

    .line 748
    aput-object v2, v1, v9

    .line 750
    return-void
.end method

.method private mapUnicodeToPinyin()V
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    const/16 v2, 0x23

    .line 5
    if-ge v1, v2, :cond_21

    .line 7
    iget-object v2, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    .line 9
    aget-object v2, v2, v1

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    .line 18
    aget-object v4, v4, v1

    .line 20
    const-string v5, "a"

    .line 22
    invoke-static {v3, v4, v5}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    .line 28
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_2

    .line 34
    :cond_21
    move v1, v0

    .line 35
    :goto_22
    const/16 v3, 0xc

    .line 37
    if-ge v1, v3, :cond_36

    .line 39
    iget-object v3, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    .line 41
    aget-object v3, v3, v1

    .line 43
    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    .line 45
    aget-object v4, v4, v1

    .line 47
    iget-object v5, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    .line 49
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 54
    goto :goto_22

    .line 55
    :cond_36
    move v1, v0

    .line 56
    :goto_37
    const/16 v4, 0x8

    .line 58
    if-ge v1, v4, :cond_4b

    .line 60
    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    .line 62
    aget-object v4, v4, v1

    .line 64
    iget-object v5, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    .line 66
    aget-object v5, v5, v1

    .line 68
    iget-object v6, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    .line 70
    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 75
    goto :goto_37

    .line 76
    :cond_4b
    move v1, v0

    .line 77
    :goto_4c
    const/4 v5, 0x3

    .line 78
    const/16 v6, 0xf

    .line 80
    if-ge v1, v2, :cond_c6

    .line 82
    move v7, v0

    .line 83
    :goto_52
    if-ge v7, v6, :cond_8a

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    .line 92
    aget-object v9, v9, v1

    .line 94
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    .line 99
    aget-object v9, v9, v7

    .line 101
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v8

    .line 108
    new-instance v9, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    .line 115
    aget-object v10, v10, v1

    .line 117
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    .line 122
    aget-object v10, v10, v7

    .line 124
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v9

    .line 131
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    .line 133
    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    add-int/lit8 v7, v7, 0x1

    .line 138
    goto :goto_52

    .line 139
    :cond_8a
    move v6, v0

    .line 140
    :goto_8b
    if-ge v6, v5, :cond_c3

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    .line 144
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    .line 149
    aget-object v8, v8, v1

    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    .line 156
    aget-object v8, v8, v6

    .line 158
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v7

    .line 165
    new-instance v8, Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    .line 172
    aget-object v9, v9, v1

    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    .line 179
    aget-object v9, v9, v6

    .line 181
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v8

    .line 188
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    .line 190
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    add-int/lit8 v6, v6, 0x1

    .line 195
    goto :goto_8b

    .line 196
    :cond_c3
    add-int/lit8 v1, v1, 0x1

    .line 198
    goto :goto_4c

    .line 199
    :cond_c6
    move v1, v0

    .line 200
    :goto_c7
    if-ge v1, v4, :cond_13e

    .line 202
    move v7, v0

    .line 203
    :goto_ca
    if-ge v7, v6, :cond_102

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    .line 207
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    .line 212
    aget-object v9, v9, v1

    .line 214
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    .line 219
    aget-object v9, v9, v7

    .line 221
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v8

    .line 228
    new-instance v9, Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    .line 235
    aget-object v10, v10, v1

    .line 237
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    .line 242
    aget-object v10, v10, v7

    .line 244
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object v9

    .line 251
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    .line 253
    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    add-int/lit8 v7, v7, 0x1

    .line 258
    goto :goto_ca

    .line 259
    :cond_102
    move v7, v0

    .line 260
    :goto_103
    if-ge v7, v5, :cond_13b

    .line 262
    new-instance v8, Ljava/lang/StringBuilder;

    .line 264
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    .line 269
    aget-object v9, v9, v1

    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    .line 276
    aget-object v9, v9, v7

    .line 278
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object v8

    .line 285
    new-instance v9, Ljava/lang/StringBuilder;

    .line 287
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    .line 292
    aget-object v10, v10, v1

    .line 294
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    .line 299
    aget-object v10, v10, v7

    .line 301
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v9

    .line 308
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    .line 310
    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    add-int/lit8 v7, v7, 0x1

    .line 315
    goto :goto_103

    .line 316
    :cond_13b
    add-int/lit8 v1, v1, 0x1

    .line 318
    goto :goto_c7

    .line 319
    :cond_13e
    move v1, v0

    .line 320
    :goto_13f
    if-ge v1, v2, :cond_15c

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    .line 324
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    iget-object v7, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    .line 329
    aget-object v7, v7, v1

    .line 331
    const-string v8, "्"

    .line 333
    invoke-static {v4, v7, v8}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    move-result-object v4

    .line 337
    iget-object v7, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    .line 339
    aget-object v7, v7, v1

    .line 341
    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    .line 343
    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    add-int/lit8 v1, v1, 0x1

    .line 348
    goto :goto_13f

    .line 349
    :cond_15c
    move v1, v0

    .line 350
    :goto_15d
    if-ge v1, v3, :cond_162

    .line 352
    add-int/lit8 v1, v1, 0x1

    .line 354
    goto :goto_15d

    .line 355
    :cond_162
    move v1, v0

    .line 356
    :goto_163
    if-ge v1, v2, :cond_1ba

    .line 358
    move v3, v0

    .line 359
    :goto_166
    if-ge v3, v6, :cond_1b7

    .line 361
    move v4, v0

    .line 362
    :goto_169
    if-ge v4, v5, :cond_1b4

    .line 364
    new-instance v7, Ljava/lang/StringBuilder;

    .line 366
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    .line 371
    aget-object v8, v8, v1

    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    .line 378
    aget-object v8, v8, v3

    .line 380
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    .line 385
    aget-object v8, v8, v4

    .line 387
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    move-result-object v7

    .line 394
    new-instance v8, Ljava/lang/StringBuilder;

    .line 396
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    .line 401
    aget-object v9, v9, v1

    .line 403
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    .line 408
    aget-object v9, v9, v3

    .line 410
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    .line 415
    aget-object v9, v9, v4

    .line 417
    const/4 v10, 0x1

    .line 418
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 421
    move-result-object v9

    .line 422
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    move-result-object v8

    .line 429
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    .line 431
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    add-int/lit8 v4, v4, 0x1

    .line 436
    goto :goto_169

    .line 437
    :cond_1b4
    add-int/lit8 v3, v3, 0x1

    .line 439
    goto :goto_166

    .line 440
    :cond_1b7
    add-int/lit8 v1, v1, 0x1

    .line 442
    goto :goto_163

    .line 443
    :cond_1ba
    iget-object v0, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    .line 445
    const-string v1, "अं"

    .line 447
    const-string v2, "am"

    .line 449
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    return-void
.end method

.method private static stringToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    .line 3
    invoke-virtual {v0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_e
    if-ge v3, v1, :cond_39

    .line 17
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 20
    move-result v4

    .line 21
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    .line 24
    move-result v5

    .line 25
    const/4 v6, 0x1

    .line 26
    if-le v5, v6, :cond_1e

    .line 28
    add-int/lit8 v5, v5, -0x1

    .line 30
    add-int/2addr v3, v5

    .line 31
    :cond_1e
    const/16 v5, 0x80

    .line 33
    if-ge v4, v5, :cond_26

    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 38
    goto :goto_37

    .line 39
    :cond_26
    new-array v5, v6, [Ljava/lang/Object;

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v4

    .line 45
    aput-object v4, v5, v2

    .line 47
    const-string v4, "\\u%04x"

    .line 49
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :goto_37
    add-int/2addr v3, v6

    .line 57
    goto :goto_e

    .line 58
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    sget-object v1, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    .line 64
    invoke-virtual {v1, v0}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 67
    return-object p0
.end method


# virtual methods
.method public hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    move-result-wide v2

    .line 9
    sget-object v4, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    .line 11
    invoke-virtual {v4}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 20
    move-result v5

    .line 21
    const/4 v6, 0x0

    .line 22
    move v7, v6

    .line 23
    :goto_16
    const-string v8, "HindiPinyinConverter"

    .line 25
    if-ge v7, v5, :cond_153

    .line 27
    invoke-static {v1, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 30
    move-result v10

    .line 31
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    .line 34
    move-result v10

    .line 35
    add-int v11, v7, v10

    .line 37
    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    move-result-object v7

    .line 41
    const-string v12, ""

    .line 43
    if-ge v11, v5, :cond_3b

    .line 45
    invoke-static {v1, v11}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 48
    move-result v10

    .line 49
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    .line 52
    move-result v10

    .line 53
    add-int v13, v11, v10

    .line 55
    invoke-virtual {v1, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    move-result-object v13

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move-object v13, v12

    .line 61
    :goto_3c
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 64
    move-result v14

    .line 65
    if-eqz v14, :cond_58

    .line 67
    iget-object v8, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    .line 69
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_53

    .line 75
    iget-object v8, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    .line 77
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object v7

    .line 81
    move-object v12, v7

    .line 82
    check-cast v12, Ljava/lang/String;

    .line 84
    :cond_53
    :goto_53
    move/from16 v18, v5

    .line 86
    :goto_55
    move v7, v11

    .line 87
    goto/16 :goto_14a

    .line 89
    :cond_58
    add-int v14, v11, v10

    .line 91
    if-ge v14, v5, :cond_6b

    .line 93
    invoke-static {v1, v14}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 96
    move-result v10

    .line 97
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    .line 100
    move-result v10

    .line 101
    add-int v15, v14, v10

    .line 103
    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 106
    move-result-object v15

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    move-object v15, v12

    .line 109
    :goto_6c
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 112
    move-result v16

    .line 113
    const/4 v9, 0x2

    .line 114
    if-eqz v16, :cond_cd

    .line 116
    new-array v14, v9, [Ljava/lang/String;

    .line 118
    aput-object v7, v14, v6

    .line 120
    const/16 v16, 0x1

    .line 122
    aput-object v13, v14, v16

    .line 124
    invoke-static {v14}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    .line 127
    move-result-object v14

    .line 128
    iget-object v9, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    .line 130
    invoke-virtual {v9, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_92

    .line 136
    iget-object v7, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    .line 138
    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-result-object v7

    .line 142
    move-object v12, v7

    .line 143
    check-cast v12, Ljava/lang/String;

    .line 145
    add-int/2addr v11, v10

    .line 146
    goto :goto_53

    .line 147
    :cond_92
    iget-object v9, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    .line 149
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 152
    move-result v9

    .line 153
    if-eqz v9, :cond_a4

    .line 155
    iget-object v8, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    .line 157
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-result-object v7

    .line 161
    move-object v12, v7

    .line 162
    check-cast v12, Ljava/lang/String;

    .line 164
    goto :goto_53

    .line 165
    :cond_a4
    const/4 v9, 0x4

    .line 166
    new-array v9, v9, [Ljava/lang/Object;

    .line 168
    aput-object v7, v9, v6

    .line 170
    const/4 v10, 0x1

    .line 171
    aput-object v13, v9, v10

    .line 173
    const/4 v14, 0x2

    .line 174
    aput-object v15, v9, v14

    .line 176
    const/4 v14, 0x3

    .line 177
    new-array v1, v14, [Ljava/lang/String;

    .line 179
    aput-object v7, v1, v6

    .line 181
    aput-object v13, v1, v10

    .line 183
    const/4 v7, 0x2

    .line 184
    aput-object v15, v1, v7

    .line 186
    invoke-static {v1}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    invoke-static {v1}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->stringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    aput-object v1, v9, v14

    .line 196
    const-string v1, "Ignore unknown hindi: %s%s%s %s"

    .line 198
    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 202
    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    goto :goto_53

    .line 206
    :cond_cd
    move v1, v9

    .line 207
    new-array v9, v1, [Ljava/lang/String;

    .line 209
    aput-object v7, v9, v6

    .line 211
    const/16 v17, 0x1

    .line 213
    aput-object v13, v9, v17

    .line 215
    invoke-static {v9}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object v9

    .line 219
    move/from16 v18, v5

    .line 221
    new-array v5, v1, [Ljava/lang/String;

    .line 223
    aput-object v9, v5, v6

    .line 225
    aput-object v15, v5, v17

    .line 227
    invoke-static {v5}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    .line 230
    move-result-object v1

    .line 231
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    .line 233
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_fa

    .line 239
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    .line 241
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    move-result-object v1

    .line 245
    move-object v12, v1

    .line 246
    check-cast v12, Ljava/lang/String;

    .line 248
    add-int/2addr v14, v10

    .line 249
    move v7, v14

    .line 250
    goto :goto_14a

    .line 251
    :cond_fa
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    .line 253
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_10e

    .line 259
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    .line 261
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    move-result-object v1

    .line 265
    move-object v12, v1

    .line 266
    check-cast v12, Ljava/lang/String;

    .line 268
    add-int/2addr v11, v10

    .line 269
    goto/16 :goto_55

    .line 271
    :cond_10e
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    .line 273
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 276
    move-result v1

    .line 277
    if-eqz v1, :cond_121

    .line 279
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    .line 281
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    move-result-object v1

    .line 285
    move-object v12, v1

    .line 286
    check-cast v12, Ljava/lang/String;

    .line 288
    goto/16 :goto_55

    .line 290
    :cond_121
    const/4 v1, 0x4

    .line 291
    new-array v1, v1, [Ljava/lang/Object;

    .line 293
    aput-object v7, v1, v6

    .line 295
    const/4 v5, 0x1

    .line 296
    aput-object v13, v1, v5

    .line 298
    const/4 v9, 0x2

    .line 299
    aput-object v15, v1, v9

    .line 301
    const/4 v10, 0x3

    .line 302
    new-array v14, v10, [Ljava/lang/String;

    .line 304
    aput-object v7, v14, v6

    .line 306
    aput-object v13, v14, v5

    .line 308
    aput-object v15, v14, v9

    .line 310
    invoke-static {v14}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    .line 313
    move-result-object v5

    .line 314
    invoke-static {v5}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->stringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    move-result-object v5

    .line 318
    aput-object v5, v1, v10

    .line 320
    const-string v5, "Ignore unknown hindi: \'%s%s%s\' \'%s\'"

    .line 322
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 325
    move-result-object v1

    .line 326
    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    goto/16 :goto_55

    .line 331
    :goto_14a
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    move-object/from16 v1, p1

    .line 336
    move/from16 v5, v18

    .line 338
    goto/16 :goto_16

    .line 340
    :cond_153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object v1

    .line 344
    sget-object v5, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    .line 346
    invoke-virtual {v5, v4}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 352
    move-result-wide v4

    .line 353
    const/4 v7, 0x1

    .line 354
    new-array v7, v7, [Ljava/lang/Object;

    .line 356
    sub-long/2addr v4, v2

    .line 357
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 360
    move-result-object v2

    .line 361
    aput-object v2, v7, v6

    .line 363
    const-string v2, "hindiToPinyin(): using time %d ms"

    .line 365
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 368
    move-result-object v2

    .line 369
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-object v1
.end method

.method public hindiToPinyins(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 1
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    .line 3
    invoke-virtual {v0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v1, "ee"

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_20

    .line 24
    const-string v2, "ii"

    .line 26
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_20
    const-string v1, "oo"

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_31

    .line 41
    const-string v2, "uu"

    .line 43
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_31
    const-string v1, "v"

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_42

    .line 58
    const-string v2, "w"

    .line 60
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_42
    sget-object p1, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    .line 69
    invoke-virtual {p1}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v1

    .line 79
    :cond_4e
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v2

    .line 83
    const/4 v3, 0x0

    .line 84
    if-eqz v2, :cond_79

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Ljava/lang/String;

    .line 92
    const-string v4, "aa"

    .line 94
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 97
    move-result v4

    .line 98
    if-nez v4, :cond_4e

    .line 100
    const-string v4, "a"

    .line 102
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_4e

    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 111
    move-result v4

    .line 112
    add-int/lit8 v4, v4, -0x1

    .line 114
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    goto :goto_4e

    .line 122
    :cond_79
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 125
    new-array v1, v3, [Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 130
    move-result-object v1

    .line 131
    check-cast v1, [Ljava/lang/String;

    .line 133
    sget-object v2, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    .line 135
    invoke-virtual {v2, v0}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 138
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    .line 140
    invoke-virtual {v0, p1}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 143
    return-object v1
.end method
