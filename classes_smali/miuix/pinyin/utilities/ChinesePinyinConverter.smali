.class public Lmiuix/pinyin/utilities/ChinesePinyinConverter;
.super Ljava/lang/Object;
.source "ChinesePinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;,
        Lmiuix/pinyin/utilities/ChinesePinyinConverter$ChinesePinyinDictionary;,
        Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;
    }
.end annotation


# static fields
.field private static final FIRST_BASIC_UNIHAN:C = '一'

.field private static final FIRST_HINDI_UNICODE:C = 'ऀ'

.field private static final INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/SoftReferenceSingleton<",
            "Lmiuix/pinyin/utilities/ChinesePinyinConverter;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST_BASIC_UNIHAN:C = '龥'

.field private static final LAST_HINDI_UNICODE:C = 'ॿ'

.field private static final SPECIAL_LING:C = '〇'

.field private static final TAG:Ljava/lang/String; = "ChinesePinyinConverter"

.field private static sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastNamePolyPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDictionary:Lmiuix/pinyin/utilities/ChinesePinyinConverter$ChinesePinyinDictionary;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 15
    new-instance v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;

    .line 17
    invoke-direct {v0}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;-><init>()V

    .line 20
    sput-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    .line 22
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    .line 24
    const-string v1, "CHAN"

    .line 26
    const-string v2, "YU"

    .line 28
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    const-string v4, "单于"

    .line 34
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    .line 39
    const-string v3, "ZHANG"

    .line 41
    const-string v4, "SUN"

    .line 43
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    const-string v4, "长孙"

    .line 49
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    .line 54
    const-string v3, "ZI"

    .line 56
    const-string v4, "JU"

    .line 58
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    const-string v5, "子车"

    .line 64
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    .line 69
    const-string v3, "MO"

    .line 71
    const-string v5, "QI"

    .line 73
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    const-string v5, "万俟"

    .line 79
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    .line 84
    const-string v3, "TAN"

    .line 86
    const-string v5, "TAI"

    .line 88
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 92
    const-string v5, "澹台"

    .line 94
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    .line 99
    const-string v3, "CHI"

    .line 101
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 104
    move-result-object v5

    .line 105
    const-string v6, "尉迟"

    .line 107
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 112
    const/16 v5, 0x4e48

    .line 114
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 117
    move-result-object v5

    .line 118
    const-string v6, "YAO"

    .line 120
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 125
    const/16 v5, 0x4e01

    .line 127
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 130
    move-result-object v5

    .line 131
    const-string v6, "DING"

    .line 133
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 138
    const/16 v5, 0x4fde

    .line 140
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 149
    const v5, 0x8d3e

    .line 152
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 155
    move-result-object v5

    .line 156
    const-string v6, "JIA"

    .line 158
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 163
    const/16 v5, 0x6c88

    .line 165
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 168
    move-result-object v5

    .line 169
    const-string v6, "SHEN"

    .line 171
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 176
    const/16 v5, 0x535c

    .line 178
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 181
    move-result-object v5

    .line 182
    const-string v6, "BU"

    .line 184
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 189
    const v5, 0x8584

    .line 192
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 195
    move-result-object v5

    .line 196
    const-string v6, "BO"

    .line 198
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 203
    const/16 v5, 0x5b5b

    .line 205
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 208
    move-result-object v5

    .line 209
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 214
    const v5, 0x8d32

    .line 217
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 220
    move-result-object v5

    .line 221
    const-string v6, "BEN"

    .line 223
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 228
    const v5, 0x8d39

    .line 231
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 234
    move-result-object v5

    .line 235
    const-string v6, "FEI"

    .line 237
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 242
    const/16 v5, 0x6cca

    .line 244
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 247
    move-result-object v5

    .line 248
    const-string v6, "BAN"

    .line 250
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 255
    const v5, 0x8300

    .line 258
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 261
    move-result-object v5

    .line 262
    const-string v6, "BI"

    .line 264
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 269
    const v5, 0x891a

    .line 272
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 275
    move-result-object v5

    .line 276
    const-string v6, "CHU"

    .line 278
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 283
    const/16 v5, 0x4f20

    .line 285
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 288
    move-result-object v5

    .line 289
    const-string v6, "CHUAN"

    .line 291
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 296
    const/16 v7, 0x53c2

    .line 298
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 301
    move-result-object v7

    .line 302
    const-string v8, "CAN"

    .line 304
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 309
    const/16 v7, 0x5355

    .line 311
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 314
    move-result-object v7

    .line 315
    const-string v8, "SHAN"

    .line 317
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 322
    const v7, 0x90d7

    .line 325
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 328
    move-result-object v7

    .line 329
    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 334
    const v3, 0x9561

    .line 337
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 340
    move-result-object v3

    .line 341
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 346
    const/16 v1, 0x671d

    .line 348
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 351
    move-result-object v1

    .line 352
    const-string v3, "CHAO"

    .line 354
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 359
    const/16 v1, 0x555c

    .line 361
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 364
    move-result-object v1

    .line 365
    const-string v3, "CHUAI"

    .line 367
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 372
    const v1, 0x8870

    .line 375
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 378
    move-result-object v1

    .line 379
    const-string v3, "CUI"

    .line 381
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 386
    const/16 v1, 0x6668

    .line 388
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 391
    move-result-object v1

    .line 392
    const-string v3, "CHANG"

    .line 394
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 399
    const/16 v1, 0x4e11

    .line 401
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 404
    move-result-object v1

    .line 405
    const-string v7, "CHOU"

    .line 407
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 412
    const/16 v1, 0x7633

    .line 414
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 417
    move-result-object v1

    .line 418
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 423
    const v1, 0x957f

    .line 426
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 435
    const v1, 0x8f66

    .line 438
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 441
    move-result-object v1

    .line 442
    const-string v3, "CHE"

    .line 444
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 449
    const/16 v1, 0x7fdf

    .line 451
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 454
    move-result-object v1

    .line 455
    const-string v3, "ZHAI"

    .line 457
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 462
    const/16 v1, 0x4f43

    .line 464
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 467
    move-result-object v1

    .line 468
    const-string v3, "DIAN"

    .line 470
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 475
    const/16 v1, 0x5200

    .line 477
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 480
    move-result-object v1

    .line 481
    const-string v3, "DIAO"

    .line 483
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 488
    const v1, 0x8c03

    .line 491
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 494
    move-result-object v1

    .line 495
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 500
    const v1, 0x9046

    .line 503
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 506
    move-result-object v1

    .line 507
    const-string v3, "DI"

    .line 509
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 514
    const/16 v1, 0x660b

    .line 516
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 519
    move-result-object v1

    .line 520
    const-string v3, "GUI"

    .line 522
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 527
    const v1, 0x82a5

    .line 530
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 533
    move-result-object v1

    .line 534
    const-string v3, "GAI"

    .line 536
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 541
    const v1, 0x8312

    .line 544
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 547
    move-result-object v1

    .line 548
    const-string v3, "KUANG"

    .line 550
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 555
    const v1, 0x90c7

    .line 558
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 561
    move-result-object v1

    .line 562
    const-string v3, "HUAN"

    .line 564
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 569
    const/16 v1, 0x5df7

    .line 571
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 574
    move-result-object v1

    .line 575
    const-string v3, "XIANG"

    .line 577
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 582
    const/16 v1, 0x6496

    .line 584
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 587
    move-result-object v1

    .line 588
    const-string v3, "HAN"

    .line 590
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 595
    const v1, 0x89c1

    .line 598
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 601
    move-result-object v1

    .line 602
    const-string v3, "JIAN"

    .line 604
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 609
    const v1, 0x964d

    .line 612
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 615
    move-result-object v1

    .line 616
    const-string v3, "JIANG"

    .line 618
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 623
    const v1, 0x89d2

    .line 626
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 629
    move-result-object v1

    .line 630
    const-string v3, "JIAO"

    .line 632
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 637
    const/16 v1, 0x7f34

    .line 639
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 642
    move-result-object v1

    .line 643
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 648
    const v1, 0x8bb0

    .line 651
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 654
    move-result-object v1

    .line 655
    const-string v3, "JI"

    .line 657
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 662
    const/16 v1, 0x741a

    .line 664
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 667
    move-result-object v1

    .line 668
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 673
    const/16 v1, 0x5267

    .line 675
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 678
    move-result-object v1

    .line 679
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 684
    const v1, 0x96bd

    .line 687
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 690
    move-result-object v1

    .line 691
    const-string v3, "JUAN"

    .line 693
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 698
    const v1, 0x9697

    .line 701
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 704
    move-result-object v1

    .line 705
    const-string v3, "KUI"

    .line 707
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 712
    const v1, 0x9760

    .line 715
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 718
    move-result-object v1

    .line 719
    const-string v3, "KU"

    .line 721
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 726
    const/16 v1, 0x4e50

    .line 728
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 731
    move-result-object v1

    .line 732
    const-string v3, "YUE"

    .line 734
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 739
    const/16 v1, 0x5587

    .line 741
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 744
    move-result-object v1

    .line 745
    const-string v3, "LA"

    .line 747
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 752
    const v1, 0x96d2

    .line 755
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 758
    move-result-object v1

    .line 759
    const-string v3, "LUO"

    .line 761
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 766
    const/16 v1, 0x4e86

    .line 768
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 771
    move-result-object v1

    .line 772
    const-string v3, "LIAO"

    .line 774
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 779
    const/16 v1, 0x7f2a

    .line 781
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 784
    move-result-object v1

    .line 785
    const-string v3, "MIAO"

    .line 787
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 792
    const/16 v1, 0x4f74

    .line 794
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 797
    move-result-object v1

    .line 798
    const-string v4, "MI"

    .line 800
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 805
    const v1, 0x8c2c

    .line 808
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 811
    move-result-object v1

    .line 812
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 817
    const/16 v1, 0x4e5c

    .line 819
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 822
    move-result-object v1

    .line 823
    const-string v3, "NIE"

    .line 825
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 830
    const v1, 0x9022

    .line 833
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 836
    move-result-object v1

    .line 837
    const-string v3, "PANG"

    .line 839
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 844
    const v1, 0x84ec

    .line 847
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 850
    move-result-object v1

    .line 851
    const-string v3, "PENG"

    .line 853
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 858
    const/16 v1, 0x6734

    .line 860
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 863
    move-result-object v1

    .line 864
    const-string v3, "PIAO"

    .line 866
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 871
    const/16 v1, 0x4ec7

    .line 873
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 876
    move-result-object v1

    .line 877
    const-string v3, "QIU"

    .line 879
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 884
    const v1, 0x8983

    .line 887
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 890
    move-result-object v1

    .line 891
    const-string v3, "QIN"

    .line 893
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 898
    const/16 v1, 0x77bf

    .line 900
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 903
    move-result-object v1

    .line 904
    const-string v3, "QU"

    .line 906
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 911
    const/16 v1, 0x4ec0

    .line 913
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 916
    move-result-object v1

    .line 917
    const-string v3, "SHI"

    .line 919
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 924
    const/16 v1, 0x6298

    .line 926
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 929
    move-result-object v1

    .line 930
    const-string v3, "SHE"

    .line 932
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 937
    const/16 v1, 0x772d

    .line 939
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 942
    move-result-object v1

    .line 943
    const-string v3, "SUI"

    .line 945
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 950
    const v1, 0x89e3

    .line 953
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 956
    move-result-object v1

    .line 957
    const-string v3, "XIE"

    .line 959
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 964
    const/16 v1, 0x7cfb

    .line 966
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 969
    move-result-object v1

    .line 970
    const-string v3, "XI"

    .line 972
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 977
    const v1, 0x9664

    .line 980
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 983
    move-result-object v1

    .line 984
    const-string v3, "XU"

    .line 986
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 991
    const/16 v1, 0x5458

    .line 993
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 996
    move-result-object v1

    .line 997
    const-string v3, "YUAN"

    .line 999
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 1004
    const v1, 0x8d20

    .line 1007
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 1010
    move-result-object v1

    .line 1011
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 1016
    const/16 v1, 0x66fe

    .line 1018
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 1021
    move-result-object v1

    .line 1022
    const-string v3, "ZENG"

    .line 1024
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 1029
    const/16 v1, 0x67e5

    .line 1031
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 1034
    move-result-object v1

    .line 1035
    const-string v3, "ZHA"

    .line 1037
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 1042
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 1047
    const/16 v1, 0x53ec

    .line 1049
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 1052
    move-result-object v1

    .line 1053
    const-string v3, "SHAO"

    .line 1055
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 1060
    const v1, 0x91cd

    .line 1063
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 1066
    move-result-object v1

    .line 1067
    const-string v3, "chong"

    .line 1069
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 1074
    const/16 v1, 0x533a

    .line 1076
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 1079
    move-result-object v1

    .line 1080
    const-string v3, "OU"

    .line 1082
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 1087
    const/16 v1, 0x65bc

    .line 1089
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 1092
    move-result-object v1

    .line 1093
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 1098
    const/16 v1, 0x79cd

    .line 1100
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 1103
    move-result-object v1

    .line 1104
    const-string v2, "CHONG"

    .line 1106
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$ChinesePinyinDictionary;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$ChinesePinyinDictionary;-><init>(Landroid/content/Context;Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;)V

    iput-object v0, p0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->mDictionary:Lmiuix/pinyin/utilities/ChinesePinyinConverter$ChinesePinyinDictionary;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList<",
            "Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    .line 7
    invoke-direct {v1, p3, v0, v0}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v2, 0x4

    .line 12
    if-ne v2, p3, :cond_2f

    .line 14
    invoke-static {}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->getInstance()Lmiuix/pinyin/utilities/HindiPinyinConverter;

    .line 17
    move-result-object p3

    .line 18
    iget-object v2, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    .line 20
    invoke-virtual {p3, v2}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->hindiToPinyins(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    move-result-object p3

    .line 24
    array-length v2, p3

    .line 25
    if-lez v2, :cond_2f

    .line 27
    array-length v2, p3

    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v2, v3, :cond_29

    .line 31
    aget-object p3, p3, v0

    .line 33
    iput-object p3, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 35
    new-array v2, v3, [Ljava/lang/String;

    .line 37
    aput-object p3, v2, v0

    .line 39
    iput-object v2, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->polyPhones:[Ljava/lang/String;

    .line 41
    goto :goto_2f

    .line 42
    :cond_29
    aget-object v2, p3, v0

    .line 44
    iput-object v2, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 46
    iput-object p3, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->polyPhones:[Ljava/lang/String;

    .line 48
    :cond_2f
    :goto_2f
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 54
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lmiuix/pinyin/utilities/ChinesePinyinConverter;
    .registers 2

    .line 1
    sget-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    .line 3
    invoke-virtual {v0, p0}, Lmiuix/core/util/SoftReferenceSingleton;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;

    .line 9
    return-object p0
.end method

.method private getPolyPhoneLastNameTokens(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x2

    .line 20
    if-lt v2, v4, :cond_42

    .line 22
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    sget-object v5, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    .line 28
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v5

    .line 32
    check-cast v5, [Ljava/lang/String;

    .line 34
    if-eqz v5, :cond_42

    .line 36
    :goto_23
    array-length p1, v5

    .line 37
    if-ge v3, p1, :cond_41

    .line 39
    new-instance p1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    .line 41
    invoke-direct {p1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;-><init>()V

    .line 44
    iput v4, p1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->type:I

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    .line 56
    aget-object v1, v5, v3

    .line 58
    iput-object v1, p1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_23

    .line 66
    :cond_41
    return-object v0

    .line 67
    :cond_42
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 70
    move-result p1

    .line 71
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 74
    move-result-object p1

    .line 75
    sget-object v2, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 77
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/String;

    .line 83
    if-eqz v2, :cond_67

    .line 85
    new-instance v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    .line 87
    invoke-direct {v1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;-><init>()V

    .line 90
    iput v4, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->type:I

    .line 92
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    iput-object p1, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    .line 98
    iput-object v2, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-object v0

    .line 104
    :cond_67
    return-object v1
.end method


# virtual methods
.method public convertPinyin2Bopomofo(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/CharSequence;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;->convert(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/CharSequence;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    const/4 v1, 0x0

    if-nez p3, :cond_23

    .line 4
    invoke-direct {p0, p1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->getPolyPhoneLastNameTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_23

    .line 5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_23

    .line 6
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    goto :goto_24

    :cond_23
    move p3, v1

    .line 8
    :goto_24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    move v5, v4

    :goto_2f
    if-ge p3, v2, :cond_12c

    .line 10
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x4

    const/16 v8, 0x20

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-ne v6, v8, :cond_56

    .line 11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_45

    .line 12
    invoke-direct {p0, v3, v0, v5}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_45
    if-nez p2, :cond_53

    .line 13
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 14
    new-instance v6, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    invoke-direct {v6, v9, v5, v5}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    :goto_53
    move v5, v9

    goto/16 :goto_128

    :cond_56
    const/16 v8, 0x100

    if-ge v6, v8, :cond_90

    if-lez p3, :cond_7f

    add-int/lit8 v7, p3, -0x1

    .line 15
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x39

    const/16 v9, 0x30

    if-lt v7, v9, :cond_6c

    if-gt v7, v8, :cond_6c

    move v7, v4

    goto :goto_6d

    :cond_6c
    move v7, v1

    :goto_6d
    if-lt v6, v9, :cond_73

    if-gt v6, v8, :cond_73

    move v8, v4

    goto :goto_74

    :cond_73
    move v8, v1

    :goto_74
    if-eq v7, v8, :cond_7f

    .line 16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_7f

    .line 17
    invoke-direct {p0, v3, v0, v5}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_7f
    if-eq v5, v4, :cond_8a

    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_8a

    .line 19
    invoke-direct {p0, v3, v0, v5}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 20
    :cond_8a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v4

    goto/16 :goto_128

    :cond_90
    const/16 v8, 0x3007

    if-ne v6, v8, :cond_ae

    .line 21
    new-instance v6, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    invoke-direct {v6}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;-><init>()V

    .line 22
    iput v10, v6, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->type:I

    const-string v7, "ling"

    .line 23
    iput-object v7, v6, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_a8

    .line 25
    invoke-direct {p0, v3, v0, v5}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 26
    :cond_a8
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_ab
    move v5, v10

    goto/16 :goto_128

    :cond_ae
    const/16 v8, 0x4e00

    if-lt v6, v8, :cond_100

    const v8, 0x9fa5

    if-gt v6, v8, :cond_100

    .line 27
    iget-object v7, p0, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->mDictionary:Lmiuix/pinyin/utilities/ChinesePinyinConverter$ChinesePinyinDictionary;

    invoke-virtual {v7, v6}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$ChinesePinyinDictionary;->getPinyinString(C)[Ljava/lang/String;

    move-result-object v7

    .line 28
    new-instance v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    invoke-direct {v8}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;-><init>()V

    .line 29
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    if-nez v7, :cond_d3

    .line 30
    iput v9, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->type:I

    .line 31
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    goto :goto_de

    .line 32
    :cond_d3
    iput v10, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->type:I

    .line 33
    aget-object v9, v7, v1

    iput-object v9, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 34
    array-length v9, v7

    if-le v9, v4, :cond_de

    .line 35
    iput-object v7, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->polyPhones:[Ljava/lang/String;

    .line 36
    :cond_de
    :goto_de
    iget v7, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->type:I

    if-ne v7, v10, :cond_ef

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_eb

    .line 38
    invoke-direct {p0, v3, v0, v5}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 39
    :cond_eb
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    :cond_ef
    if-eq v5, v7, :cond_fa

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_fa

    .line 41
    invoke-direct {p0, v3, v0, v5}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 42
    :cond_fa
    iget v10, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->type:I

    .line 43
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ab

    :cond_100
    const/16 v8, 0x900

    if-lt v6, v8, :cond_118

    const/16 v8, 0x97f

    if-gt v6, v8, :cond_118

    if-eq v5, v7, :cond_113

    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_113

    .line 45
    invoke-direct {p0, v3, v0, v5}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 46
    :cond_113
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_128

    :cond_118
    if-eq v5, v9, :cond_123

    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_123

    .line 48
    invoke-direct {p0, v3, v0, v5}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 49
    :cond_123
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    :goto_128
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_2f

    .line 50
    :cond_12c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_135

    .line 51
    invoke-direct {p0, v3, v0, v5}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_135
    return-object v0
.end method

.method public isChinesePinyinKnown(C)Z
    .registers 3

    const/16 v0, 0x4e00

    if-lt p1, v0, :cond_b

    const v0, 0x9fa5

    if-gt p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
