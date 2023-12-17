.class final enum Lcom/miui/maml/data/BaseFunctions$Fun;
.super Ljava/lang/Enum;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/BaseFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/data/BaseFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ABS:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ACOS:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum AND:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ASIN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ATAN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum CEIL:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum COS:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum COSH:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum DIGIT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum EQ:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum EQS:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum FLOOR:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum GE:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum GT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum HASH:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum IFELSE:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum INT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum INVALID:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ISNULL:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LE:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LEN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LOG:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LOG10:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum MAX:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum MIN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum NE:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum NOT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum NUM:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum OR:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum POW:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum PRECISE_EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum RAND:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ROUND:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum SIN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum SINH:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum SQRT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum SUBSTR:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum TAN:Lcom/miui/maml/data/BaseFunctions$Fun;


# direct methods
.method public static constructor <clinit>()V
    .registers 42

    .line 1
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 3
    const-string v1, "INVALID"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->INVALID:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 11
    new-instance v1, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 13
    const-string v3, "RAND"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->RAND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 21
    new-instance v3, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 23
    const-string v5, "SIN"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/miui/maml/data/BaseFunctions$Fun;->SIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 31
    new-instance v5, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 33
    const-string v7, "COS"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/miui/maml/data/BaseFunctions$Fun;->COS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 41
    new-instance v7, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 43
    const-string v9, "TAN"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/miui/maml/data/BaseFunctions$Fun;->TAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 51
    new-instance v9, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 53
    const-string v11, "ASIN"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcom/miui/maml/data/BaseFunctions$Fun;->ASIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 61
    new-instance v11, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 63
    const-string v13, "ACOS"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lcom/miui/maml/data/BaseFunctions$Fun;->ACOS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 71
    new-instance v13, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 73
    const-string v15, "ATAN"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lcom/miui/maml/data/BaseFunctions$Fun;->ATAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 81
    new-instance v15, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 83
    const-string v14, "SINH"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lcom/miui/maml/data/BaseFunctions$Fun;->SINH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 92
    new-instance v14, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 94
    const-string v12, "COSH"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v14, Lcom/miui/maml/data/BaseFunctions$Fun;->COSH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 103
    new-instance v12, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 105
    const-string v10, "SQRT"

    .line 107
    const/16 v8, 0xa

    .line 109
    invoke-direct {v12, v10, v8}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 112
    sput-object v12, Lcom/miui/maml/data/BaseFunctions$Fun;->SQRT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 114
    new-instance v10, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 116
    const-string v8, "ABS"

    .line 118
    const/16 v6, 0xb

    .line 120
    invoke-direct {v10, v8, v6}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 123
    sput-object v10, Lcom/miui/maml/data/BaseFunctions$Fun;->ABS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 125
    new-instance v8, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 127
    const-string v6, "LEN"

    .line 129
    const/16 v4, 0xc

    .line 131
    invoke-direct {v8, v6, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 134
    sput-object v8, Lcom/miui/maml/data/BaseFunctions$Fun;->LEN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 136
    new-instance v6, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 138
    const-string v4, "EVAL"

    .line 140
    const/16 v2, 0xd

    .line 142
    invoke-direct {v6, v4, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 145
    sput-object v6, Lcom/miui/maml/data/BaseFunctions$Fun;->EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 147
    new-instance v4, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 149
    const-string v2, "PRECISE_EVAL"

    .line 151
    move-object/from16 v16, v6

    .line 153
    const/16 v6, 0xe

    .line 155
    invoke-direct {v4, v2, v6}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 158
    sput-object v4, Lcom/miui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 160
    new-instance v2, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 162
    const-string v6, "ROUND"

    .line 164
    move-object/from16 v17, v4

    .line 166
    const/16 v4, 0xf

    .line 168
    invoke-direct {v2, v6, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 171
    sput-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->ROUND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 173
    new-instance v6, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 175
    const-string v4, "INT"

    .line 177
    move-object/from16 v18, v2

    .line 179
    const/16 v2, 0x10

    .line 181
    invoke-direct {v6, v4, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 184
    sput-object v6, Lcom/miui/maml/data/BaseFunctions$Fun;->INT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 186
    new-instance v4, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 188
    const-string v2, "NUM"

    .line 190
    move-object/from16 v19, v6

    .line 192
    const/16 v6, 0x11

    .line 194
    invoke-direct {v4, v2, v6}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 197
    sput-object v4, Lcom/miui/maml/data/BaseFunctions$Fun;->NUM:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 199
    new-instance v2, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 201
    const-string v6, "MIN"

    .line 203
    move-object/from16 v20, v4

    .line 205
    const/16 v4, 0x12

    .line 207
    invoke-direct {v2, v6, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 210
    sput-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->MIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 212
    new-instance v6, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 214
    const-string v4, "MAX"

    .line 216
    move-object/from16 v21, v2

    .line 218
    const/16 v2, 0x13

    .line 220
    invoke-direct {v6, v4, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 223
    sput-object v6, Lcom/miui/maml/data/BaseFunctions$Fun;->MAX:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 225
    new-instance v4, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 227
    const-string v2, "POW"

    .line 229
    move-object/from16 v22, v6

    .line 231
    const/16 v6, 0x14

    .line 233
    invoke-direct {v4, v2, v6}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 236
    sput-object v4, Lcom/miui/maml/data/BaseFunctions$Fun;->POW:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 238
    new-instance v2, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 240
    const-string v6, "LOG"

    .line 242
    move-object/from16 v23, v4

    .line 244
    const/16 v4, 0x15

    .line 246
    invoke-direct {v2, v6, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 249
    sput-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 251
    new-instance v6, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 253
    const-string v4, "LOG10"

    .line 255
    move-object/from16 v24, v2

    .line 257
    const/16 v2, 0x16

    .line 259
    invoke-direct {v6, v4, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 262
    sput-object v6, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG10:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 264
    new-instance v2, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 266
    const-string v4, "DIGIT"

    .line 268
    move-object/from16 v25, v6

    .line 270
    const/16 v6, 0x17

    .line 272
    invoke-direct {v2, v4, v6}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 275
    sput-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->DIGIT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 277
    new-instance v4, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 279
    const-string v6, "EQ"

    .line 281
    move-object/from16 v26, v2

    .line 283
    const/16 v2, 0x18

    .line 285
    invoke-direct {v4, v6, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 288
    sput-object v4, Lcom/miui/maml/data/BaseFunctions$Fun;->EQ:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 290
    new-instance v2, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 292
    const-string v6, "NE"

    .line 294
    move-object/from16 v27, v4

    .line 296
    const/16 v4, 0x19

    .line 298
    invoke-direct {v2, v6, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 301
    sput-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->NE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 303
    new-instance v4, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 305
    const-string v6, "GE"

    .line 307
    move-object/from16 v28, v2

    .line 309
    const/16 v2, 0x1a

    .line 311
    invoke-direct {v4, v6, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 314
    sput-object v4, Lcom/miui/maml/data/BaseFunctions$Fun;->GE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 316
    new-instance v2, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 318
    const-string v6, "GT"

    .line 320
    move-object/from16 v29, v4

    .line 322
    const/16 v4, 0x1b

    .line 324
    invoke-direct {v2, v6, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 327
    sput-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->GT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 329
    new-instance v4, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 331
    const-string v6, "LE"

    .line 333
    move-object/from16 v30, v2

    .line 335
    const/16 v2, 0x1c

    .line 337
    invoke-direct {v4, v6, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 340
    sput-object v4, Lcom/miui/maml/data/BaseFunctions$Fun;->LE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 342
    new-instance v2, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 344
    const-string v6, "LT"

    .line 346
    move-object/from16 v31, v4

    .line 348
    const/16 v4, 0x1d

    .line 350
    invoke-direct {v2, v6, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 353
    sput-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->LT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 355
    new-instance v4, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 357
    const-string v6, "ISNULL"

    .line 359
    move-object/from16 v32, v2

    .line 361
    const/16 v2, 0x1e

    .line 363
    invoke-direct {v4, v6, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 366
    sput-object v4, Lcom/miui/maml/data/BaseFunctions$Fun;->ISNULL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 368
    new-instance v2, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 370
    const-string v6, "NOT"

    .line 372
    move-object/from16 v33, v4

    .line 374
    const/16 v4, 0x1f

    .line 376
    invoke-direct {v2, v6, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 379
    sput-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->NOT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 381
    new-instance v4, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 383
    const-string v6, "IFELSE"

    .line 385
    move-object/from16 v34, v2

    .line 387
    const/16 v2, 0x20

    .line 389
    invoke-direct {v4, v6, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 392
    sput-object v4, Lcom/miui/maml/data/BaseFunctions$Fun;->IFELSE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 394
    new-instance v2, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 396
    const-string v6, "AND"

    .line 398
    move-object/from16 v35, v4

    .line 400
    const/16 v4, 0x21

    .line 402
    invoke-direct {v2, v6, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 405
    sput-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->AND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 407
    new-instance v4, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 409
    const-string v6, "OR"

    .line 411
    move-object/from16 v36, v2

    .line 413
    const/16 v2, 0x22

    .line 415
    invoke-direct {v4, v6, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 418
    sput-object v4, Lcom/miui/maml/data/BaseFunctions$Fun;->OR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 420
    new-instance v2, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 422
    const-string v6, "EQS"

    .line 424
    move-object/from16 v37, v4

    .line 426
    const/16 v4, 0x23

    .line 428
    invoke-direct {v2, v6, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 431
    sput-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->EQS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 433
    new-instance v4, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 435
    const-string v6, "SUBSTR"

    .line 437
    move-object/from16 v38, v2

    .line 439
    const/16 v2, 0x24

    .line 441
    invoke-direct {v4, v6, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 444
    sput-object v4, Lcom/miui/maml/data/BaseFunctions$Fun;->SUBSTR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 446
    new-instance v2, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 448
    const-string v6, "HASH"

    .line 450
    move-object/from16 v39, v4

    .line 452
    const/16 v4, 0x25

    .line 454
    invoke-direct {v2, v6, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 457
    sput-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->HASH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 459
    new-instance v4, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 461
    const-string v6, "FLOOR"

    .line 463
    move-object/from16 v40, v2

    .line 465
    const/16 v2, 0x26

    .line 467
    invoke-direct {v4, v6, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 470
    sput-object v4, Lcom/miui/maml/data/BaseFunctions$Fun;->FLOOR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 472
    new-instance v2, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 474
    const-string v6, "CEIL"

    .line 476
    move-object/from16 v41, v4

    .line 478
    const/16 v4, 0x27

    .line 480
    invoke-direct {v2, v6, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 483
    sput-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->CEIL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 485
    const/16 v4, 0x28

    .line 487
    new-array v4, v4, [Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 489
    const/4 v6, 0x0

    .line 490
    aput-object v0, v4, v6

    .line 492
    const/4 v0, 0x1

    .line 493
    aput-object v1, v4, v0

    .line 495
    const/4 v0, 0x2

    .line 496
    aput-object v3, v4, v0

    .line 498
    const/4 v0, 0x3

    .line 499
    aput-object v5, v4, v0

    .line 501
    const/4 v0, 0x4

    .line 502
    aput-object v7, v4, v0

    .line 504
    const/4 v0, 0x5

    .line 505
    aput-object v9, v4, v0

    .line 507
    const/4 v0, 0x6

    .line 508
    aput-object v11, v4, v0

    .line 510
    const/4 v0, 0x7

    .line 511
    aput-object v13, v4, v0

    .line 513
    const/16 v0, 0x8

    .line 515
    aput-object v15, v4, v0

    .line 517
    const/16 v0, 0x9

    .line 519
    aput-object v14, v4, v0

    .line 521
    const/16 v0, 0xa

    .line 523
    aput-object v12, v4, v0

    .line 525
    const/16 v0, 0xb

    .line 527
    aput-object v10, v4, v0

    .line 529
    const/16 v0, 0xc

    .line 531
    aput-object v8, v4, v0

    .line 533
    const/16 v0, 0xd

    .line 535
    aput-object v16, v4, v0

    .line 537
    const/16 v0, 0xe

    .line 539
    aput-object v17, v4, v0

    .line 541
    const/16 v0, 0xf

    .line 543
    aput-object v18, v4, v0

    .line 545
    const/16 v0, 0x10

    .line 547
    aput-object v19, v4, v0

    .line 549
    const/16 v0, 0x11

    .line 551
    aput-object v20, v4, v0

    .line 553
    const/16 v0, 0x12

    .line 555
    aput-object v21, v4, v0

    .line 557
    const/16 v0, 0x13

    .line 559
    aput-object v22, v4, v0

    .line 561
    const/16 v0, 0x14

    .line 563
    aput-object v23, v4, v0

    .line 565
    const/16 v0, 0x15

    .line 567
    aput-object v24, v4, v0

    .line 569
    const/16 v0, 0x16

    .line 571
    aput-object v25, v4, v0

    .line 573
    const/16 v0, 0x17

    .line 575
    aput-object v26, v4, v0

    .line 577
    const/16 v0, 0x18

    .line 579
    aput-object v27, v4, v0

    .line 581
    const/16 v0, 0x19

    .line 583
    aput-object v28, v4, v0

    .line 585
    const/16 v0, 0x1a

    .line 587
    aput-object v29, v4, v0

    .line 589
    const/16 v0, 0x1b

    .line 591
    aput-object v30, v4, v0

    .line 593
    const/16 v0, 0x1c

    .line 595
    aput-object v31, v4, v0

    .line 597
    const/16 v0, 0x1d

    .line 599
    aput-object v32, v4, v0

    .line 601
    const/16 v0, 0x1e

    .line 603
    aput-object v33, v4, v0

    .line 605
    const/16 v0, 0x1f

    .line 607
    aput-object v34, v4, v0

    .line 609
    const/16 v0, 0x20

    .line 611
    aput-object v35, v4, v0

    .line 613
    const/16 v0, 0x21

    .line 615
    aput-object v36, v4, v0

    .line 617
    const/16 v0, 0x22

    .line 619
    aput-object v37, v4, v0

    .line 621
    const/16 v0, 0x23

    .line 623
    aput-object v38, v4, v0

    .line 625
    const/16 v0, 0x24

    .line 627
    aput-object v39, v4, v0

    .line 629
    const/16 v0, 0x25

    .line 631
    aput-object v40, v4, v0

    .line 633
    const/16 v0, 0x26

    .line 635
    aput-object v41, v4, v0

    .line 637
    const/16 v0, 0x27

    .line 639
    aput-object v2, v4, v0

    .line 641
    sput-object v4, Lcom/miui/maml/data/BaseFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 643
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/BaseFunctions$Fun;
    .registers 2

    .line 1
    const-class v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/miui/maml/data/BaseFunctions$Fun;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 3
    invoke-virtual {v0}, [Lcom/miui/maml/data/BaseFunctions$Fun;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 9
    return-object v0
.end method
