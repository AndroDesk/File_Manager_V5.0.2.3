.class synthetic Lcom/miui/maml/data/Expression$1;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$miui$maml$data$Expression$Ope:[I

.field public static final synthetic $SwitchMap$com$miui$maml$data$Expression$Tokenizer$TokenType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    invoke-static {}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->values()[Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Tokenizer$TokenType:[I

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_a
    sget-object v2, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    .line 19
    :catch_12
    const/4 v0, 0x2

    .line 20
    :try_start_13
    sget-object v2, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Tokenizer$TokenType:[I

    .line 22
    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 30
    :catch_1d
    const/4 v2, 0x3

    .line 31
    :try_start_1e
    sget-object v3, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Tokenizer$TokenType:[I

    .line 33
    sget-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 35
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v4

    .line 39
    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    .line 41
    :catch_28
    const/4 v3, 0x4

    .line 42
    :try_start_29
    sget-object v4, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Tokenizer$TokenType:[I

    .line 44
    sget-object v5, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 46
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 49
    move-result v5

    .line 50
    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    .line 52
    :catch_33
    const/4 v4, 0x5

    .line 53
    :try_start_34
    sget-object v5, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Tokenizer$TokenType:[I

    .line 55
    sget-object v6, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 57
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 60
    move-result v6

    .line 61
    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    .line 63
    :catch_3e
    const/4 v5, 0x6

    .line 64
    :try_start_3f
    sget-object v6, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Tokenizer$TokenType:[I

    .line 66
    sget-object v7, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 68
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 71
    move-result v7

    .line 72
    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    .line 74
    :catch_49
    const/4 v6, 0x7

    .line 75
    :try_start_4a
    sget-object v7, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Tokenizer$TokenType:[I

    .line 77
    sget-object v8, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 79
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 82
    move-result v8

    .line 83
    aput v6, v7, v8
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_54

    .line 85
    :catch_54
    const/16 v7, 0x8

    .line 87
    :try_start_56
    sget-object v8, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Tokenizer$TokenType:[I

    .line 89
    sget-object v9, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 91
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 94
    move-result v9

    .line 95
    aput v7, v8, v9
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_60

    .line 97
    :catch_60
    invoke-static {}, Lcom/miui/maml/data/Expression$Ope;->values()[Lcom/miui/maml/data/Expression$Ope;

    .line 100
    move-result-object v8

    .line 101
    array-length v8, v8

    .line 102
    new-array v8, v8, [I

    .line 104
    sput-object v8, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 106
    :try_start_69
    sget-object v9, Lcom/miui/maml/data/Expression$Ope;->MIN:Lcom/miui/maml/data/Expression$Ope;

    .line 108
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 111
    move-result v9

    .line 112
    aput v1, v8, v9
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_71} :catch_71

    .line 114
    :catch_71
    :try_start_71
    sget-object v1, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 116
    sget-object v8, Lcom/miui/maml/data/Expression$Ope;->NOT:Lcom/miui/maml/data/Expression$Ope;

    .line 118
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 121
    move-result v8

    .line 122
    aput v0, v1, v8
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7b} :catch_7b

    .line 124
    :catch_7b
    :try_start_7b
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 126
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->BIT_NOT:Lcom/miui/maml/data/Expression$Ope;

    .line 128
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 131
    move-result v1

    .line 132
    aput v2, v0, v1
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_85} :catch_85

    .line 134
    :catch_85
    :try_start_85
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 136
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->ADD:Lcom/miui/maml/data/Expression$Ope;

    .line 138
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 141
    move-result v1

    .line 142
    aput v3, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_8f} :catch_8f

    .line 144
    :catch_8f
    :try_start_8f
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 146
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->MUL:Lcom/miui/maml/data/Expression$Ope;

    .line 148
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 151
    move-result v1

    .line 152
    aput v4, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_99} :catch_99

    .line 154
    :catch_99
    :try_start_99
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 156
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->DIV:Lcom/miui/maml/data/Expression$Ope;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 161
    move-result v1

    .line 162
    aput v5, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_a3} :catch_a3

    .line 164
    :catch_a3
    :try_start_a3
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 166
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->MOD:Lcom/miui/maml/data/Expression$Ope;

    .line 168
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 171
    move-result v1

    .line 172
    aput v6, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_ad} :catch_ad

    .line 174
    :catch_ad
    :try_start_ad
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 176
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->BIT_AND:Lcom/miui/maml/data/Expression$Ope;

    .line 178
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 181
    move-result v1

    .line 182
    aput v7, v0, v1
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b7} :catch_b7

    .line 184
    :catch_b7
    :try_start_b7
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 186
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->BIT_OR:Lcom/miui/maml/data/Expression$Ope;

    .line 188
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 191
    move-result v1

    .line 192
    const/16 v2, 0x9

    .line 194
    aput v2, v0, v1
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_c3} :catch_c3

    .line 196
    :catch_c3
    :try_start_c3
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 198
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->BIT_XOR:Lcom/miui/maml/data/Expression$Ope;

    .line 200
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 203
    move-result v1

    .line 204
    const/16 v2, 0xa

    .line 206
    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3 .. :try_end_cf} :catch_cf

    .line 208
    :catch_cf
    :try_start_cf
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 210
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->BIT_LSHIFT:Lcom/miui/maml/data/Expression$Ope;

    .line 212
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 215
    move-result v1

    .line 216
    const/16 v2, 0xb

    .line 218
    aput v2, v0, v1
    :try_end_db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_db} :catch_db

    .line 220
    :catch_db
    :try_start_db
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 222
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->BIT_RSHIFT:Lcom/miui/maml/data/Expression$Ope;

    .line 224
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 227
    move-result v1

    .line 228
    const/16 v2, 0xc

    .line 230
    aput v2, v0, v1
    :try_end_e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_db .. :try_end_e7} :catch_e7

    .line 232
    :catch_e7
    :try_start_e7
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 234
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->EQ:Lcom/miui/maml/data/Expression$Ope;

    .line 236
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 239
    move-result v1

    .line 240
    const/16 v2, 0xd

    .line 242
    aput v2, v0, v1
    :try_end_f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e7 .. :try_end_f3} :catch_f3

    .line 244
    :catch_f3
    :try_start_f3
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 246
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->NEQ:Lcom/miui/maml/data/Expression$Ope;

    .line 248
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 251
    move-result v1

    .line 252
    const/16 v2, 0xe

    .line 254
    aput v2, v0, v1
    :try_end_ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_ff} :catch_ff

    .line 256
    :catch_ff
    :try_start_ff
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 258
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->AND:Lcom/miui/maml/data/Expression$Ope;

    .line 260
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 263
    move-result v1

    .line 264
    const/16 v2, 0xf

    .line 266
    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ff .. :try_end_10b} :catch_10b

    .line 268
    :catch_10b
    :try_start_10b
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 270
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->OR:Lcom/miui/maml/data/Expression$Ope;

    .line 272
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 275
    move-result v1

    .line 276
    const/16 v2, 0x10

    .line 278
    aput v2, v0, v1
    :try_end_117
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_117} :catch_117

    .line 280
    :catch_117
    :try_start_117
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 282
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->GT:Lcom/miui/maml/data/Expression$Ope;

    .line 284
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 287
    move-result v1

    .line 288
    const/16 v2, 0x11

    .line 290
    aput v2, v0, v1
    :try_end_123
    .catch Ljava/lang/NoSuchFieldError; {:try_start_117 .. :try_end_123} :catch_123

    .line 292
    :catch_123
    :try_start_123
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 294
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->GE:Lcom/miui/maml/data/Expression$Ope;

    .line 296
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 299
    move-result v1

    .line 300
    const/16 v2, 0x12

    .line 302
    aput v2, v0, v1
    :try_end_12f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_123 .. :try_end_12f} :catch_12f

    .line 304
    :catch_12f
    :try_start_12f
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 306
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->LT:Lcom/miui/maml/data/Expression$Ope;

    .line 308
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 311
    move-result v1

    .line 312
    const/16 v2, 0x13

    .line 314
    aput v2, v0, v1
    :try_end_13b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12f .. :try_end_13b} :catch_13b

    .line 316
    :catch_13b
    :try_start_13b
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 318
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->LE:Lcom/miui/maml/data/Expression$Ope;

    .line 320
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 323
    move-result v1

    .line 324
    const/16 v2, 0x14

    .line 326
    aput v2, v0, v1
    :try_end_147
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13b .. :try_end_147} :catch_147

    .line 328
    :catch_147
    return-void
.end method
