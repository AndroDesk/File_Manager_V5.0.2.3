.class public final enum Lcom/junrar/unpack/vm/VMCommands;
.super Ljava/lang/Enum;
.source "VMCommands.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/junrar/unpack/vm/VMCommands;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADC:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADDB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_ADDD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_AND:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CALL:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CMP:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CMPB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_CMPD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DEC:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DECB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DECD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_DIV:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_INC:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_INCB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_INCD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JA:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JAE:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JBE:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JMP:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JNS:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JNZ:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JS:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_JZ:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOV:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVSX:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MOVZX:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_MUL:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NEG:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NEGB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NEGD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_NOT:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_OR:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_POP:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_POPA:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_POPF:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PRINT:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PUSH:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PUSHA:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_PUSHF:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_RET:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SAR:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SBB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SHL:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SHR:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_STANDARD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SUB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SUBB:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_SUBD:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_TEST:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_XCHG:Lcom/junrar/unpack/vm/VMCommands;

.field public static final enum VM_XOR:Lcom/junrar/unpack/vm/VMCommands;


# instance fields
.field private vmCommand:I


# direct methods
.method public static constructor <clinit>()V
    .registers 58

    .line 1
    new-instance v0, Lcom/junrar/unpack/vm/VMCommands;

    .line 3
    const-string v1, "VM_MOV"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_MOV:Lcom/junrar/unpack/vm/VMCommands;

    .line 11
    new-instance v1, Lcom/junrar/unpack/vm/VMCommands;

    .line 13
    const-string v3, "VM_CMP"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v1, Lcom/junrar/unpack/vm/VMCommands;->VM_CMP:Lcom/junrar/unpack/vm/VMCommands;

    .line 21
    new-instance v3, Lcom/junrar/unpack/vm/VMCommands;

    .line 23
    const-string v5, "VM_ADD"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v3, Lcom/junrar/unpack/vm/VMCommands;->VM_ADD:Lcom/junrar/unpack/vm/VMCommands;

    .line 31
    new-instance v5, Lcom/junrar/unpack/vm/VMCommands;

    .line 33
    const-string v7, "VM_SUB"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v5, Lcom/junrar/unpack/vm/VMCommands;->VM_SUB:Lcom/junrar/unpack/vm/VMCommands;

    .line 41
    new-instance v7, Lcom/junrar/unpack/vm/VMCommands;

    .line 43
    const-string v9, "VM_JZ"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v7, Lcom/junrar/unpack/vm/VMCommands;->VM_JZ:Lcom/junrar/unpack/vm/VMCommands;

    .line 51
    new-instance v9, Lcom/junrar/unpack/vm/VMCommands;

    .line 53
    const-string v11, "VM_JNZ"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 59
    sput-object v9, Lcom/junrar/unpack/vm/VMCommands;->VM_JNZ:Lcom/junrar/unpack/vm/VMCommands;

    .line 61
    new-instance v11, Lcom/junrar/unpack/vm/VMCommands;

    .line 63
    const-string v13, "VM_INC"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 69
    sput-object v11, Lcom/junrar/unpack/vm/VMCommands;->VM_INC:Lcom/junrar/unpack/vm/VMCommands;

    .line 71
    new-instance v13, Lcom/junrar/unpack/vm/VMCommands;

    .line 73
    const-string v15, "VM_DEC"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14, v14}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 79
    sput-object v13, Lcom/junrar/unpack/vm/VMCommands;->VM_DEC:Lcom/junrar/unpack/vm/VMCommands;

    .line 81
    new-instance v15, Lcom/junrar/unpack/vm/VMCommands;

    .line 83
    const-string v14, "VM_JMP"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12, v12}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 90
    sput-object v15, Lcom/junrar/unpack/vm/VMCommands;->VM_JMP:Lcom/junrar/unpack/vm/VMCommands;

    .line 92
    new-instance v14, Lcom/junrar/unpack/vm/VMCommands;

    .line 94
    const-string v12, "VM_XOR"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10, v10}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 101
    sput-object v14, Lcom/junrar/unpack/vm/VMCommands;->VM_XOR:Lcom/junrar/unpack/vm/VMCommands;

    .line 103
    new-instance v12, Lcom/junrar/unpack/vm/VMCommands;

    .line 105
    const-string v10, "VM_AND"

    .line 107
    const/16 v8, 0xa

    .line 109
    invoke-direct {v12, v10, v8, v8}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 112
    sput-object v12, Lcom/junrar/unpack/vm/VMCommands;->VM_AND:Lcom/junrar/unpack/vm/VMCommands;

    .line 114
    new-instance v10, Lcom/junrar/unpack/vm/VMCommands;

    .line 116
    const-string v8, "VM_OR"

    .line 118
    const/16 v6, 0xb

    .line 120
    invoke-direct {v10, v8, v6, v6}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 123
    sput-object v10, Lcom/junrar/unpack/vm/VMCommands;->VM_OR:Lcom/junrar/unpack/vm/VMCommands;

    .line 125
    new-instance v8, Lcom/junrar/unpack/vm/VMCommands;

    .line 127
    const-string v6, "VM_TEST"

    .line 129
    const/16 v4, 0xc

    .line 131
    invoke-direct {v8, v6, v4, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 134
    sput-object v8, Lcom/junrar/unpack/vm/VMCommands;->VM_TEST:Lcom/junrar/unpack/vm/VMCommands;

    .line 136
    new-instance v6, Lcom/junrar/unpack/vm/VMCommands;

    .line 138
    const-string v4, "VM_JS"

    .line 140
    const/16 v2, 0xd

    .line 142
    invoke-direct {v6, v4, v2, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 145
    sput-object v6, Lcom/junrar/unpack/vm/VMCommands;->VM_JS:Lcom/junrar/unpack/vm/VMCommands;

    .line 147
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 149
    const-string v2, "VM_JNS"

    .line 151
    move-object/from16 v16, v6

    .line 153
    const/16 v6, 0xe

    .line 155
    invoke-direct {v4, v2, v6, v6}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 158
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_JNS:Lcom/junrar/unpack/vm/VMCommands;

    .line 160
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 162
    const-string v6, "VM_JB"

    .line 164
    move-object/from16 v17, v4

    .line 166
    const/16 v4, 0xf

    .line 168
    invoke-direct {v2, v6, v4, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 171
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_JB:Lcom/junrar/unpack/vm/VMCommands;

    .line 173
    new-instance v6, Lcom/junrar/unpack/vm/VMCommands;

    .line 175
    const-string v4, "VM_JBE"

    .line 177
    move-object/from16 v18, v2

    .line 179
    const/16 v2, 0x10

    .line 181
    invoke-direct {v6, v4, v2, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 184
    sput-object v6, Lcom/junrar/unpack/vm/VMCommands;->VM_JBE:Lcom/junrar/unpack/vm/VMCommands;

    .line 186
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 188
    const-string v2, "VM_JA"

    .line 190
    move-object/from16 v19, v6

    .line 192
    const/16 v6, 0x11

    .line 194
    invoke-direct {v4, v2, v6, v6}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 197
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_JA:Lcom/junrar/unpack/vm/VMCommands;

    .line 199
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 201
    const-string v6, "VM_JAE"

    .line 203
    move-object/from16 v20, v4

    .line 205
    const/16 v4, 0x12

    .line 207
    invoke-direct {v2, v6, v4, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 210
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_JAE:Lcom/junrar/unpack/vm/VMCommands;

    .line 212
    new-instance v6, Lcom/junrar/unpack/vm/VMCommands;

    .line 214
    const-string v4, "VM_PUSH"

    .line 216
    move-object/from16 v21, v2

    .line 218
    const/16 v2, 0x13

    .line 220
    invoke-direct {v6, v4, v2, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 223
    sput-object v6, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSH:Lcom/junrar/unpack/vm/VMCommands;

    .line 225
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 227
    const-string v2, "VM_POP"

    .line 229
    move-object/from16 v22, v6

    .line 231
    const/16 v6, 0x14

    .line 233
    invoke-direct {v4, v2, v6, v6}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 236
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_POP:Lcom/junrar/unpack/vm/VMCommands;

    .line 238
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 240
    const-string v6, "VM_CALL"

    .line 242
    move-object/from16 v23, v4

    .line 244
    const/16 v4, 0x15

    .line 246
    invoke-direct {v2, v6, v4, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 249
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_CALL:Lcom/junrar/unpack/vm/VMCommands;

    .line 251
    new-instance v6, Lcom/junrar/unpack/vm/VMCommands;

    .line 253
    const-string v4, "VM_RET"

    .line 255
    move-object/from16 v24, v2

    .line 257
    const/16 v2, 0x16

    .line 259
    move-object/from16 v25, v8

    .line 261
    const/16 v8, 0x16

    .line 263
    invoke-direct {v6, v4, v2, v8}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 266
    sput-object v6, Lcom/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/junrar/unpack/vm/VMCommands;

    .line 268
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 270
    const-string v4, "VM_NOT"

    .line 272
    const/16 v8, 0x17

    .line 274
    move-object/from16 v26, v6

    .line 276
    const/16 v6, 0x17

    .line 278
    invoke-direct {v2, v4, v8, v6}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 281
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_NOT:Lcom/junrar/unpack/vm/VMCommands;

    .line 283
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 285
    const-string v6, "VM_SHL"

    .line 287
    const/16 v8, 0x18

    .line 289
    move-object/from16 v27, v2

    .line 291
    const/16 v2, 0x18

    .line 293
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 296
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_SHL:Lcom/junrar/unpack/vm/VMCommands;

    .line 298
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 300
    const-string v6, "VM_SHR"

    .line 302
    const/16 v8, 0x19

    .line 304
    move-object/from16 v28, v4

    .line 306
    const/16 v4, 0x19

    .line 308
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 311
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_SHR:Lcom/junrar/unpack/vm/VMCommands;

    .line 313
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 315
    const-string v6, "VM_SAR"

    .line 317
    const/16 v8, 0x1a

    .line 319
    move-object/from16 v29, v2

    .line 321
    const/16 v2, 0x1a

    .line 323
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 326
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_SAR:Lcom/junrar/unpack/vm/VMCommands;

    .line 328
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 330
    const-string v6, "VM_NEG"

    .line 332
    const/16 v8, 0x1b

    .line 334
    move-object/from16 v30, v4

    .line 336
    const/16 v4, 0x1b

    .line 338
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 341
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_NEG:Lcom/junrar/unpack/vm/VMCommands;

    .line 343
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 345
    const-string v6, "VM_PUSHA"

    .line 347
    const/16 v8, 0x1c

    .line 349
    move-object/from16 v31, v2

    .line 351
    const/16 v2, 0x1c

    .line 353
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 356
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSHA:Lcom/junrar/unpack/vm/VMCommands;

    .line 358
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 360
    const-string v6, "VM_POPA"

    .line 362
    const/16 v8, 0x1d

    .line 364
    move-object/from16 v32, v4

    .line 366
    const/16 v4, 0x1d

    .line 368
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 371
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_POPA:Lcom/junrar/unpack/vm/VMCommands;

    .line 373
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 375
    const-string v6, "VM_PUSHF"

    .line 377
    const/16 v8, 0x1e

    .line 379
    move-object/from16 v33, v2

    .line 381
    const/16 v2, 0x1e

    .line 383
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 386
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSHF:Lcom/junrar/unpack/vm/VMCommands;

    .line 388
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 390
    const-string v6, "VM_POPF"

    .line 392
    const/16 v8, 0x1f

    .line 394
    move-object/from16 v34, v4

    .line 396
    const/16 v4, 0x1f

    .line 398
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 401
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_POPF:Lcom/junrar/unpack/vm/VMCommands;

    .line 403
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 405
    const-string v6, "VM_MOVZX"

    .line 407
    const/16 v8, 0x20

    .line 409
    move-object/from16 v35, v2

    .line 411
    const/16 v2, 0x20

    .line 413
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 416
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVZX:Lcom/junrar/unpack/vm/VMCommands;

    .line 418
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 420
    const-string v6, "VM_MOVSX"

    .line 422
    const/16 v8, 0x21

    .line 424
    move-object/from16 v36, v4

    .line 426
    const/16 v4, 0x21

    .line 428
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 431
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVSX:Lcom/junrar/unpack/vm/VMCommands;

    .line 433
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 435
    const-string v6, "VM_XCHG"

    .line 437
    const/16 v8, 0x22

    .line 439
    move-object/from16 v37, v2

    .line 441
    const/16 v2, 0x22

    .line 443
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 446
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_XCHG:Lcom/junrar/unpack/vm/VMCommands;

    .line 448
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 450
    const-string v6, "VM_MUL"

    .line 452
    const/16 v8, 0x23

    .line 454
    move-object/from16 v38, v4

    .line 456
    const/16 v4, 0x23

    .line 458
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 461
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_MUL:Lcom/junrar/unpack/vm/VMCommands;

    .line 463
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 465
    const-string v6, "VM_DIV"

    .line 467
    const/16 v8, 0x24

    .line 469
    move-object/from16 v39, v2

    .line 471
    const/16 v2, 0x24

    .line 473
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 476
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_DIV:Lcom/junrar/unpack/vm/VMCommands;

    .line 478
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 480
    const-string v6, "VM_ADC"

    .line 482
    const/16 v8, 0x25

    .line 484
    move-object/from16 v40, v4

    .line 486
    const/16 v4, 0x25

    .line 488
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 491
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_ADC:Lcom/junrar/unpack/vm/VMCommands;

    .line 493
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 495
    const-string v6, "VM_SBB"

    .line 497
    const/16 v8, 0x26

    .line 499
    move-object/from16 v41, v2

    .line 501
    const/16 v2, 0x26

    .line 503
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 506
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_SBB:Lcom/junrar/unpack/vm/VMCommands;

    .line 508
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 510
    const-string v6, "VM_PRINT"

    .line 512
    const/16 v8, 0x27

    .line 514
    move-object/from16 v42, v4

    .line 516
    const/16 v4, 0x27

    .line 518
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 521
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_PRINT:Lcom/junrar/unpack/vm/VMCommands;

    .line 523
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 525
    const-string v6, "VM_MOVB"

    .line 527
    const/16 v8, 0x28

    .line 529
    move-object/from16 v43, v2

    .line 531
    const/16 v2, 0x28

    .line 533
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 536
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/junrar/unpack/vm/VMCommands;

    .line 538
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 540
    const-string v6, "VM_MOVD"

    .line 542
    const/16 v8, 0x29

    .line 544
    move-object/from16 v44, v4

    .line 546
    const/16 v4, 0x29

    .line 548
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 551
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/junrar/unpack/vm/VMCommands;

    .line 553
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 555
    const-string v6, "VM_CMPB"

    .line 557
    const/16 v8, 0x2a

    .line 559
    move-object/from16 v45, v2

    .line 561
    const/16 v2, 0x2a

    .line 563
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 566
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/junrar/unpack/vm/VMCommands;

    .line 568
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 570
    const-string v6, "VM_CMPD"

    .line 572
    const/16 v8, 0x2b

    .line 574
    move-object/from16 v46, v4

    .line 576
    const/16 v4, 0x2b

    .line 578
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 581
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/junrar/unpack/vm/VMCommands;

    .line 583
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 585
    const-string v6, "VM_ADDB"

    .line 587
    const/16 v8, 0x2c

    .line 589
    move-object/from16 v47, v2

    .line 591
    const/16 v2, 0x2c

    .line 593
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 596
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/junrar/unpack/vm/VMCommands;

    .line 598
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 600
    const-string v6, "VM_ADDD"

    .line 602
    const/16 v8, 0x2d

    .line 604
    move-object/from16 v48, v4

    .line 606
    const/16 v4, 0x2d

    .line 608
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 611
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/junrar/unpack/vm/VMCommands;

    .line 613
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 615
    const-string v6, "VM_SUBB"

    .line 617
    const/16 v8, 0x2e

    .line 619
    move-object/from16 v49, v2

    .line 621
    const/16 v2, 0x2e

    .line 623
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 626
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/junrar/unpack/vm/VMCommands;

    .line 628
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 630
    const-string v6, "VM_SUBD"

    .line 632
    const/16 v8, 0x2f

    .line 634
    move-object/from16 v50, v4

    .line 636
    const/16 v4, 0x2f

    .line 638
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 641
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/junrar/unpack/vm/VMCommands;

    .line 643
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 645
    const-string v6, "VM_INCB"

    .line 647
    const/16 v8, 0x30

    .line 649
    move-object/from16 v51, v2

    .line 651
    const/16 v2, 0x30

    .line 653
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 656
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/junrar/unpack/vm/VMCommands;

    .line 658
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 660
    const-string v6, "VM_INCD"

    .line 662
    const/16 v8, 0x31

    .line 664
    move-object/from16 v52, v4

    .line 666
    const/16 v4, 0x31

    .line 668
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 671
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/junrar/unpack/vm/VMCommands;

    .line 673
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 675
    const-string v6, "VM_DECB"

    .line 677
    const/16 v8, 0x32

    .line 679
    move-object/from16 v53, v2

    .line 681
    const/16 v2, 0x32

    .line 683
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 686
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/junrar/unpack/vm/VMCommands;

    .line 688
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 690
    const-string v6, "VM_DECD"

    .line 692
    const/16 v8, 0x33

    .line 694
    move-object/from16 v54, v4

    .line 696
    const/16 v4, 0x33

    .line 698
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 701
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/junrar/unpack/vm/VMCommands;

    .line 703
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 705
    const-string v6, "VM_NEGB"

    .line 707
    const/16 v8, 0x34

    .line 709
    move-object/from16 v55, v2

    .line 711
    const/16 v2, 0x34

    .line 713
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 716
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/junrar/unpack/vm/VMCommands;

    .line 718
    new-instance v2, Lcom/junrar/unpack/vm/VMCommands;

    .line 720
    const-string v6, "VM_NEGD"

    .line 722
    const/16 v8, 0x35

    .line 724
    move-object/from16 v56, v4

    .line 726
    const/16 v4, 0x35

    .line 728
    invoke-direct {v2, v6, v8, v4}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 731
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/junrar/unpack/vm/VMCommands;

    .line 733
    new-instance v4, Lcom/junrar/unpack/vm/VMCommands;

    .line 735
    const-string v6, "VM_STANDARD"

    .line 737
    const/16 v8, 0x36

    .line 739
    move-object/from16 v57, v2

    .line 741
    const/16 v2, 0x36

    .line 743
    invoke-direct {v4, v6, v8, v2}, Lcom/junrar/unpack/vm/VMCommands;-><init>(Ljava/lang/String;II)V

    .line 746
    sput-object v4, Lcom/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/junrar/unpack/vm/VMCommands;

    .line 748
    const/16 v2, 0x37

    .line 750
    new-array v2, v2, [Lcom/junrar/unpack/vm/VMCommands;

    .line 752
    const/4 v6, 0x0

    .line 753
    aput-object v0, v2, v6

    .line 755
    const/4 v0, 0x1

    .line 756
    aput-object v1, v2, v0

    .line 758
    const/4 v0, 0x2

    .line 759
    aput-object v3, v2, v0

    .line 761
    const/4 v0, 0x3

    .line 762
    aput-object v5, v2, v0

    .line 764
    const/4 v0, 0x4

    .line 765
    aput-object v7, v2, v0

    .line 767
    const/4 v0, 0x5

    .line 768
    aput-object v9, v2, v0

    .line 770
    const/4 v0, 0x6

    .line 771
    aput-object v11, v2, v0

    .line 773
    const/4 v0, 0x7

    .line 774
    aput-object v13, v2, v0

    .line 776
    const/16 v0, 0x8

    .line 778
    aput-object v15, v2, v0

    .line 780
    const/16 v0, 0x9

    .line 782
    aput-object v14, v2, v0

    .line 784
    const/16 v0, 0xa

    .line 786
    aput-object v12, v2, v0

    .line 788
    const/16 v0, 0xb

    .line 790
    aput-object v10, v2, v0

    .line 792
    const/16 v0, 0xc

    .line 794
    aput-object v25, v2, v0

    .line 796
    const/16 v0, 0xd

    .line 798
    aput-object v16, v2, v0

    .line 800
    const/16 v0, 0xe

    .line 802
    aput-object v17, v2, v0

    .line 804
    const/16 v0, 0xf

    .line 806
    aput-object v18, v2, v0

    .line 808
    const/16 v0, 0x10

    .line 810
    aput-object v19, v2, v0

    .line 812
    const/16 v0, 0x11

    .line 814
    aput-object v20, v2, v0

    .line 816
    const/16 v0, 0x12

    .line 818
    aput-object v21, v2, v0

    .line 820
    const/16 v0, 0x13

    .line 822
    aput-object v22, v2, v0

    .line 824
    const/16 v0, 0x14

    .line 826
    aput-object v23, v2, v0

    .line 828
    const/16 v0, 0x15

    .line 830
    aput-object v24, v2, v0

    .line 832
    const/16 v0, 0x16

    .line 834
    aput-object v26, v2, v0

    .line 836
    const/16 v0, 0x17

    .line 838
    aput-object v27, v2, v0

    .line 840
    const/16 v0, 0x18

    .line 842
    aput-object v28, v2, v0

    .line 844
    const/16 v0, 0x19

    .line 846
    aput-object v29, v2, v0

    .line 848
    const/16 v0, 0x1a

    .line 850
    aput-object v30, v2, v0

    .line 852
    const/16 v0, 0x1b

    .line 854
    aput-object v31, v2, v0

    .line 856
    const/16 v0, 0x1c

    .line 858
    aput-object v32, v2, v0

    .line 860
    const/16 v0, 0x1d

    .line 862
    aput-object v33, v2, v0

    .line 864
    const/16 v0, 0x1e

    .line 866
    aput-object v34, v2, v0

    .line 868
    const/16 v0, 0x1f

    .line 870
    aput-object v35, v2, v0

    .line 872
    const/16 v0, 0x20

    .line 874
    aput-object v36, v2, v0

    .line 876
    const/16 v0, 0x21

    .line 878
    aput-object v37, v2, v0

    .line 880
    const/16 v0, 0x22

    .line 882
    aput-object v38, v2, v0

    .line 884
    const/16 v0, 0x23

    .line 886
    aput-object v39, v2, v0

    .line 888
    const/16 v0, 0x24

    .line 890
    aput-object v40, v2, v0

    .line 892
    const/16 v0, 0x25

    .line 894
    aput-object v41, v2, v0

    .line 896
    const/16 v0, 0x26

    .line 898
    aput-object v42, v2, v0

    .line 900
    const/16 v0, 0x27

    .line 902
    aput-object v43, v2, v0

    .line 904
    const/16 v0, 0x28

    .line 906
    aput-object v44, v2, v0

    .line 908
    const/16 v0, 0x29

    .line 910
    aput-object v45, v2, v0

    .line 912
    const/16 v0, 0x2a

    .line 914
    aput-object v46, v2, v0

    .line 916
    const/16 v0, 0x2b

    .line 918
    aput-object v47, v2, v0

    .line 920
    const/16 v0, 0x2c

    .line 922
    aput-object v48, v2, v0

    .line 924
    const/16 v0, 0x2d

    .line 926
    aput-object v49, v2, v0

    .line 928
    const/16 v0, 0x2e

    .line 930
    aput-object v50, v2, v0

    .line 932
    const/16 v0, 0x2f

    .line 934
    aput-object v51, v2, v0

    .line 936
    const/16 v0, 0x30

    .line 938
    aput-object v52, v2, v0

    .line 940
    const/16 v0, 0x31

    .line 942
    aput-object v53, v2, v0

    .line 944
    const/16 v0, 0x32

    .line 946
    aput-object v54, v2, v0

    .line 948
    const/16 v0, 0x33

    .line 950
    aput-object v55, v2, v0

    .line 952
    const/16 v0, 0x34

    .line 954
    aput-object v56, v2, v0

    .line 956
    const/16 v0, 0x35

    .line 958
    aput-object v57, v2, v0

    .line 960
    const/16 v0, 0x36

    .line 962
    aput-object v4, v2, v0

    .line 964
    sput-object v2, Lcom/junrar/unpack/vm/VMCommands;->$VALUES:[Lcom/junrar/unpack/vm/VMCommands;

    .line 966
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
    iput p3, p0, Lcom/junrar/unpack/vm/VMCommands;->vmCommand:I

    .line 6
    return-void
.end method

.method private equals(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/VMCommands;->vmCommand:I

    .line 3
    if-ne v0, p1, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    return p1
.end method

.method public static findVMCommand(I)Lcom/junrar/unpack/vm/VMCommands;
    .registers 3

    .line 1
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_MOV:Lcom/junrar/unpack/vm/VMCommands;

    .line 3
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 9
    return-object v0

    .line 10
    :cond_9
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_CMP:Lcom/junrar/unpack/vm/VMCommands;

    .line 12
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_12

    .line 18
    return-object v0

    .line 19
    :cond_12
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_ADD:Lcom/junrar/unpack/vm/VMCommands;

    .line 21
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1b

    .line 27
    return-object v0

    .line 28
    :cond_1b
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_SUB:Lcom/junrar/unpack/vm/VMCommands;

    .line 30
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_24

    .line 36
    return-object v0

    .line 37
    :cond_24
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JZ:Lcom/junrar/unpack/vm/VMCommands;

    .line 39
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2d

    .line 45
    return-object v0

    .line 46
    :cond_2d
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JNZ:Lcom/junrar/unpack/vm/VMCommands;

    .line 48
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_36

    .line 54
    return-object v0

    .line 55
    :cond_36
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_INC:Lcom/junrar/unpack/vm/VMCommands;

    .line 57
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3f

    .line 63
    return-object v0

    .line 64
    :cond_3f
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_DEC:Lcom/junrar/unpack/vm/VMCommands;

    .line 66
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_48

    .line 72
    return-object v0

    .line 73
    :cond_48
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JMP:Lcom/junrar/unpack/vm/VMCommands;

    .line 75
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_51

    .line 81
    return-object v0

    .line 82
    :cond_51
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_XOR:Lcom/junrar/unpack/vm/VMCommands;

    .line 84
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_5a

    .line 90
    return-object v0

    .line 91
    :cond_5a
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_AND:Lcom/junrar/unpack/vm/VMCommands;

    .line 93
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_63

    .line 99
    return-object v0

    .line 100
    :cond_63
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_OR:Lcom/junrar/unpack/vm/VMCommands;

    .line 102
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_6c

    .line 108
    return-object v0

    .line 109
    :cond_6c
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_TEST:Lcom/junrar/unpack/vm/VMCommands;

    .line 111
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_75

    .line 117
    return-object v0

    .line 118
    :cond_75
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JS:Lcom/junrar/unpack/vm/VMCommands;

    .line 120
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_7e

    .line 126
    return-object v0

    .line 127
    :cond_7e
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JNS:Lcom/junrar/unpack/vm/VMCommands;

    .line 129
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_87

    .line 135
    return-object v0

    .line 136
    :cond_87
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JB:Lcom/junrar/unpack/vm/VMCommands;

    .line 138
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_90

    .line 144
    return-object v0

    .line 145
    :cond_90
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JBE:Lcom/junrar/unpack/vm/VMCommands;

    .line 147
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_99

    .line 153
    return-object v0

    .line 154
    :cond_99
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JA:Lcom/junrar/unpack/vm/VMCommands;

    .line 156
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_a2

    .line 162
    return-object v0

    .line 163
    :cond_a2
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_JAE:Lcom/junrar/unpack/vm/VMCommands;

    .line 165
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_ab

    .line 171
    return-object v0

    .line 172
    :cond_ab
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSH:Lcom/junrar/unpack/vm/VMCommands;

    .line 174
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_b4

    .line 180
    return-object v0

    .line 181
    :cond_b4
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_POP:Lcom/junrar/unpack/vm/VMCommands;

    .line 183
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_bd

    .line 189
    return-object v0

    .line 190
    :cond_bd
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_CALL:Lcom/junrar/unpack/vm/VMCommands;

    .line 192
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_c6

    .line 198
    return-object v0

    .line 199
    :cond_c6
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_RET:Lcom/junrar/unpack/vm/VMCommands;

    .line 201
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_cf

    .line 207
    return-object v0

    .line 208
    :cond_cf
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_NOT:Lcom/junrar/unpack/vm/VMCommands;

    .line 210
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_d8

    .line 216
    return-object v0

    .line 217
    :cond_d8
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_SHL:Lcom/junrar/unpack/vm/VMCommands;

    .line 219
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_e1

    .line 225
    return-object v0

    .line 226
    :cond_e1
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_SHR:Lcom/junrar/unpack/vm/VMCommands;

    .line 228
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_ea

    .line 234
    return-object v0

    .line 235
    :cond_ea
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_SAR:Lcom/junrar/unpack/vm/VMCommands;

    .line 237
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_f3

    .line 243
    return-object v0

    .line 244
    :cond_f3
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_NEG:Lcom/junrar/unpack/vm/VMCommands;

    .line 246
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 249
    move-result v1

    .line 250
    if-eqz v1, :cond_fc

    .line 252
    return-object v0

    .line 253
    :cond_fc
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSHA:Lcom/junrar/unpack/vm/VMCommands;

    .line 255
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_105

    .line 261
    return-object v0

    .line 262
    :cond_105
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_POPA:Lcom/junrar/unpack/vm/VMCommands;

    .line 264
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_10e

    .line 270
    return-object v0

    .line 271
    :cond_10e
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_PUSHF:Lcom/junrar/unpack/vm/VMCommands;

    .line 273
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 276
    move-result v1

    .line 277
    if-eqz v1, :cond_117

    .line 279
    return-object v0

    .line 280
    :cond_117
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_POPF:Lcom/junrar/unpack/vm/VMCommands;

    .line 282
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_120

    .line 288
    return-object v0

    .line 289
    :cond_120
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVZX:Lcom/junrar/unpack/vm/VMCommands;

    .line 291
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_129

    .line 297
    return-object v0

    .line 298
    :cond_129
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVSX:Lcom/junrar/unpack/vm/VMCommands;

    .line 300
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_132

    .line 306
    return-object v0

    .line 307
    :cond_132
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_XCHG:Lcom/junrar/unpack/vm/VMCommands;

    .line 309
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 312
    move-result v1

    .line 313
    if-eqz v1, :cond_13b

    .line 315
    return-object v0

    .line 316
    :cond_13b
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_MUL:Lcom/junrar/unpack/vm/VMCommands;

    .line 318
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_144

    .line 324
    return-object v0

    .line 325
    :cond_144
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_DIV:Lcom/junrar/unpack/vm/VMCommands;

    .line 327
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_14d

    .line 333
    return-object v0

    .line 334
    :cond_14d
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_ADC:Lcom/junrar/unpack/vm/VMCommands;

    .line 336
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 339
    move-result v1

    .line 340
    if-eqz v1, :cond_156

    .line 342
    return-object v0

    .line 343
    :cond_156
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_SBB:Lcom/junrar/unpack/vm/VMCommands;

    .line 345
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_15f

    .line 351
    return-object v0

    .line 352
    :cond_15f
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_PRINT:Lcom/junrar/unpack/vm/VMCommands;

    .line 354
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_168

    .line 360
    return-object v0

    .line 361
    :cond_168
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVB:Lcom/junrar/unpack/vm/VMCommands;

    .line 363
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 366
    move-result v1

    .line 367
    if-eqz v1, :cond_171

    .line 369
    return-object v0

    .line 370
    :cond_171
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_MOVD:Lcom/junrar/unpack/vm/VMCommands;

    .line 372
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 375
    move-result v1

    .line 376
    if-eqz v1, :cond_17a

    .line 378
    return-object v0

    .line 379
    :cond_17a
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPB:Lcom/junrar/unpack/vm/VMCommands;

    .line 381
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_183

    .line 387
    return-object v0

    .line 388
    :cond_183
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_CMPD:Lcom/junrar/unpack/vm/VMCommands;

    .line 390
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 393
    move-result v1

    .line 394
    if-eqz v1, :cond_18c

    .line 396
    return-object v0

    .line 397
    :cond_18c
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDB:Lcom/junrar/unpack/vm/VMCommands;

    .line 399
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 402
    move-result v1

    .line 403
    if-eqz v1, :cond_195

    .line 405
    return-object v0

    .line 406
    :cond_195
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_ADDD:Lcom/junrar/unpack/vm/VMCommands;

    .line 408
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 411
    move-result v1

    .line 412
    if-eqz v1, :cond_19e

    .line 414
    return-object v0

    .line 415
    :cond_19e
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBB:Lcom/junrar/unpack/vm/VMCommands;

    .line 417
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 420
    move-result v1

    .line 421
    if-eqz v1, :cond_1a7

    .line 423
    return-object v0

    .line 424
    :cond_1a7
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_SUBD:Lcom/junrar/unpack/vm/VMCommands;

    .line 426
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 429
    move-result v1

    .line 430
    if-eqz v1, :cond_1b0

    .line 432
    return-object v0

    .line 433
    :cond_1b0
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_INCB:Lcom/junrar/unpack/vm/VMCommands;

    .line 435
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 438
    move-result v1

    .line 439
    if-eqz v1, :cond_1b9

    .line 441
    return-object v0

    .line 442
    :cond_1b9
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_INCD:Lcom/junrar/unpack/vm/VMCommands;

    .line 444
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 447
    move-result v1

    .line 448
    if-eqz v1, :cond_1c2

    .line 450
    return-object v0

    .line 451
    :cond_1c2
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_DECB:Lcom/junrar/unpack/vm/VMCommands;

    .line 453
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 456
    move-result v1

    .line 457
    if-eqz v1, :cond_1cb

    .line 459
    return-object v0

    .line 460
    :cond_1cb
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_DECD:Lcom/junrar/unpack/vm/VMCommands;

    .line 462
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 465
    move-result v1

    .line 466
    if-eqz v1, :cond_1d4

    .line 468
    return-object v0

    .line 469
    :cond_1d4
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGB:Lcom/junrar/unpack/vm/VMCommands;

    .line 471
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 474
    move-result v1

    .line 475
    if-eqz v1, :cond_1dd

    .line 477
    return-object v0

    .line 478
    :cond_1dd
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_NEGD:Lcom/junrar/unpack/vm/VMCommands;

    .line 480
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 483
    move-result v1

    .line 484
    if-eqz v1, :cond_1e6

    .line 486
    return-object v0

    .line 487
    :cond_1e6
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->VM_STANDARD:Lcom/junrar/unpack/vm/VMCommands;

    .line 489
    invoke-direct {v0, p0}, Lcom/junrar/unpack/vm/VMCommands;->equals(I)Z

    .line 492
    move-result p0

    .line 493
    if-eqz p0, :cond_1ef

    .line 495
    return-object v0

    .line 496
    :cond_1ef
    const/4 p0, 0x0

    .line 497
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/unpack/vm/VMCommands;
    .registers 2

    .line 1
    const-class v0, Lcom/junrar/unpack/vm/VMCommands;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/junrar/unpack/vm/VMCommands;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/junrar/unpack/vm/VMCommands;
    .registers 1

    .line 1
    sget-object v0, Lcom/junrar/unpack/vm/VMCommands;->$VALUES:[Lcom/junrar/unpack/vm/VMCommands;

    .line 3
    invoke-virtual {v0}, [Lcom/junrar/unpack/vm/VMCommands;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/junrar/unpack/vm/VMCommands;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getVMCommand()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/VMCommands;->vmCommand:I

    .line 3
    return v0
.end method
