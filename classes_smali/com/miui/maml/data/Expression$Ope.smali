.class final enum Lcom/miui/maml/data/Expression$Ope;
.super Ljava/lang/Enum;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/data/Expression$Ope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/Expression$Ope;

.field public static final enum ADD:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum AND:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_AND:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_LSHIFT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_NOT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_OR:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_RSHIFT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_XOR:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum DIV:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum EQ:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum GE:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum GT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum INVALID:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum LE:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum LT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum MIN:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum MOD:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum MUL:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum NEQ:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum NOT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum OR:Lcom/miui/maml/data/Expression$Ope;


# direct methods
.method public static constructor <clinit>()V
    .registers 24

    .line 1
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    .line 3
    const-string v1, "ADD"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->ADD:Lcom/miui/maml/data/Expression$Ope;

    .line 11
    new-instance v1, Lcom/miui/maml/data/Expression$Ope;

    .line 13
    const-string v3, "MIN"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/miui/maml/data/Expression$Ope;->MIN:Lcom/miui/maml/data/Expression$Ope;

    .line 21
    new-instance v3, Lcom/miui/maml/data/Expression$Ope;

    .line 23
    const-string v5, "MUL"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/miui/maml/data/Expression$Ope;->MUL:Lcom/miui/maml/data/Expression$Ope;

    .line 31
    new-instance v5, Lcom/miui/maml/data/Expression$Ope;

    .line 33
    const-string v7, "DIV"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/miui/maml/data/Expression$Ope;->DIV:Lcom/miui/maml/data/Expression$Ope;

    .line 41
    new-instance v7, Lcom/miui/maml/data/Expression$Ope;

    .line 43
    const-string v9, "MOD"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/miui/maml/data/Expression$Ope;->MOD:Lcom/miui/maml/data/Expression$Ope;

    .line 51
    new-instance v9, Lcom/miui/maml/data/Expression$Ope;

    .line 53
    const-string v11, "BIT_AND"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcom/miui/maml/data/Expression$Ope;->BIT_AND:Lcom/miui/maml/data/Expression$Ope;

    .line 61
    new-instance v11, Lcom/miui/maml/data/Expression$Ope;

    .line 63
    const-string v13, "BIT_OR"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lcom/miui/maml/data/Expression$Ope;->BIT_OR:Lcom/miui/maml/data/Expression$Ope;

    .line 71
    new-instance v13, Lcom/miui/maml/data/Expression$Ope;

    .line 73
    const-string v15, "BIT_XOR"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lcom/miui/maml/data/Expression$Ope;->BIT_XOR:Lcom/miui/maml/data/Expression$Ope;

    .line 81
    new-instance v15, Lcom/miui/maml/data/Expression$Ope;

    .line 83
    const-string v14, "BIT_NOT"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lcom/miui/maml/data/Expression$Ope;->BIT_NOT:Lcom/miui/maml/data/Expression$Ope;

    .line 92
    new-instance v14, Lcom/miui/maml/data/Expression$Ope;

    .line 94
    const-string v12, "BIT_LSHIFT"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v14, Lcom/miui/maml/data/Expression$Ope;->BIT_LSHIFT:Lcom/miui/maml/data/Expression$Ope;

    .line 103
    new-instance v12, Lcom/miui/maml/data/Expression$Ope;

    .line 105
    const-string v10, "BIT_RSHIFT"

    .line 107
    const/16 v8, 0xa

    .line 109
    invoke-direct {v12, v10, v8}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 112
    sput-object v12, Lcom/miui/maml/data/Expression$Ope;->BIT_RSHIFT:Lcom/miui/maml/data/Expression$Ope;

    .line 114
    new-instance v10, Lcom/miui/maml/data/Expression$Ope;

    .line 116
    const-string v8, "NOT"

    .line 118
    const/16 v6, 0xb

    .line 120
    invoke-direct {v10, v8, v6}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 123
    sput-object v10, Lcom/miui/maml/data/Expression$Ope;->NOT:Lcom/miui/maml/data/Expression$Ope;

    .line 125
    new-instance v8, Lcom/miui/maml/data/Expression$Ope;

    .line 127
    const-string v6, "EQ"

    .line 129
    const/16 v4, 0xc

    .line 131
    invoke-direct {v8, v6, v4}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 134
    sput-object v8, Lcom/miui/maml/data/Expression$Ope;->EQ:Lcom/miui/maml/data/Expression$Ope;

    .line 136
    new-instance v6, Lcom/miui/maml/data/Expression$Ope;

    .line 138
    const-string v4, "NEQ"

    .line 140
    const/16 v2, 0xd

    .line 142
    invoke-direct {v6, v4, v2}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 145
    sput-object v6, Lcom/miui/maml/data/Expression$Ope;->NEQ:Lcom/miui/maml/data/Expression$Ope;

    .line 147
    new-instance v4, Lcom/miui/maml/data/Expression$Ope;

    .line 149
    const-string v2, "AND"

    .line 151
    move-object/from16 v17, v6

    .line 153
    const/16 v6, 0xe

    .line 155
    invoke-direct {v4, v2, v6}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 158
    sput-object v4, Lcom/miui/maml/data/Expression$Ope;->AND:Lcom/miui/maml/data/Expression$Ope;

    .line 160
    new-instance v2, Lcom/miui/maml/data/Expression$Ope;

    .line 162
    const-string v6, "OR"

    .line 164
    move-object/from16 v18, v4

    .line 166
    const/16 v4, 0xf

    .line 168
    invoke-direct {v2, v6, v4}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 171
    sput-object v2, Lcom/miui/maml/data/Expression$Ope;->OR:Lcom/miui/maml/data/Expression$Ope;

    .line 173
    new-instance v6, Lcom/miui/maml/data/Expression$Ope;

    .line 175
    const-string v4, "GT"

    .line 177
    move-object/from16 v19, v2

    .line 179
    const/16 v2, 0x10

    .line 181
    invoke-direct {v6, v4, v2}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 184
    sput-object v6, Lcom/miui/maml/data/Expression$Ope;->GT:Lcom/miui/maml/data/Expression$Ope;

    .line 186
    new-instance v4, Lcom/miui/maml/data/Expression$Ope;

    .line 188
    const-string v2, "GE"

    .line 190
    move-object/from16 v20, v6

    .line 192
    const/16 v6, 0x11

    .line 194
    invoke-direct {v4, v2, v6}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 197
    sput-object v4, Lcom/miui/maml/data/Expression$Ope;->GE:Lcom/miui/maml/data/Expression$Ope;

    .line 199
    new-instance v2, Lcom/miui/maml/data/Expression$Ope;

    .line 201
    const-string v6, "LT"

    .line 203
    move-object/from16 v21, v4

    .line 205
    const/16 v4, 0x12

    .line 207
    invoke-direct {v2, v6, v4}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 210
    sput-object v2, Lcom/miui/maml/data/Expression$Ope;->LT:Lcom/miui/maml/data/Expression$Ope;

    .line 212
    new-instance v6, Lcom/miui/maml/data/Expression$Ope;

    .line 214
    const-string v4, "LE"

    .line 216
    move-object/from16 v22, v2

    .line 218
    const/16 v2, 0x13

    .line 220
    invoke-direct {v6, v4, v2}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 223
    sput-object v6, Lcom/miui/maml/data/Expression$Ope;->LE:Lcom/miui/maml/data/Expression$Ope;

    .line 225
    new-instance v4, Lcom/miui/maml/data/Expression$Ope;

    .line 227
    const-string v2, "INVALID"

    .line 229
    move-object/from16 v23, v6

    .line 231
    const/16 v6, 0x14

    .line 233
    invoke-direct {v4, v2, v6}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    .line 236
    sput-object v4, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    .line 238
    const/16 v2, 0x15

    .line 240
    new-array v2, v2, [Lcom/miui/maml/data/Expression$Ope;

    .line 242
    const/16 v16, 0x0

    .line 244
    aput-object v0, v2, v16

    .line 246
    const/4 v0, 0x1

    .line 247
    aput-object v1, v2, v0

    .line 249
    const/4 v0, 0x2

    .line 250
    aput-object v3, v2, v0

    .line 252
    const/4 v0, 0x3

    .line 253
    aput-object v5, v2, v0

    .line 255
    const/4 v0, 0x4

    .line 256
    aput-object v7, v2, v0

    .line 258
    const/4 v0, 0x5

    .line 259
    aput-object v9, v2, v0

    .line 261
    const/4 v0, 0x6

    .line 262
    aput-object v11, v2, v0

    .line 264
    const/4 v0, 0x7

    .line 265
    aput-object v13, v2, v0

    .line 267
    const/16 v0, 0x8

    .line 269
    aput-object v15, v2, v0

    .line 271
    const/16 v0, 0x9

    .line 273
    aput-object v14, v2, v0

    .line 275
    const/16 v0, 0xa

    .line 277
    aput-object v12, v2, v0

    .line 279
    const/16 v0, 0xb

    .line 281
    aput-object v10, v2, v0

    .line 283
    const/16 v0, 0xc

    .line 285
    aput-object v8, v2, v0

    .line 287
    const/16 v0, 0xd

    .line 289
    aput-object v17, v2, v0

    .line 291
    const/16 v0, 0xe

    .line 293
    aput-object v18, v2, v0

    .line 295
    const/16 v0, 0xf

    .line 297
    aput-object v19, v2, v0

    .line 299
    const/16 v0, 0x10

    .line 301
    aput-object v20, v2, v0

    .line 303
    const/16 v0, 0x11

    .line 305
    aput-object v21, v2, v0

    .line 307
    const/16 v0, 0x12

    .line 309
    aput-object v22, v2, v0

    .line 311
    const/16 v0, 0x13

    .line 313
    aput-object v23, v2, v0

    .line 315
    aput-object v4, v2, v6

    .line 317
    sput-object v2, Lcom/miui/maml/data/Expression$Ope;->$VALUES:[Lcom/miui/maml/data/Expression$Ope;

    .line 319
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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/Expression$Ope;
    .registers 2

    .line 1
    const-class v0, Lcom/miui/maml/data/Expression$Ope;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/data/Expression$Ope;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/miui/maml/data/Expression$Ope;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->$VALUES:[Lcom/miui/maml/data/Expression$Ope;

    .line 3
    invoke-virtual {v0}, [Lcom/miui/maml/data/Expression$Ope;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/data/Expression$Ope;

    .line 9
    return-object v0
.end method
