.class Lcom/miui/maml/data/Expression$BinaryExpression;
.super Lcom/miui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinaryExpression"
.end annotation


# instance fields
.field private mExp1:Lcom/miui/maml/data/Expression;

.field private mExp2:Lcom/miui/maml/data/Expression;

.field private mOpe:Lcom/miui/maml/data/Expression$Ope;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression$Ope;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 4
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    .line 6
    iput-object p1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 8
    iput-object p2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 10
    iput-object p3, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 12
    if-ne p3, v0, :cond_23

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string p2, "BinaryExpression: invalid operator:"

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    const-string p2, "Expression"

    .line 33
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_23
    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 6
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 9
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 11
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 14
    return-void
.end method

.method public evaluate()D
    .registers 10

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_14b

    .line 14
    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    .line 16
    const-wide/16 v3, 0x0

    .line 18
    packed-switch v0, :pswitch_data_15a

    .line 21
    const-string v0, "Expression"

    .line 23
    const-string v1, "fail to evalute BinaryExpression, invalid operator"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-wide v3

    .line 29
    :pswitch_1c  #0x14
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 31
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 34
    move-result-wide v5

    .line 35
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 37
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 40
    move-result-wide v7

    .line 41
    cmpg-double v0, v5, v7

    .line 43
    if-gtz v0, :cond_2d

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move-wide v1, v3

    .line 47
    :goto_2e
    return-wide v1

    .line 48
    :pswitch_2f  #0x13
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 50
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 53
    move-result-wide v5

    .line 54
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 56
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 59
    move-result-wide v7

    .line 60
    cmpg-double v0, v5, v7

    .line 62
    if-gez v0, :cond_40

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    move-wide v1, v3

    .line 66
    :goto_41
    return-wide v1

    .line 67
    :pswitch_42  #0x12
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 69
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 72
    move-result-wide v5

    .line 73
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 75
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 78
    move-result-wide v7

    .line 79
    cmpl-double v0, v5, v7

    .line 81
    if-ltz v0, :cond_53

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    move-wide v1, v3

    .line 85
    :goto_54
    return-wide v1

    .line 86
    :pswitch_55  #0x11
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 88
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 91
    move-result-wide v5

    .line 92
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 94
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 97
    move-result-wide v7

    .line 98
    cmpl-double v0, v5, v7

    .line 100
    if-lez v0, :cond_66

    .line 102
    goto :goto_67

    .line 103
    :cond_66
    move-wide v1, v3

    .line 104
    :goto_67
    return-wide v1

    .line 105
    :pswitch_68  #0x10
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 107
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 110
    move-result-wide v5

    .line 111
    cmpl-double v0, v5, v3

    .line 113
    if-gtz v0, :cond_7e

    .line 115
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 117
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 120
    move-result-wide v5

    .line 121
    cmpl-double v0, v5, v3

    .line 123
    if-lez v0, :cond_7d

    .line 125
    goto :goto_7e

    .line 126
    :cond_7d
    move-wide v1, v3

    .line 127
    :cond_7e
    :goto_7e
    return-wide v1

    .line 128
    :pswitch_7f  #0xf
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 130
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 133
    move-result-wide v5

    .line 134
    cmpl-double v0, v5, v3

    .line 136
    if-lez v0, :cond_94

    .line 138
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 140
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 143
    move-result-wide v5

    .line 144
    cmpl-double v0, v5, v3

    .line 146
    if-lez v0, :cond_94

    .line 148
    goto :goto_95

    .line 149
    :cond_94
    move-wide v1, v3

    .line 150
    :goto_95
    return-wide v1

    .line 151
    :pswitch_96  #0xe
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 153
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 156
    move-result-wide v5

    .line 157
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 159
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 162
    move-result-wide v7

    .line 163
    cmpl-double v0, v5, v7

    .line 165
    if-eqz v0, :cond_a7

    .line 167
    goto :goto_a8

    .line 168
    :cond_a7
    move-wide v1, v3

    .line 169
    :goto_a8
    return-wide v1

    .line 170
    :pswitch_a9  #0xd
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 172
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 175
    move-result-wide v5

    .line 176
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 178
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 181
    move-result-wide v7

    .line 182
    cmpl-double v0, v5, v7

    .line 184
    if-nez v0, :cond_ba

    .line 186
    goto :goto_bb

    .line 187
    :cond_ba
    move-wide v1, v3

    .line 188
    :goto_bb
    return-wide v1

    .line 189
    :pswitch_bc  #0xc
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 191
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 194
    move-result-wide v0

    .line 195
    double-to-long v0, v0

    .line 196
    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 198
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 201
    move-result-wide v2

    .line 202
    double-to-long v2, v2

    .line 203
    long-to-int v2, v2

    .line 204
    shr-long/2addr v0, v2

    .line 205
    long-to-double v0, v0

    .line 206
    return-wide v0

    .line 207
    :pswitch_ce  #0xb
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 209
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 212
    move-result-wide v0

    .line 213
    double-to-long v0, v0

    .line 214
    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 216
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 219
    move-result-wide v2

    .line 220
    double-to-long v2, v2

    .line 221
    long-to-int v2, v2

    .line 222
    shl-long/2addr v0, v2

    .line 223
    long-to-double v0, v0

    .line 224
    return-wide v0

    .line 225
    :pswitch_e0  #0xa
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 227
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 230
    move-result-wide v0

    .line 231
    double-to-long v0, v0

    .line 232
    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 234
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 237
    move-result-wide v2

    .line 238
    double-to-long v2, v2

    .line 239
    xor-long/2addr v0, v2

    .line 240
    long-to-double v0, v0

    .line 241
    return-wide v0

    .line 242
    :pswitch_f1  #0x9
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 244
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 247
    move-result-wide v0

    .line 248
    double-to-long v0, v0

    .line 249
    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 251
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 254
    move-result-wide v2

    .line 255
    double-to-long v2, v2

    .line 256
    or-long/2addr v0, v2

    .line 257
    long-to-double v0, v0

    .line 258
    return-wide v0

    .line 259
    :pswitch_102  #0x8
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 261
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 264
    move-result-wide v0

    .line 265
    double-to-long v0, v0

    .line 266
    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 268
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 271
    move-result-wide v2

    .line 272
    double-to-long v2, v2

    .line 273
    and-long/2addr v0, v2

    .line 274
    long-to-double v0, v0

    .line 275
    return-wide v0

    .line 276
    :pswitch_113  #0x7
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 278
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 281
    move-result-wide v0

    .line 282
    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 284
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 287
    move-result-wide v2

    .line 288
    rem-double/2addr v0, v2

    .line 289
    return-wide v0

    .line 290
    :pswitch_121  #0x6
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 292
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 295
    move-result-wide v0

    .line 296
    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 298
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 301
    move-result-wide v2

    .line 302
    div-double/2addr v0, v2

    .line 303
    return-wide v0

    .line 304
    :pswitch_12f  #0x5
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 306
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 309
    move-result-wide v0

    .line 310
    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 312
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 315
    move-result-wide v2

    .line 316
    mul-double/2addr v2, v0

    .line 317
    return-wide v2

    .line 318
    :pswitch_13d  #0x4
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 320
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 323
    move-result-wide v0

    .line 324
    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 326
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 329
    move-result-wide v2

    .line 330
    add-double/2addr v2, v0

    .line 331
    return-wide v2

    .line 332
    :cond_14b
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 334
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 337
    move-result-wide v0

    .line 338
    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 340
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 343
    move-result-wide v2

    .line 344
    sub-double/2addr v0, v2

    .line 345
    return-wide v0

    .line 346
    nop

    .line 347
    :pswitch_data_15a
    .packed-switch 0x4
        :pswitch_13d  #00000004
        :pswitch_12f  #00000005
        :pswitch_121  #00000006
        :pswitch_113  #00000007
        :pswitch_102  #00000008
        :pswitch_f1  #00000009
        :pswitch_e0  #0000000a
        :pswitch_ce  #0000000b
        :pswitch_bc  #0000000c
        :pswitch_a9  #0000000d
        :pswitch_96  #0000000e
        :pswitch_7f  #0000000f
        :pswitch_68  #00000010
        :pswitch_55  #00000011
        :pswitch_42  #00000012
        :pswitch_2f  #00000013
        :pswitch_1c  #00000014
    .end packed-switch
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 9
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 15
    iget-object v3, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v3

    .line 21
    aget v2, v2, v3

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x4

    .line 25
    if-eq v2, v4, :cond_22

    .line 27
    const-string v0, "Expression"

    .line 29
    const-string v1, "fail to evalute string BinaryExpression, invalid operator"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-object v3

    .line 35
    :cond_22
    if-nez v0, :cond_27

    .line 37
    if-nez v1, :cond_27

    .line 39
    return-object v3

    .line 40
    :cond_27
    if-nez v0, :cond_2a

    .line 42
    return-object v1

    .line 43
    :cond_2a
    if-nez v1, :cond_2d

    .line 45
    return-object v0

    .line 46
    :cond_2d
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public isNull()Z
    .registers 5

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v2, :cond_30

    .line 15
    const/4 v3, 0x4

    .line 16
    if-eq v0, v3, :cond_30

    .line 18
    const/4 v3, 0x5

    .line 19
    if-eq v0, v3, :cond_1e

    .line 21
    const/4 v3, 0x6

    .line 22
    if-eq v0, v3, :cond_1e

    .line 24
    const/4 v3, 0x7

    .line 25
    if-eq v0, v3, :cond_1e

    .line 27
    packed-switch v0, :pswitch_data_42

    .line 30
    return v2

    .line 31
    :cond_1e
    :pswitch_1e  #0xd, 0xe, 0xf, 0x10
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 33
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2e

    .line 39
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 41
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2f

    .line 47
    :cond_2e
    move v1, v2

    .line 48
    :cond_2f
    return v1

    .line 49
    :cond_30
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 51
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_41

    .line 57
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 59
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_41

    .line 65
    move v1, v2

    .line 66
    :cond_41
    return v1

    .line 67
    :pswitch_data_42
    .packed-switch 0xd
        :pswitch_1e  #0000000d
        :pswitch_1e  #0000000e
        :pswitch_1e  #0000000f
        :pswitch_1e  #00000010
    .end packed-switch
