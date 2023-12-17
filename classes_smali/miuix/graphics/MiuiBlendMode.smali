.class public final enum Lmiuix/graphics/MiuiBlendMode;
.super Ljava/lang/Enum;
.source "MiuiBlendMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiuix/graphics/MiuiBlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiuix/graphics/MiuiBlendMode;

.field private static final BLEND_MODES:[Lmiuix/graphics/MiuiBlendMode;

.field public static final enum CLEAR:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum COLOR:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum COLOR_BURN:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum COLOR_DODGE:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum DARKEN:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum DIFFERENCE:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum DST:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum DST_ATOP:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum DST_IN:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum DST_OUT:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum DST_OVER:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum EXCLUSION:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum HARD_LIGHT:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum HUE:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum LAST:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum LAST_COEFF:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum LAST_SEPARABLE:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum LIGHTEN:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum LUMINOSITY:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum MODULATE:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum MULTIPLY:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum OVERLAY:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum PLUS:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SATURATION:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SCREEN:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SOFT_LIGHT:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SRC:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SRC_ATOP:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SRC_IN:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SRC_OUT:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum SRC_OVER:Lmiuix/graphics/MiuiBlendMode;

.field public static final enum XOR:Lmiuix/graphics/MiuiBlendMode;


# instance fields
.field private final mPorterDuffMode:I


# direct methods
.method public static constructor <clinit>()V
    .registers 35

    .line 1
    new-instance v0, Lmiuix/graphics/MiuiBlendMode;

    .line 3
    const-string v1, "CLEAR"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lmiuix/graphics/MiuiBlendMode;->CLEAR:Lmiuix/graphics/MiuiBlendMode;

    .line 11
    new-instance v1, Lmiuix/graphics/MiuiBlendMode;

    .line 13
    const-string v3, "SRC"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v1, Lmiuix/graphics/MiuiBlendMode;->SRC:Lmiuix/graphics/MiuiBlendMode;

    .line 21
    new-instance v3, Lmiuix/graphics/MiuiBlendMode;

    .line 23
    const-string v5, "DST"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v3, Lmiuix/graphics/MiuiBlendMode;->DST:Lmiuix/graphics/MiuiBlendMode;

    .line 31
    new-instance v5, Lmiuix/graphics/MiuiBlendMode;

    .line 33
    const-string v7, "SRC_OVER"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v5, Lmiuix/graphics/MiuiBlendMode;->SRC_OVER:Lmiuix/graphics/MiuiBlendMode;

    .line 41
    new-instance v7, Lmiuix/graphics/MiuiBlendMode;

    .line 43
    const-string v9, "DST_OVER"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v7, Lmiuix/graphics/MiuiBlendMode;->DST_OVER:Lmiuix/graphics/MiuiBlendMode;

    .line 51
    new-instance v9, Lmiuix/graphics/MiuiBlendMode;

    .line 53
    const-string v11, "SRC_IN"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 59
    sput-object v9, Lmiuix/graphics/MiuiBlendMode;->SRC_IN:Lmiuix/graphics/MiuiBlendMode;

    .line 61
    new-instance v11, Lmiuix/graphics/MiuiBlendMode;

    .line 63
    const-string v13, "DST_IN"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 69
    sput-object v11, Lmiuix/graphics/MiuiBlendMode;->DST_IN:Lmiuix/graphics/MiuiBlendMode;

    .line 71
    new-instance v13, Lmiuix/graphics/MiuiBlendMode;

    .line 73
    const-string v15, "SRC_OUT"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14, v14}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 79
    sput-object v13, Lmiuix/graphics/MiuiBlendMode;->SRC_OUT:Lmiuix/graphics/MiuiBlendMode;

    .line 81
    new-instance v15, Lmiuix/graphics/MiuiBlendMode;

    .line 83
    const-string v14, "DST_OUT"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12, v12}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 90
    sput-object v15, Lmiuix/graphics/MiuiBlendMode;->DST_OUT:Lmiuix/graphics/MiuiBlendMode;

    .line 92
    new-instance v14, Lmiuix/graphics/MiuiBlendMode;

    .line 94
    const-string v12, "SRC_ATOP"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10, v10}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 101
    sput-object v14, Lmiuix/graphics/MiuiBlendMode;->SRC_ATOP:Lmiuix/graphics/MiuiBlendMode;

    .line 103
    new-instance v12, Lmiuix/graphics/MiuiBlendMode;

    .line 105
    const-string v10, "DST_ATOP"

    .line 107
    const/16 v8, 0xa

    .line 109
    invoke-direct {v12, v10, v8, v8}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 112
    sput-object v12, Lmiuix/graphics/MiuiBlendMode;->DST_ATOP:Lmiuix/graphics/MiuiBlendMode;

    .line 114
    new-instance v10, Lmiuix/graphics/MiuiBlendMode;

    .line 116
    const-string v8, "XOR"

    .line 118
    const/16 v6, 0xb

    .line 120
    invoke-direct {v10, v8, v6, v6}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 123
    sput-object v10, Lmiuix/graphics/MiuiBlendMode;->XOR:Lmiuix/graphics/MiuiBlendMode;

    .line 125
    new-instance v8, Lmiuix/graphics/MiuiBlendMode;

    .line 127
    const-string v6, "PLUS"

    .line 129
    const/16 v4, 0xc

    .line 131
    invoke-direct {v8, v6, v4, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 134
    sput-object v8, Lmiuix/graphics/MiuiBlendMode;->PLUS:Lmiuix/graphics/MiuiBlendMode;

    .line 136
    new-instance v6, Lmiuix/graphics/MiuiBlendMode;

    .line 138
    const-string v4, "MODULATE"

    .line 140
    const/16 v2, 0xd

    .line 142
    invoke-direct {v6, v4, v2, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 145
    sput-object v6, Lmiuix/graphics/MiuiBlendMode;->MODULATE:Lmiuix/graphics/MiuiBlendMode;

    .line 147
    new-instance v4, Lmiuix/graphics/MiuiBlendMode;

    .line 149
    const-string v2, "SCREEN"

    .line 151
    move-object/from16 v16, v6

    .line 153
    const/16 v6, 0xe

    .line 155
    invoke-direct {v4, v2, v6, v6}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 158
    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->SCREEN:Lmiuix/graphics/MiuiBlendMode;

    .line 160
    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    .line 162
    const-string v6, "OVERLAY"

    .line 164
    move-object/from16 v17, v4

    .line 166
    const/16 v4, 0xf

    .line 168
    invoke-direct {v2, v6, v4, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 171
    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->OVERLAY:Lmiuix/graphics/MiuiBlendMode;

    .line 173
    new-instance v6, Lmiuix/graphics/MiuiBlendMode;

    .line 175
    const-string v4, "DARKEN"

    .line 177
    move-object/from16 v18, v2

    .line 179
    const/16 v2, 0x10

    .line 181
    invoke-direct {v6, v4, v2, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 184
    sput-object v6, Lmiuix/graphics/MiuiBlendMode;->DARKEN:Lmiuix/graphics/MiuiBlendMode;

    .line 186
    new-instance v4, Lmiuix/graphics/MiuiBlendMode;

    .line 188
    const-string v2, "LIGHTEN"

    .line 190
    move-object/from16 v19, v6

    .line 192
    const/16 v6, 0x11

    .line 194
    invoke-direct {v4, v2, v6, v6}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 197
    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->LIGHTEN:Lmiuix/graphics/MiuiBlendMode;

    .line 199
    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    .line 201
    const-string v6, "COLOR_DODGE"

    .line 203
    move-object/from16 v20, v4

    .line 205
    const/16 v4, 0x12

    .line 207
    invoke-direct {v2, v6, v4, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 210
    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->COLOR_DODGE:Lmiuix/graphics/MiuiBlendMode;

    .line 212
    new-instance v6, Lmiuix/graphics/MiuiBlendMode;

    .line 214
    const-string v4, "COLOR_BURN"

    .line 216
    move-object/from16 v21, v2

    .line 218
    const/16 v2, 0x13

    .line 220
    invoke-direct {v6, v4, v2, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 223
    sput-object v6, Lmiuix/graphics/MiuiBlendMode;->COLOR_BURN:Lmiuix/graphics/MiuiBlendMode;

    .line 225
    new-instance v4, Lmiuix/graphics/MiuiBlendMode;

    .line 227
    const-string v2, "HARD_LIGHT"

    .line 229
    move-object/from16 v22, v6

    .line 231
    const/16 v6, 0x14

    .line 233
    invoke-direct {v4, v2, v6, v6}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 236
    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->HARD_LIGHT:Lmiuix/graphics/MiuiBlendMode;

    .line 238
    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    .line 240
    const-string v6, "SOFT_LIGHT"

    .line 242
    move-object/from16 v23, v4

    .line 244
    const/16 v4, 0x15

    .line 246
    invoke-direct {v2, v6, v4, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 249
    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->SOFT_LIGHT:Lmiuix/graphics/MiuiBlendMode;

    .line 251
    new-instance v6, Lmiuix/graphics/MiuiBlendMode;

    .line 253
    const-string v4, "DIFFERENCE"

    .line 255
    move-object/from16 v24, v2

    .line 257
    const/16 v2, 0x16

    .line 259
    move-object/from16 v25, v8

    .line 261
    const/16 v8, 0x16

    .line 263
    invoke-direct {v6, v4, v2, v8}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 266
    sput-object v6, Lmiuix/graphics/MiuiBlendMode;->DIFFERENCE:Lmiuix/graphics/MiuiBlendMode;

    .line 268
    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    .line 270
    const-string v4, "EXCLUSION"

    .line 272
    const/16 v8, 0x17

    .line 274
    move-object/from16 v26, v6

    .line 276
    const/16 v6, 0x17

    .line 278
    invoke-direct {v2, v4, v8, v6}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 281
    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->EXCLUSION:Lmiuix/graphics/MiuiBlendMode;

    .line 283
    new-instance v4, Lmiuix/graphics/MiuiBlendMode;

    .line 285
    const-string v6, "MULTIPLY"

    .line 287
    const/16 v8, 0x18

    .line 289
    move-object/from16 v27, v2

    .line 291
    const/16 v2, 0x18

    .line 293
    invoke-direct {v4, v6, v8, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 296
    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->MULTIPLY:Lmiuix/graphics/MiuiBlendMode;

    .line 298
    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    .line 300
    const-string v6, "HUE"

    .line 302
    const/16 v8, 0x19

    .line 304
    move-object/from16 v28, v4

    .line 306
    const/16 v4, 0x19

    .line 308
    invoke-direct {v2, v6, v8, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 311
    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->HUE:Lmiuix/graphics/MiuiBlendMode;

    .line 313
    new-instance v4, Lmiuix/graphics/MiuiBlendMode;

    .line 315
    const-string v6, "SATURATION"

    .line 317
    const/16 v8, 0x1a

    .line 319
    move-object/from16 v29, v2

    .line 321
    const/16 v2, 0x1a

    .line 323
    invoke-direct {v4, v6, v8, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 326
    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->SATURATION:Lmiuix/graphics/MiuiBlendMode;

    .line 328
    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    .line 330
    const-string v6, "COLOR"

    .line 332
    const/16 v8, 0x1b

    .line 334
    move-object/from16 v30, v4

    .line 336
    const/16 v4, 0x1b

    .line 338
    invoke-direct {v2, v6, v8, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 341
    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->COLOR:Lmiuix/graphics/MiuiBlendMode;

    .line 343
    new-instance v4, Lmiuix/graphics/MiuiBlendMode;

    .line 345
    const-string v6, "LUMINOSITY"

    .line 347
    const/16 v8, 0x1c

    .line 349
    move-object/from16 v31, v2

    .line 351
    const/16 v2, 0x1c

    .line 353
    invoke-direct {v4, v6, v8, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 356
    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->LUMINOSITY:Lmiuix/graphics/MiuiBlendMode;

    .line 358
    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    .line 360
    const-string v6, "LAST_COEFF"

    .line 362
    const/16 v8, 0x1d

    .line 364
    move-object/from16 v32, v4

    .line 366
    const/16 v4, 0x1d

    .line 368
    invoke-direct {v2, v6, v8, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 371
    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->LAST_COEFF:Lmiuix/graphics/MiuiBlendMode;

    .line 373
    new-instance v4, Lmiuix/graphics/MiuiBlendMode;

    .line 375
    const-string v6, "LAST_SEPARABLE"

    .line 377
    const/16 v8, 0x1e

    .line 379
    move-object/from16 v33, v2

    .line 381
    const/16 v2, 0x1e

    .line 383
    invoke-direct {v4, v6, v8, v2}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 386
    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->LAST_SEPARABLE:Lmiuix/graphics/MiuiBlendMode;

    .line 388
    new-instance v2, Lmiuix/graphics/MiuiBlendMode;

    .line 390
    const-string v6, "LAST"

    .line 392
    const/16 v8, 0x1f

    .line 394
    move-object/from16 v34, v4

    .line 396
    const/16 v4, 0x1f

    .line 398
    invoke-direct {v2, v6, v8, v4}, Lmiuix/graphics/MiuiBlendMode;-><init>(Ljava/lang/String;II)V

    .line 401
    sput-object v2, Lmiuix/graphics/MiuiBlendMode;->LAST:Lmiuix/graphics/MiuiBlendMode;

    .line 403
    const/16 v4, 0x20

    .line 405
    new-array v4, v4, [Lmiuix/graphics/MiuiBlendMode;

    .line 407
    const/4 v6, 0x0

    .line 408
    aput-object v0, v4, v6

    .line 410
    const/4 v0, 0x1

    .line 411
    aput-object v1, v4, v0

    .line 413
    const/4 v0, 0x2

    .line 414
    aput-object v3, v4, v0

    .line 416
    const/4 v0, 0x3

    .line 417
    aput-object v5, v4, v0

    .line 419
    const/4 v0, 0x4

    .line 420
    aput-object v7, v4, v0

    .line 422
    const/4 v0, 0x5

    .line 423
    aput-object v9, v4, v0

    .line 425
    const/4 v0, 0x6

    .line 426
    aput-object v11, v4, v0

    .line 428
    const/4 v0, 0x7

    .line 429
    aput-object v13, v4, v0

    .line 431
    const/16 v0, 0x8

    .line 433
    aput-object v15, v4, v0

    .line 435
    const/16 v0, 0x9

    .line 437
    aput-object v14, v4, v0

    .line 439
    const/16 v0, 0xa

    .line 441
    aput-object v12, v4, v0

    .line 443
    const/16 v0, 0xb

    .line 445
    aput-object v10, v4, v0

    .line 447
    const/16 v0, 0xc

    .line 449
    aput-object v25, v4, v0

    .line 451
    const/16 v0, 0xd

    .line 453
    aput-object v16, v4, v0

    .line 455
    const/16 v0, 0xe

    .line 457
    aput-object v17, v4, v0

    .line 459
    const/16 v0, 0xf

    .line 461
    aput-object v18, v4, v0

    .line 463
    const/16 v0, 0x10

    .line 465
    aput-object v19, v4, v0

    .line 467
    const/16 v0, 0x11

    .line 469
    aput-object v20, v4, v0

    .line 471
    const/16 v0, 0x12

    .line 473
    aput-object v21, v4, v0

    .line 475
    const/16 v0, 0x13

    .line 477
    aput-object v22, v4, v0

    .line 479
    const/16 v0, 0x14

    .line 481
    aput-object v23, v4, v0

    .line 483
    const/16 v0, 0x15

    .line 485
    aput-object v24, v4, v0

    .line 487
    const/16 v0, 0x16

    .line 489
    aput-object v26, v4, v0

    .line 491
    const/16 v0, 0x17

    .line 493
    aput-object v27, v4, v0

    .line 495
    const/16 v0, 0x18

    .line 497
    aput-object v28, v4, v0

    .line 499
    const/16 v0, 0x19

    .line 501
    aput-object v29, v4, v0

    .line 503
    const/16 v0, 0x1a

    .line 505
    aput-object v30, v4, v0

    .line 507
    const/16 v0, 0x1b

    .line 509
    aput-object v31, v4, v0

    .line 511
    const/16 v0, 0x1c

    .line 513
    aput-object v32, v4, v0

    .line 515
    const/16 v0, 0x1d

    .line 517
    aput-object v33, v4, v0

    .line 519
    const/16 v0, 0x1e

    .line 521
    aput-object v34, v4, v0

    .line 523
    const/16 v0, 0x1f

    .line 525
    aput-object v2, v4, v0

    .line 527
    sput-object v4, Lmiuix/graphics/MiuiBlendMode;->$VALUES:[Lmiuix/graphics/MiuiBlendMode;

    .line 529
    invoke-static {}, Lmiuix/graphics/MiuiBlendMode;->values()[Lmiuix/graphics/MiuiBlendMode;

    .line 532
    move-result-object v0

    .line 533
    sput-object v0, Lmiuix/graphics/MiuiBlendMode;->BLEND_MODES:[Lmiuix/graphics/MiuiBlendMode;

    .line 535
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lmiuix/graphics/MiuiBlendMode;->mPorterDuffMode:I

    .line 6
    return-void
.end method

.method public static blendModeToPorterDuffMode(Lmiuix/graphics/MiuiBlendMode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_45

    .line 4
    sget-object v1, Lmiuix/graphics/MiuiBlendMode$1;->$SwitchMap$miuix$graphics$MiuiBlendMode:[I

    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result p0

    .line 10
    aget p0, v1, p0

    .line 12
    packed-switch p0, :pswitch_data_46

    .line 15
    return-object v0

    .line 16
    :pswitch_f  #0x12
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    .line 18
    return-object p0

    .line 19
    :pswitch_12  #0x11
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    .line 21
    return-object p0

    .line 22
    :pswitch_15  #0x10
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    .line 24
    return-object p0

    .line 25
    :pswitch_18  #0xf
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 27
    return-object p0

    .line 28
    :pswitch_1b  #0xe
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    .line 30
    return-object p0

    .line 31
    :pswitch_1e  #0xd
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    .line 33
    return-object p0

    .line 34
    :pswitch_21  #0xc
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    .line 36
    return-object p0

    .line 37
    :pswitch_24  #0xb
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 39
    return-object p0

    .line 40
    :pswitch_27  #0xa
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 42
    return-object p0

    .line 43
    :pswitch_2a  #0x9
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 45
    return-object p0

    .line 46
    :pswitch_2d  #0x8
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 48
    return-object p0

    .line 49
    :pswitch_30  #0x7
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 51
    return-object p0

    .line 52
    :pswitch_33  #0x6
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 54
    return-object p0

    .line 55
    :pswitch_36  #0x5
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 57
    return-object p0

    .line 58
    :pswitch_39  #0x4
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 60
    return-object p0

    .line 61
    :pswitch_3c  #0x3
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    .line 63
    return-object p0

    .line 64
    :pswitch_3f  #0x2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 66
    return-object p0

    .line 67
    :pswitch_42  #0x1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 69
    return-object p0

    .line 70
    :cond_45
    return-object v0

    .line 71
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_3f  #00000002
        :pswitch_3c  #00000003
        :pswitch_39  #00000004
        :pswitch_36  #00000005
        :pswitch_33  #00000006
        :pswitch_30  #00000007
        :pswitch_2d  #00000008
        :pswitch_2a  #00000009
        :pswitch_27  #0000000a
        :pswitch_24  #0000000b
        :pswitch_21  #0000000c
        :pswitch_1e  #0000000d
        :pswitch_1b  #0000000e
        :pswitch_18  #0000000f
        :pswitch_15  #00000010
        :pswitch_12  #00000011
        :pswitch_f  #00000012
    .end packed-switch
.end method

.method public static fromValue(I)Lmiuix/graphics/MiuiBlendMode;
    .registers 6

    .line 1
    sget-object v0, Lmiuix/graphics/MiuiBlendMode;->BLEND_MODES:[Lmiuix/graphics/MiuiBlendMode;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_4
    if-ge v2, v1, :cond_10

    .line 7
    aget-object v3, v0, v2

    .line 9
    iget v4, v3, Lmiuix/graphics/MiuiBlendMode;->mPorterDuffMode:I

    .line 11
    if-ne v4, p0, :cond_d

    .line 13
    return-object v3

    .line 14
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 16
    goto :goto_4

    .line 17
    :cond_10
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static toValue(Lmiuix/graphics/MiuiBlendMode;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/graphics/MiuiBlendMode;->mPorterDuffMode:I

    .line 3
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiuix/graphics/MiuiBlendMode;
    .registers 2

    .line 1
    const-class v0, Lmiuix/graphics/MiuiBlendMode;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/graphics/MiuiBlendMode;

    .line 9
    return-object p0
.end method

.method public static values()[Lmiuix/graphics/MiuiBlendMode;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/graphics/MiuiBlendMode;->$VALUES:[Lmiuix/graphics/MiuiBlendMode;

    .line 3
    invoke-virtual {v0}, [Lmiuix/graphics/MiuiBlendMode;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lmiuix/graphics/MiuiBlendMode;

    .line 9
    return-object v0
.end method
