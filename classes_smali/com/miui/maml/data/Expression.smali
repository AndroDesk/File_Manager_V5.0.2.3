.class public abstract Lcom/miui/maml/data/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/Expression$FunctionExpression;,
        Lcom/miui/maml/data/Expression$FunctionImpl;,
        Lcom/miui/maml/data/Expression$BinaryExpression;,
        Lcom/miui/maml/data/Expression$UnaryExpression;,
        Lcom/miui/maml/data/Expression$StringExpression;,
        Lcom/miui/maml/data/Expression$NumberExpression;,
        Lcom/miui/maml/data/Expression$StringArrayVariableExpression;,
        Lcom/miui/maml/data/Expression$NumberArrayVariableExpression;,
        Lcom/miui/maml/data/Expression$ArrayVariableExpression;,
        Lcom/miui/maml/data/Expression$StringVariableExpression;,
        Lcom/miui/maml/data/Expression$NumberVariableExpression;,
        Lcom/miui/maml/data/Expression$VariableExpression;,
        Lcom/miui/maml/data/Expression$Tokenizer;,
        Lcom/miui/maml/data/Expression$Ope;,
        Lcom/miui/maml/data/Expression$OpeInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200(C)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/miui/maml/data/Expression;->isVariableChar(C)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(C)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/miui/maml/data/Expression;->isDigitCharStart(C)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(C)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/miui/maml/data/Expression;->isDigitCharRest(C)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$500(C)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/miui/maml/data/Expression;->isFunctionCharStart(C)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$600(C)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/miui/maml/data/Expression;->isFunctionCharRest(C)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lcom/miui/maml/data/Expression;->buildInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_e

    .line 9
    :cond_8
    new-instance v0, Lcom/miui/maml/data/RootExpression;

    .line 11
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/RootExpression;-><init>(Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;)V

    .line 14
    move-object p0, v0

    .line 15
    :goto_e
    return-object p0
.end method