.end method

.method public preciseEvaluate()Ljava/math/BigDecimal;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 3
    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_4e

    .line 8
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 10
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 16
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    .line 19
    move-result-object v1

    .line 20
    if-eqz v0, :cond_4e

    .line 22
    if-eqz v1, :cond_4e

    .line 24
    sget-object v3, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 26
    iget-object v4, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 28
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 31
    move-result v4

    .line 32
    aget v3, v3, v4

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eq v3, v4, :cond_49

    .line 37
    const/4 v4, 0x4

    .line 38
    if-eq v3, v4, :cond_44

    .line 40
    const/4 v4, 0x5

    .line 41
    if-eq v3, v4, :cond_3f

    .line 43
    const/4 v4, 0x6

    .line 44
    if-eq v3, v4, :cond_37

    .line 46
    const/4 v4, 0x7

    .line 47
    if-eq v3, v4, :cond_31

    .line 49
    goto :goto_4e

    .line 50
    :cond_31
    :try_start_31
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 53
    move-result-object v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_36

    .line 54
    return-object v0

    .line 55
    :catch_36
    return-object v2

    .line 56
    :cond_37
    :try_start_37
    sget-object v3, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    .line 58
    invoke-virtual {v0, v1, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    .line 61
    move-result-object v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3d} :catch_3e

    .line 62
    return-object v0

    .line 63
    :catch_3e
    return-object v2

    .line 64
    :cond_3f
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :cond_44
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :cond_49
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 77
    move-result-object v0

    .line 78
    return-object v0

    .line 79
    :cond_4e
    :goto_4e
    const-string v0, "Expression"

    .line 81
    const-string v1, "fail to PRECISE evalute BinaryExpression, invalid operator"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-object v2
.end method
