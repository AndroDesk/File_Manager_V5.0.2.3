.class public final enum Landroidx/core/graphics/BlendModeCompat;
.super Ljava/lang/Enum;
.source "BlendModeCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/core/graphics/BlendModeCompat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLEAR:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum COLOR:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum COLOR_BURN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum COLOR_DODGE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DARKEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DIFFERENCE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_ATOP:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_IN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_OUT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_OVER:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum EXCLUSION:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum HARD_LIGHT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum HUE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum LUMINOSITY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum MODULATE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum OVERLAY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum PLUS:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SATURATION:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SCREEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SOFT_LIGHT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_IN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_OUT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum XOR:Landroidx/core/graphics/BlendModeCompat;

.field public static final synthetic a:[Landroidx/core/graphics/BlendModeCompat;


# direct methods
.method public static constructor <clinit>()V
    .registers 31

    .line 1
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 3
    const-string v1, "CLEAR"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->CLEAR:Landroidx/core/graphics/BlendModeCompat;

    .line 11
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 13
    const-string v3, "SRC"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC:Landroidx/core/graphics/BlendModeCompat;

    .line 21
    new-instance v3, Landroidx/core/graphics/BlendModeCompat;

    .line 23
    const-string v5, "DST"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Landroidx/core/graphics/BlendModeCompat;->DST:Landroidx/core/graphics/BlendModeCompat;

    .line 31
    new-instance v5, Landroidx/core/graphics/BlendModeCompat;

    .line 33
    const-string v7, "SRC_OVER"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Landroidx/core/graphics/BlendModeCompat;->SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

    .line 41
    new-instance v7, Landroidx/core/graphics/BlendModeCompat;

    .line 43
    const-string v9, "DST_OVER"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Landroidx/core/graphics/BlendModeCompat;->DST_OVER:Landroidx/core/graphics/BlendModeCompat;

    .line 51
    new-instance v9, Landroidx/core/graphics/BlendModeCompat;

    .line 53
    const-string v11, "SRC_IN"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Landroidx/core/graphics/BlendModeCompat;->SRC_IN:Landroidx/core/graphics/BlendModeCompat;

    .line 61
    new-instance v11, Landroidx/core/graphics/BlendModeCompat;

    .line 63
    const-string v13, "DST_IN"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Landroidx/core/graphics/BlendModeCompat;->DST_IN:Landroidx/core/graphics/BlendModeCompat;

    .line 71
    new-instance v13, Landroidx/core/graphics/BlendModeCompat;

    .line 73
    const-string v15, "SRC_OUT"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Landroidx/core/graphics/BlendModeCompat;->SRC_OUT:Landroidx/core/graphics/BlendModeCompat;

    .line 81
    new-instance v15, Landroidx/core/graphics/BlendModeCompat;

    .line 83
    const-string v14, "DST_OUT"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Landroidx/core/graphics/BlendModeCompat;->DST_OUT:Landroidx/core/graphics/BlendModeCompat;

    .line 92
    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    .line 94
    const-string v12, "SRC_ATOP"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v14, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    .line 103
    new-instance v12, Landroidx/core/graphics/BlendModeCompat;

    .line 105
    const-string v10, "DST_ATOP"

    .line 107
    const/16 v8, 0xa

    .line 109
    invoke-direct {v12, v10, v8}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 112
    sput-object v12, Landroidx/core/graphics/BlendModeCompat;->DST_ATOP:Landroidx/core/graphics/BlendModeCompat;

    .line 114
    new-instance v10, Landroidx/core/graphics/BlendModeCompat;

    .line 116
    const-string v8, "XOR"

    .line 118
    const/16 v6, 0xb

    .line 120
    invoke-direct {v10, v8, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 123
    sput-object v10, Landroidx/core/graphics/BlendModeCompat;->XOR:Landroidx/core/graphics/BlendModeCompat;

    .line 125
    new-instance v8, Landroidx/core/graphics/BlendModeCompat;

    .line 127
    const-string v6, "PLUS"

    .line 129
    const/16 v4, 0xc

    .line 131
    invoke-direct {v8, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 134
    sput-object v8, Landroidx/core/graphics/BlendModeCompat;->PLUS:Landroidx/core/graphics/BlendModeCompat;

    .line 136
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    .line 138
    const-string v4, "MODULATE"

    .line 140
    const/16 v2, 0xd

    .line 142
    invoke-direct {v6, v4, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 145
    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->MODULATE:Landroidx/core/graphics/BlendModeCompat;

    .line 147
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    .line 149
    const-string v2, "SCREEN"

    .line 151
    move-object/from16 v16, v6

    .line 153
    const/16 v6, 0xe

    .line 155
    invoke-direct {v4, v2, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 158
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->SCREEN:Landroidx/core/graphics/BlendModeCompat;

    .line 160
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 162
    const-string v6, "OVERLAY"

    .line 164
    move-object/from16 v17, v4

    .line 166
    const/16 v4, 0xf

    .line 168
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 171
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->OVERLAY:Landroidx/core/graphics/BlendModeCompat;

    .line 173
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    .line 175
    const-string v4, "DARKEN"

    .line 177
    move-object/from16 v18, v2

    .line 179
    const/16 v2, 0x10

    .line 181
    invoke-direct {v6, v4, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 184
    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->DARKEN:Landroidx/core/graphics/BlendModeCompat;

    .line 186
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    .line 188
    const-string v2, "LIGHTEN"

    .line 190
    move-object/from16 v19, v6

    .line 192
    const/16 v6, 0x11

    .line 194
    invoke-direct {v4, v2, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 197
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

    .line 199
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 201
    const-string v6, "COLOR_DODGE"

    .line 203
    move-object/from16 v20, v4

    .line 205
    const/16 v4, 0x12

    .line 207
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 210
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->COLOR_DODGE:Landroidx/core/graphics/BlendModeCompat;

    .line 212
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    .line 214
    const-string v4, "COLOR_BURN"

    .line 216
    move-object/from16 v21, v2

    .line 218
    const/16 v2, 0x13

    .line 220
    invoke-direct {v6, v4, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 223
    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->COLOR_BURN:Landroidx/core/graphics/BlendModeCompat;

    .line 225
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    .line 227
    const-string v2, "HARD_LIGHT"

    .line 229
    move-object/from16 v22, v6

    .line 231
    const/16 v6, 0x14

    .line 233
    invoke-direct {v4, v2, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 236
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->HARD_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    .line 238
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 240
    const-string v6, "SOFT_LIGHT"

    .line 242
    move-object/from16 v23, v4

    .line 244
    const/16 v4, 0x15

    .line 246
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 249
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->SOFT_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    .line 251
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    .line 253
    const-string v4, "DIFFERENCE"

    .line 255
    move-object/from16 v24, v2

    .line 257
    const/16 v2, 0x16

    .line 259
    invoke-direct {v6, v4, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 262
    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->DIFFERENCE:Landroidx/core/graphics/BlendModeCompat;

    .line 264
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 266
    const-string v4, "EXCLUSION"

    .line 268
    move-object/from16 v25, v6

    .line 270
    const/16 v6, 0x17

    .line 272
    invoke-direct {v2, v4, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 275
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->EXCLUSION:Landroidx/core/graphics/BlendModeCompat;

    .line 277
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    .line 279
    const-string v6, "MULTIPLY"

    .line 281
    move-object/from16 v26, v2

    .line 283
    const/16 v2, 0x18

    .line 285
    invoke-direct {v4, v6, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 288
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

    .line 290
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 292
    const-string v6, "HUE"

    .line 294
    move-object/from16 v27, v4

    .line 296
    const/16 v4, 0x19

    .line 298
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 301
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->HUE:Landroidx/core/graphics/BlendModeCompat;

    .line 303
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    .line 305
    const-string v6, "SATURATION"

    .line 307
    move-object/from16 v28, v2

    .line 309
    const/16 v2, 0x1a

    .line 311
    invoke-direct {v4, v6, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 314
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->SATURATION:Landroidx/core/graphics/BlendModeCompat;

    .line 316
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 318
    const-string v6, "COLOR"

    .line 320
    move-object/from16 v29, v4

    .line 322
    const/16 v4, 0x1b

    .line 324
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 327
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->COLOR:Landroidx/core/graphics/BlendModeCompat;

    .line 329
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    .line 331
    const-string v6, "LUMINOSITY"

    .line 333
    move-object/from16 v30, v2

    .line 335
    const/16 v2, 0x1c

    .line 337
    invoke-direct {v4, v6, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    .line 340
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->LUMINOSITY:Landroidx/core/graphics/BlendModeCompat;

    .line 342
    const/16 v2, 0x1d

    .line 344
    new-array v2, v2, [Landroidx/core/graphics/BlendModeCompat;

    .line 346
    const/4 v6, 0x0

    .line 347
    aput-object v0, v2, v6

    .line 349
    const/4 v0, 0x1

    .line 350
    aput-object v1, v2, v0

    .line 352
    const/4 v0, 0x2

    .line 353
    aput-object v3, v2, v0

    .line 355
    const/4 v0, 0x3

    .line 356
    aput-object v5, v2, v0

    .line 358
    const/4 v0, 0x4

    .line 359
    aput-object v7, v2, v0

    .line 361
    const/4 v0, 0x5

    .line 362
    aput-object v9, v2, v0

    .line 364
    const/4 v0, 0x6

    .line 365
    aput-object v11, v2, v0

    .line 367
    const/4 v0, 0x7

    .line 368
    aput-object v13, v2, v0

    .line 370
    const/16 v0, 0x8

    .line 372
    aput-object v15, v2, v0

    .line 374
    const/16 v0, 0x9

    .line 376
    aput-object v14, v2, v0

    .line 378
    const/16 v0, 0xa

    .line 380
    aput-object v12, v2, v0

    .line 382
    const/16 v0, 0xb

    .line 384
    aput-object v10, v2, v0

    .line 386
    const/16 v0, 0xc

    .line 388
    aput-object v8, v2, v0

    .line 390
    const/16 v0, 0xd

    .line 392
    aput-object v16, v2, v0

    .line 394
    const/16 v0, 0xe

    .line 396
    aput-object v17, v2, v0

    .line 398
    const/16 v0, 0xf

    .line 400
    aput-object v18, v2, v0

    .line 402
    const/16 v0, 0x10

    .line 404
    aput-object v19, v2, v0

    .line 406
    const/16 v0, 0x11

    .line 408
    aput-object v20, v2, v0

    .line 410
    const/16 v0, 0x12

    .line 412
    aput-object v21, v2, v0

    .line 414
    const/16 v0, 0x13

    .line 416
    aput-object v22, v2, v0

    .line 418
    const/16 v0, 0x14

    .line 420
    aput-object v23, v2, v0

    .line 422
    const/16 v0, 0x15

    .line 424
    aput-object v24, v2, v0

    .line 426
    const/16 v0, 0x16

    .line 428
    aput-object v25, v2, v0

    .line 430
    const/16 v0, 0x17

    .line 432
    aput-object v26, v2, v0

    .line 434
    const/16 v0, 0x18

    .line 436
    aput-object v27, v2, v0

    .line 438
    const/16 v0, 0x19

    .line 440
    aput-object v28, v2, v0

    .line 442
    const/16 v0, 0x1a

    .line 444
    aput-object v29, v2, v0

    .line 446
    const/16 v0, 0x1b

    .line 448
    aput-object v30, v2, v0

    .line 450
    const/16 v0, 0x1c

    .line 452
    aput-object v4, v2, v0

    .line 454
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->a:[Landroidx/core/graphics/BlendModeCompat;

    .line 456
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/core/graphics/BlendModeCompat;
    .registers 2

    .line 1
    const-class v0, Landroidx/core/graphics/BlendModeCompat;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/core/graphics/BlendModeCompat;

    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/core/graphics/BlendModeCompat;
    .registers 1

    .line 1
    sget-object v0, Landroidx/core/graphics/BlendModeCompat;->a:[Landroidx/core/graphics/BlendModeCompat;

    .line 3
    invoke-virtual {v0}, [Landroidx/core/graphics/BlendModeCompat;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/core/graphics/BlendModeCompat;

    .line 9
    return-object v0
.end method