.method private static buildBracket(Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lcom/miui/maml/data/Expression;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/maml/data/Variables;",
            "Lcom/miui/maml/data/Expression$Tokenizer$Token;",
            "Ljava/util/Stack<",
            "Lcom/miui/maml/data/Expression$Tokenizer$Token;",
            ">;)",
            "Lcom/miui/maml/data/Expression;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 3
    invoke-static {p0, v0}, Lcom/miui/maml/data/Expression;->buildMultipleInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/miui/maml/data/Expression;->checkParams([Lcom/miui/maml/data/Expression;)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "Expression"

    .line 14
    if-nez v1, :cond_1b

    .line 16
    const-string p0, "invalid expressions: "

    .line 18
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object p0

    .line 22
    iget-object p1, p1, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 24
    invoke-static {p0, p1, v3}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-object v2

    .line 28
    :cond_1b
    :try_start_1b
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3b

    .line 34
    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 40
    iget-object v1, v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 42
    sget-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 44
    if-ne v1, v4, :cond_3b

    .line 46
    new-instance v1, Lcom/miui/maml/data/Expression$FunctionExpression;

    .line 48
    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 54
    iget-object p2, p2, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 56
    invoke-direct {v1, p0, v0, p2}, Lcom/miui/maml/data/Expression$FunctionExpression;-><init>(Lcom/miui/maml/data/Variables;[Lcom/miui/maml/data/Expression;Ljava/lang/String;)V

    .line 59
    return-object v1

    .line 60
    :cond_3b
    array-length p0, v0

    .line 61
    const/4 p2, 0x1

    .line 62
    if-ne p0, p2, :cond_4e

    .line 64
    const/4 p0, 0x0

    .line 65
    aget-object p0, v0, p0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_42} :catch_43

    .line 67
    return-object p0

    .line 68
    :catch_43
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_4e
    const-string p0, "fail to buid: multiple expressions in brackets, but seems no function presents:"

    .line 81
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    move-result-object p0

    .line 85
    iget-object p1, p1, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 87
    invoke-static {p0, p1, v3}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-object v2
.end method

.method private static buildInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;
    .registers 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_c

    .line 12
    return-object v1

    .line 13
    :cond_c
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer;

    .line 15
    invoke-direct {v0, p1}, Lcom/miui/maml/data/Expression$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v2, Ljava/util/Stack;

    .line 20
    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 23
    new-instance v3, Ljava/util/Stack;

    .line 25
    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 28
    move-object v4, v1

    .line 29
    :goto_1c
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression$Tokenizer;->getToken()Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 32
    move-result-object v5

    .line 33
    const-string v6, "Expression"

    .line 35
    const/4 v7, 0x1

    .line 36
    if-eqz v5, :cond_1c4

    .line 38
    sget-object v8, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Tokenizer$TokenType:[I

    .line 40
    iget-object v9, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 42
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 45
    move-result v9

    .line 46
    aget v9, v8, v9

    .line 48
    packed-switch v9, :pswitch_data_206

    .line 51
    goto/16 :goto_1c1

    .line 53
    :pswitch_34  #0x8
    invoke-virtual {v2, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    goto/16 :goto_1c1

    .line 58
    :pswitch_39  #0x7
    iget-object v8, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    .line 60
    iget v9, v8, Lcom/miui/maml/data/Expression$OpeInfo;->participants:I

    .line 62
    if-ne v9, v7, :cond_4e

    .line 64
    if-eqz v4, :cond_47

    .line 66
    iget-object v4, v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 68
    sget-object v9, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 70
    if-ne v4, v9, :cond_4e

    .line 72
    :cond_47
    iput-boolean v7, v8, Lcom/miui/maml/data/Expression$OpeInfo;->unary:Z

    .line 74
    invoke-virtual {v2, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    goto/16 :goto_1c1

    .line 79
    :cond_4e
    :goto_4e
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 82
    move-result v4

    .line 83
    if-lez v4, :cond_aa

    .line 85
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 91
    iget-object v4, v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 93
    sget-object v7, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 95
    if-ne v4, v7, :cond_aa

    .line 97
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 103
    iget-object v4, v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    .line 105
    iget v4, v4, Lcom/miui/maml/data/Expression$OpeInfo;->priority:I

    .line 107
    iget-object v7, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    .line 109
    iget v7, v7, Lcom/miui/maml/data/Expression$OpeInfo;->priority:I

    .line 111
    sub-int/2addr v4, v7

    .line 112
    if-gtz v4, :cond_aa

    .line 114
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 117
    move-result v4

    .line 118
    const/4 v7, 0x2

    .line 119
    if-ge v4, v7, :cond_8d

    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    const-string v0, "fail to buid: invalid operator position:"

    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-object v1

    .line 142
    :cond_8d
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Lcom/miui/maml/data/Expression;

    .line 148
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 151
    move-result-object v7

    .line 152
    check-cast v7, Lcom/miui/maml/data/Expression;

    .line 154
    new-instance v8, Lcom/miui/maml/data/Expression$BinaryExpression;

    .line 156
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 159
    move-result-object v9

    .line 160
    check-cast v9, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 162
    iget-object v9, v9, Lcom/miui/maml/data/Expression$Tokenizer$Token;->op:Lcom/miui/maml/data/Expression$Ope;

    .line 164
    invoke-direct {v8, v7, v4, v9}, Lcom/miui/maml/data/Expression$BinaryExpression;-><init>(Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression$Ope;)V

    .line 167
    invoke-virtual {v3, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    goto :goto_4e

    .line 171
    :cond_aa
    invoke-virtual {v2, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    goto/16 :goto_1c1

    .line 176
    :pswitch_af  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    iget-object v4, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 178
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 181
    move-result v4

    .line 182
    aget v4, v8, v4

    .line 184
    packed-switch v4, :pswitch_data_21a

    .line 187
    move-object v4, v1

    .line 188
    goto/16 :goto_193

    .line 190
    :pswitch_bd  #0x6
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 193
    move-result v4

    .line 194
    if-ge v4, v7, :cond_d8

    .line 196
    new-instance p0, Ljava/lang/StringBuilder;

    .line 198
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    const-string v0, "fail to buid: no array name before []:"

    .line 203
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object p0

    .line 213
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-object v1

    .line 217
    :cond_d8
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 220
    move-result-object v4

    .line 221
    check-cast v4, Lcom/miui/maml/data/Expression;

    .line 223
    instance-of v7, v4, Lcom/miui/maml/data/Expression$VariableExpression;

    .line 225
    if-eqz v7, :cond_11a

    .line 227
    iget-object v7, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 229
    invoke-static {p0, v7}, Lcom/miui/maml/data/Expression;->buildInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 232
    move-result-object v7

    .line 233
    if-nez v7, :cond_ff

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    .line 237
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    const-string v0, "fail to buid: no index expression in []:"

    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    move-result-object p0

    .line 252
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-object v1

    .line 256
    :cond_ff
    move-object v6, v4

    .line 257
    check-cast v6, Lcom/miui/maml/data/Expression$VariableExpression;

    .line 259
    invoke-virtual {v6}, Lcom/miui/maml/data/Expression$VariableExpression;->getName()Ljava/lang/String;

    .line 262
    move-result-object v6

    .line 263
    instance-of v8, v4, Lcom/miui/maml/data/Expression$NumberVariableExpression;

    .line 265
    if-eqz v8, :cond_110

    .line 267
    new-instance v4, Lcom/miui/maml/data/Expression$NumberArrayVariableExpression;

    .line 269
    invoke-direct {v4, p0, v6, v7}, Lcom/miui/maml/data/Expression$NumberArrayVariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    .line 272
    goto :goto_12f

    .line 273
    :cond_110
    instance-of v4, v4, Lcom/miui/maml/data/Expression$StringVariableExpression;

    .line 275
    if-eqz v4, :cond_12e

    .line 277
    new-instance v4, Lcom/miui/maml/data/Expression$StringArrayVariableExpression;

    .line 279
    invoke-direct {v4, p0, v6, v7}, Lcom/miui/maml/data/Expression$StringArrayVariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    .line 282
    goto :goto_12f

    .line 283
    :cond_11a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 285
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    const-string v7, "fail to buid: the expression before [] is not a variable:"

    .line 290
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v4

    .line 300
    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_12e
    move-object v4, v1

    .line 304
    :goto_12f
    if-nez v4, :cond_193

    .line 306
    return-object v1

    .line 307
    :pswitch_132  #0x5
    invoke-static {p0, v5, v2}, Lcom/miui/maml/data/Expression;->buildBracket(Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lcom/miui/maml/data/Expression;

    .line 310
    move-result-object v4

    .line 311
    if-nez v4, :cond_193

    .line 313
    return-object v1

    .line 314
    :pswitch_139  #0x4
    new-instance v4, Lcom/miui/maml/data/Expression$StringExpression;

    .line 316
    iget-object v6, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 318
    invoke-direct {v4, v6}, Lcom/miui/maml/data/Expression$StringExpression;-><init>(Ljava/lang/String;)V

    .line 321
    goto :goto_193

    .line 322
    :pswitch_141  #0x3
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    .line 325
    move-result v4

    .line 326
    if-nez v4, :cond_160

    .line 328
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 331
    move-result-object v4

    .line 332
    check-cast v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 334
    iget-object v4, v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;->op:Lcom/miui/maml/data/Expression$Ope;

    .line 336
    sget-object v6, Lcom/miui/maml/data/Expression$Ope;->MIN:Lcom/miui/maml/data/Expression$Ope;

    .line 338
    if-ne v4, v6, :cond_160

    .line 340
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 343
    move-result-object v4

    .line 344
    check-cast v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 346
    iget-object v4, v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    .line 348
    iget-boolean v4, v4, Lcom/miui/maml/data/Expression$OpeInfo;->unary:Z

    .line 350
    if-eqz v4, :cond_160

    .line 352
    goto :goto_161

    .line 353
    :cond_160
    const/4 v7, 0x0

    .line 354
    :goto_161
    new-instance v4, Lcom/miui/maml/data/Expression$NumberExpression;

    .line 356
    new-instance v6, Ljava/lang/StringBuilder;

    .line 358
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    if-eqz v7, :cond_16d

    .line 363
    const-string v8, "-"

    .line 365
    goto :goto_16f

    .line 366
    :cond_16d
    const-string v8, ""

    .line 368
    :goto_16f
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object v8, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 373
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    move-result-object v6

    .line 380
    invoke-direct {v4, v6}, Lcom/miui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    .line 383
    if-eqz v7, :cond_193

    .line 385
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 388
    goto :goto_193

    .line 389
    :pswitch_184  #0x2
    new-instance v4, Lcom/miui/maml/data/Expression$StringVariableExpression;

    .line 391
    iget-object v6, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 393
    invoke-direct {v4, p0, v6}, Lcom/miui/maml/data/Expression$StringVariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 396
    goto :goto_193

    .line 397
    :pswitch_18c  #0x1
    new-instance v4, Lcom/miui/maml/data/Expression$NumberVariableExpression;

    .line 399
    iget-object v6, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 401
    invoke-direct {v4, p0, v6}, Lcom/miui/maml/data/Expression$NumberVariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 404
    :cond_193
    :goto_193
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    .line 407
    move-result v6

    .line 408
    if-nez v6, :cond_1be

    .line 410
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 413
    move-result-object v6

    .line 414
    check-cast v6, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 416
    iget-object v6, v6, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    .line 418
    if-eqz v6, :cond_1be

    .line 420
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 423
    move-result-object v6

    .line 424
    check-cast v6, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 426
    iget-object v6, v6, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    .line 428
    iget-boolean v6, v6, Lcom/miui/maml/data/Expression$OpeInfo;->unary:Z

    .line 430
    if-eqz v6, :cond_1be

    .line 432
    new-instance v6, Lcom/miui/maml/data/Expression$UnaryExpression;

    .line 434
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 437
    move-result-object v7

    .line 438
    check-cast v7, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 440
    iget-object v7, v7, Lcom/miui/maml/data/Expression$Tokenizer$Token;->op:Lcom/miui/maml/data/Expression$Ope;

    .line 442
    invoke-direct {v6, v4, v7}, Lcom/miui/maml/data/Expression$UnaryExpression;-><init>(Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression$Ope;)V

    .line 445
    move-object v4, v6

    .line 446
    goto :goto_193

    .line 447
    :cond_1be
    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :goto_1c1
    move-object v4, v5

    .line 451
    goto/16 :goto_1c

    .line 453
    :cond_1c4
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 456
    move-result p0

    .line 457
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 460
    move-result v0

    .line 461
    add-int/2addr v0, v7

    .line 462
    if-eq p0, v0, :cond_1e4

    .line 464
    new-instance p0, Ljava/lang/StringBuilder;

    .line 466
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    const-string v0, "fail to buid: invalid expression:"

    .line 471
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    move-result-object p0

    .line 481
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-object v1

    .line 485
    :cond_1e4
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 488
    move-result-object p0

    .line 489
    check-cast p0, Lcom/miui/maml/data/Expression;

    .line 491
    :goto_1ea
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 494
    move-result p1

    .line 495
    if-lez p1, :cond_205

    .line 497
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 500
    move-result-object p1

    .line 501
    check-cast p1, Lcom/miui/maml/data/Expression;

    .line 503
    new-instance v0, Lcom/miui/maml/data/Expression$BinaryExpression;

    .line 505
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 508
    move-result-object v1

    .line 509
    check-cast v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 511
    iget-object v1, v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;->op:Lcom/miui/maml/data/Expression$Ope;

    .line 513
    invoke-direct {v0, p1, p0, v1}, Lcom/miui/maml/data/Expression$BinaryExpression;-><init>(Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression$Ope;)V

    .line 516
    move-object p0, v0

    .line 517
    goto :goto_1ea

    .line 518
    :cond_205
    return-object p0

    .line 519
    :pswitch_data_206
    .packed-switch 0x1
        :pswitch_af  #00000001
        :pswitch_af  #00000002
        :pswitch_af  #00000003
        :pswitch_af  #00000004
        :pswitch_af  #00000005
        :pswitch_af  #00000006
        :pswitch_39  #00000007
        :pswitch_34  #00000008
    .end packed-switch

    .line 539
    :pswitch_data_21a
    .packed-switch 0x1
        :pswitch_18c  #00000001
        :pswitch_184  #00000002
        :pswitch_141  #00000003
        :pswitch_139  #00000004
        :pswitch_132  #00000005
        :pswitch_bd  #00000006
    .end packed-switch
.end method

.method public static buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    invoke-static {p0, p1}, Lcom/miui/maml/data/Expression;->buildMultipleInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 12
    move-result-object p1

    .line 13
    array-length v0, p1

    .line 14
    new-array v0, v0, [Lcom/miui/maml/data/Expression;

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_10
    array-length v2, p1

    .line 18
    if-ge v1, v2, :cond_2d

    .line 20
    aget-object v2, p1, v1

    .line 22
    if-eqz v2, :cond_28

    .line 24
    instance-of v3, v2, Lcom/miui/maml/data/Expression$NumberExpression;

    .line 26
    if-nez v3, :cond_28

    .line 28
    instance-of v3, v2, Lcom/miui/maml/data/Expression$StringExpression;

    .line 30
    if-eqz v3, :cond_20

    .line 32
    goto :goto_28

    .line 33
    :cond_20
    new-instance v3, Lcom/miui/maml/data/RootExpression;

    .line 35
    invoke-direct {v3, p0, v2}, Lcom/miui/maml/data/RootExpression;-><init>(Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;)V

    .line 38
    aput-object v3, v0, v1

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    :goto_28
    aput-object v2, v0, v1

    .line 43
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_10

    .line 46
    :cond_2d
    return-object v0
.end method

.method private static buildMultipleInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;
    .registers 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    move-result v5

    .line 14
    if-ge v1, v5, :cond_3f

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 19
    move-result v5

    .line 20
    if-nez v3, :cond_36

    .line 22
    const/16 v6, 0x2c

    .line 24
    if-ne v5, v6, :cond_29

    .line 26
    if-nez v4, :cond_29

    .line 28
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-static {p0, v2}, Lcom/miui/maml/data/Expression;->buildInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v2, v1, 0x1

    .line 41
    goto :goto_36

    .line 42
    :cond_29
    const/16 v6, 0x28

    .line 44
    if-ne v5, v6, :cond_30

    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 48
    goto :goto_36

    .line 49
    :cond_30
    const/16 v6, 0x29

    .line 51
    if-ne v5, v6, :cond_36

    .line 53
    add-int/lit8 v4, v4, -0x1

    .line 55
    :cond_36
    :goto_36
    const/16 v6, 0x27

    .line 57
    if-ne v5, v6, :cond_3c

    .line 59
    xor-int/lit8 v3, v3, 0x1

    .line 61
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    .line 63
    goto :goto_9

    .line 64
    :cond_3f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 67
    move-result v1

    .line 68
    if-ge v2, v1, :cond_50

    .line 70
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-static {p0, p1}, Lcom/miui/maml/data/Expression;->buildInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result p0

    .line 85
    new-array p0, p0, [Lcom/miui/maml/data/Expression;

    .line 87
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    move-result-object p0

    .line 91
    check-cast p0, [Lcom/miui/maml/data/Expression;

    .line 93
    return-object p0
.end method

.method private static checkParams([Lcom/miui/maml/data/Expression;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    array-length v2, p0

    .line 4
    if-ge v1, v2, :cond_d

    .line 6
    aget-object v2, p0, v1

    .line 8
    if-nez v2, :cond_a

    .line 10
    return v0

    .line 11
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 13
    goto :goto_2

    .line 14
    :cond_d
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method private static isDigitCharRest(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_1c

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_1c

    :cond_10
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-le p0, v0, :cond_1c

    :cond_18
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private static isDigitCharStart(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_c

    :cond_8
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static isFunctionCharRest(C)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/miui/maml/data/Expression;->isFunctionCharStart(C)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_15

    .line 7
    const/16 v0, 0x5f

    .line 9
    if-eq p0, v0, :cond_15

    .line 11
    const/16 v0, 0x30

    .line 13
    if-lt p0, v0, :cond_13

    .line 15
    const/16 v0, 0x39

    .line 17
    if-gt p0, v0, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 p0, 0x0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    :goto_15
    const/4 p0, 0x1

    .line 23
    :goto_16
    return p0
.end method

.method private static isFunctionCharStart(C)Z
    .registers 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static isVariableChar(C)Z
    .registers 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_23

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_10

    const/16 v0, 0x5a

    if-le p0, v0, :cond_23

    :cond_10
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_23

    const/16 v0, 0x30

    if-lt p0, v0, :cond_21

    const/16 v0, 0x39

    if-gt p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    .line 4
    return-void
.end method

.method public abstract evaluate()D
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public preciseEvaluate()Ljava/math/BigDecimal;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 4
    move-result-wide v0

    .line 5
    :try_start_4
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 8
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_8} :catch_9

    .line 9
    return-object v0

    .line 10
    :catch_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method
