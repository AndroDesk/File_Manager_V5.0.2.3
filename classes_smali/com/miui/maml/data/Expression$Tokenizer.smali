.class Lcom/miui/maml/data/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/Expression$Tokenizer$Token;,
        Lcom/miui/maml/data/Expression$Tokenizer$TokenType;
    }
.end annotation


# static fields
.field private static final BRACKET_MODE_NONE:I = 0x0

.field private static final BRACKET_MODE_ROUND:I = 0x1

.field private static final BRACKET_MODE_SQUARE:I = 0x2


# instance fields
.field private mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    .line 6
    invoke-direct {v0}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    .line 11
    iput-object p1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$Tokenizer;->reset()V

    .line 16
    return-void
.end method


# virtual methods
.method public getToken()Lcom/miui/maml/data/Expression$Tokenizer$Token;
    .registers 16

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    move v5, v4

    .line 14
    move v6, v5

    .line 15
    move v7, v6

    .line 16
    move v8, v7

    .line 17
    :goto_10
    const-string v9, "Expression"

    .line 19
    if-ge v2, v1, :cond_187

    .line 21
    iget-object v10, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 23
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    .line 26
    move-result v10

    .line 27
    const/16 v11, 0x5b

    .line 29
    const/16 v12, 0x28

    .line 31
    const/4 v13, 0x1

    .line 32
    if-nez v6, :cond_14c

    .line 34
    const/16 v14, 0x23

    .line 36
    if-eq v10, v14, :cond_112

    .line 38
    const/16 v14, 0x40

    .line 40
    if-ne v10, v14, :cond_2b

    .line 42
    goto/16 :goto_112

    .line 44
    :cond_2b
    const/16 v9, 0x27

    .line 46
    if-ne v10, v9, :cond_63

    .line 48
    add-int/2addr v2, v13

    .line 49
    move v0, v2

    .line 50
    move v3, v4

    .line 51
    :goto_32
    if-ge v0, v1, :cond_49

    .line 53
    iget-object v5, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 55
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    .line 58
    move-result v5

    .line 59
    if-nez v3, :cond_3f

    .line 61
    if-ne v5, v9, :cond_3f

    .line 63
    goto :goto_49

    .line 64
    :cond_3f
    const/16 v3, 0x5c

    .line 66
    if-ne v5, v3, :cond_45

    .line 68
    move v3, v13

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v3, v4

    .line 71
    :goto_46
    add-int/lit8 v0, v0, 0x1

    .line 73
    goto :goto_32

    .line 74
    :cond_49
    :goto_49
    add-int/lit8 v1, v0, 0x1

    .line 76
    iput v1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 78
    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 80
    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 82
    iget-object v4, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 84
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    const-string v2, "\\\'"

    .line 90
    const-string v4, "\'"

    .line 92
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    invoke-direct {v1, v3, v0}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    .line 99
    return-object v1

    .line 100
    :cond_63
    if-ne v10, v12, :cond_68

    .line 102
    move v6, v13

    .line 103
    goto/16 :goto_14c

    .line 105
    :cond_68
    if-ne v10, v11, :cond_6d

    .line 107
    const/4 v6, 0x2

    .line 108
    goto/16 :goto_14c

    .line 110
    :cond_6d
    invoke-static {v10}, Lcom/miui/maml/data/Expression;->access$300(C)Z

    .line 113
    move-result v9

    .line 114
    if-eqz v9, :cond_b0

    .line 116
    add-int/lit8 v0, v2, 0x1

    .line 118
    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 120
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 123
    move-result v3

    .line 124
    const/16 v4, 0x30

    .line 126
    if-ne v3, v4, :cond_8d

    .line 128
    if-ge v0, v1, :cond_8d

    .line 130
    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 132
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 135
    move-result v3

    .line 136
    const/16 v4, 0x78

    .line 138
    if-ne v3, v4, :cond_8d

    .line 140
    move-object v3, p0

    .line 141
    goto :goto_9d

    .line 142
    :cond_8d
    move-object v3, p0

    .line 143
    :goto_8e
    if-ge v0, v1, :cond_a0

    .line 145
    iget-object v4, v3, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 147
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    .line 150
    move-result v4

    .line 151
    invoke-static {v4}, Lcom/miui/maml/data/Expression;->access$400(C)Z

    .line 154
    move-result v4

    .line 155
    if-nez v4, :cond_9d

    .line 157
    goto :goto_a0

    .line 158
    :cond_9d
    :goto_9d
    add-int/lit8 v0, v0, 0x1

    .line 160
    goto :goto_8e

    .line 161
    :cond_a0
    :goto_a0
    iput v0, v3, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 163
    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 165
    sget-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 167
    iget-object v3, v3, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 169
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    invoke-direct {v1, v4, v0}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    .line 176
    return-object v1

    .line 177
    :cond_b0
    invoke-static {v10}, Lcom/miui/maml/data/Expression;->access$500(C)Z

    .line 180
    move-result v9

    .line 181
    if-eqz v9, :cond_da

    .line 183
    add-int/lit8 v0, v2, 0x1

    .line 185
    :goto_b8
    if-ge v0, v1, :cond_ca

    .line 187
    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 189
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 192
    move-result v3

    .line 193
    invoke-static {v3}, Lcom/miui/maml/data/Expression;->access$600(C)Z

    .line 196
    move-result v3

    .line 197
    if-nez v3, :cond_c7

    .line 199
    goto :goto_ca

    .line 200
    :cond_c7
    add-int/lit8 v0, v0, 0x1

    .line 202
    goto :goto_b8

    .line 203
    :cond_ca
    :goto_ca
    iput v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 205
    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 207
    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 209
    iget-object v4, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 211
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 214
    move-result-object v0

    .line 215
    invoke-direct {v1, v3, v0}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    .line 218
    return-object v1

    .line 219
    :cond_da
    iget-object v9, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    .line 221
    invoke-virtual {v9, v10, v13}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    .line 224
    move-result v9

    .line 225
    if-eqz v9, :cond_14c

    .line 227
    add-int/lit8 v9, v2, 0x1

    .line 229
    :goto_e4
    if-ge v9, v1, :cond_f8

    .line 231
    iget-object v11, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    .line 233
    iget-object v14, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 235
    invoke-virtual {v14, v9}, Ljava/lang/String;->charAt(I)C

    .line 238
    move-result v14

    .line 239
    invoke-virtual {v11, v14, v4}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    .line 242
    move-result v11

    .line 243
    if-nez v11, :cond_f5

    .line 245
    goto :goto_f8

    .line 246
    :cond_f5
    add-int/lit8 v9, v9, 0x1

    .line 248
    goto :goto_e4

    .line 249
    :cond_f8
    :goto_f8
    iget-object v11, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    .line 251
    invoke-virtual {v11}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->getMatch()Lcom/miui/maml/data/Expression$Ope;

    .line 254
    move-result-object v11

    .line 255
    sget-object v14, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    .line 257
    if-eq v11, v14, :cond_14c

    .line 259
    iput v9, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 261
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 263
    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 265
    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 267
    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 270
    move-result-object v2

    .line 271
    invoke-direct {v0, v1, v2, v11}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lcom/miui/maml/data/Expression$Ope;)V

    .line 274
    return-object v0

    .line 275
    :cond_112
    :goto_112
    add-int/2addr v2, v13

    .line 276
    move v0, v2

    .line 277
    :goto_114
    if-ge v0, v1, :cond_126

    .line 279
    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 281
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 284
    move-result v3

    .line 285
    invoke-static {v3}, Lcom/miui/maml/data/Expression;->access$200(C)Z

    .line 288
    move-result v3

    .line 289
    if-nez v3, :cond_123

    .line 291
    goto :goto_126

    .line 292
    :cond_123
    add-int/lit8 v0, v0, 0x1

    .line 294
    goto :goto_114

    .line 295
    :cond_126
    :goto_126
    if-ne v0, v2, :cond_135

    .line 297
    const-string v0, "invalid variable name:"

    .line 299
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 305
    invoke-static {v0, v1, v9}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/4 v0, 0x0

    .line 309
    return-object v0

    .line 310
    :cond_135
    iput v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 312
    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 314
    const/16 v3, 0x23

    .line 316
    if-ne v10, v3, :cond_140

    .line 318
    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 320
    goto :goto_142

    .line 321
    :cond_140
    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 323
    :goto_142
    iget-object v4, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 325
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 328
    move-result-object v0

    .line 329
    invoke-direct {v1, v3, v0}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    .line 332
    return-object v1

    .line 333
    :cond_14c
    :goto_14c
    if-eqz v6, :cond_183

    .line 335
    if-nez v5, :cond_168

    .line 337
    if-eq v6, v13, :cond_15f

    .line 339
    const/4 v3, 0x2

    .line 340
    if-eq v6, v3, :cond_156

    .line 342
    goto :goto_166

    .line 343
    :cond_156
    const/16 v0, 0x5d

    .line 345
    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 347
    const/16 v7, 0x5b

    .line 349
    move v8, v0

    .line 350
    move-object v0, v3

    .line 351
    goto :goto_166

    .line 352
    :cond_15f
    const/16 v0, 0x29

    .line 354
    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 356
    move v8, v0

    .line 357
    move-object v0, v3

    .line 358
    move v7, v12

    .line 359
    :goto_166
    add-int/lit8 v3, v2, 0x1

    .line 361
    :cond_168
    if-ne v10, v7, :cond_16d

    .line 363
    add-int/lit8 v5, v5, 0x1

    .line 365
    goto :goto_183

    .line 366
    :cond_16d
    if-ne v10, v8, :cond_183

    .line 368
    add-int/lit8 v5, v5, -0x1

    .line 370
    if-nez v5, :cond_183

    .line 372
    add-int/lit8 v1, v2, 0x1

    .line 374
    iput v1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 376
    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 378
    iget-object v4, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 380
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 383
    move-result-object v2

    .line 384
    invoke-direct {v1, v0, v2}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    .line 387
    return-object v1

    .line 388
    :cond_183
    :goto_183
    add-int/lit8 v2, v2, 0x1

    .line 390
    goto/16 :goto_10

    .line 392
    :cond_187
    if-eqz v5, :cond_194

    .line 394
    const-string v0, "mismatched bracket:"

    .line 396
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 402
    invoke-static {v0, v1, v9}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_194
    const/4 v0, 0x0

    .line 406
    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 4
    return-void
.end method
