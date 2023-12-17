.class public Lcom/miui/maml/data/BaseFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/BaseFunctions$NullObjFunction;,
        Lcom/miui/maml/data/BaseFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private fun:Lcom/miui/maml/data/BaseFunctions$Fun;

.field private mEvalExp:Lcom/miui/maml/data/Expression;

.field private mEvalExpStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 6
    return-void
.end method

.method private digit(II)I
    .registers 7

    .line 1
    const/4 v0, -0x1

    .line 2
    if-gtz p2, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez p1, :cond_b

    .line 9
    if-ne p2, v2, :cond_b

    .line 11
    return v1

    .line 12
    :cond_b
    :goto_b
    if-lez p1, :cond_16

    .line 14
    add-int/lit8 v3, p2, -0x1

    .line 16
    if-ge v1, v3, :cond_16

    .line 18
    div-int/lit8 p1, p1, 0xa

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_b

    .line 23
    :cond_16
    if-lez p1, :cond_1a

    .line 25
    rem-int/lit8 v0, p1, 0xa

    .line 27
    :cond_1a
    return v0
.end method

.method public static load()V
    .registers 5

    .line 1
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 3
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->RAND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 9
    const-string v1, "rand"

    .line 11
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 14
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 16
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 22
    const-string v1, "sin"

    .line 24
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 27
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 29
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->COS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 31
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 34
    const-string v1, "cos"

    .line 36
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 39
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 41
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->TAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 43
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 46
    const-string v1, "tan"

    .line 48
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 51
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 53
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ASIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 55
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 58
    const-string v1, "asin"

    .line 60
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 63
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 65
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ACOS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 67
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 70
    const-string v1, "acos"

    .line 72
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 75
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 77
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ATAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 79
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 82
    const-string v1, "atan"

    .line 84
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 87
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 89
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SINH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 91
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 94
    const-string v1, "sinh"

    .line 96
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 99
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 101
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->COSH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 103
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 106
    const-string v1, "cosh"

    .line 108
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 111
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 113
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SQRT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 115
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 118
    const-string v1, "sqrt"

    .line 120
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 123
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 125
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ABS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 127
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 130
    const-string v1, "abs"

    .line 132
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 135
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 137
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LEN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 139
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 142
    const-string v1, "len"

    .line 144
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 147
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 149
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 151
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 154
    const-string v1, "eval"

    .line 156
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 159
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 161
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 163
    const/4 v3, 0x2

    .line 164
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 167
    const-string v1, "preciseeval"

    .line 169
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 172
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 174
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ROUND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 176
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 179
    const-string v1, "round"

    .line 181
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 184
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 186
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->INT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 188
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 191
    const-string v1, "int"

    .line 193
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 196
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 198
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->NUM:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 200
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 203
    const-string v1, "num"

    .line 205
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 208
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 210
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->ISNULL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 212
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 215
    const-string v1, "isnull"

    .line 217
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 220
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 222
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->NOT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 224
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 227
    const-string v1, "not"

    .line 229
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 232
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 234
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->MIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 236
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 239
    const-string v1, "min"

    .line 241
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 244
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 246
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->MAX:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 248
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 251
    const-string v1, "max"

    .line 253
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 256
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 258
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->POW:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 260
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 263
    const-string v1, "pow"

    .line 265
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 268
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 270
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 272
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 275
    const-string v1, "log"

    .line 277
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 280
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 282
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG10:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 284
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 287
    const-string v1, "log10"

    .line 289
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 292
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 294
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->DIGIT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 296
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 299
    const-string v1, "digit"

    .line 301
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 304
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 306
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->EQ:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 308
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 311
    const-string v1, "eq"

    .line 313
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 316
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 318
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->NE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 320
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 323
    const-string v1, "ne"

    .line 325
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 328
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 330
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->GE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 332
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 335
    const-string v1, "ge"

    .line 337
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 340
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 342
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->GT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 344
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 347
    const-string v1, "gt"

    .line 349
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 352
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 354
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 356
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 359
    const-string v1, "le"

    .line 361
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 364
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 366
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->LT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 368
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 371
    const-string v1, "lt"

    .line 373
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 376
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 378
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->IFELSE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 380
    const/4 v4, 0x3

    .line 381
    invoke-direct {v0, v1, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 384
    const-string v1, "ifelse"

    .line 386
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 389
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 391
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->AND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 393
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 396
    const-string v1, "and"

    .line 398
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 401
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 403
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->OR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 405
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 408
    const-string v1, "or"

    .line 410
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 413
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 415
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->EQS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 417
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 420
    const-string v1, "eqs"

    .line 422
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 425
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 427
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->SUBSTR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 429
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 432
    const-string v1, "substr"

    .line 434
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 437
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 439
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->HASH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 441
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 444
    const-string v1, "hash"

    .line 446
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 449
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;

    .line 451
    invoke-direct {v0}, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;-><init>()V

    .line 454
    const-string v1, "nullobj"

    .line 456
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 459
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 461
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->FLOOR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 463
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 466
    const-string v1, "floor"

    .line 468
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 471
    new-instance v0, Lcom/miui/maml/data/BaseFunctions;

    .line 473
    sget-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->CEIL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 475
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    .line 478
    const-string v1, "ceil"

    .line 480
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 483
    return-void
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .registers 13

    .line 1
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v1, v0, v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v1, v2, :cond_210

    .line 14
    const/4 v1, 0x0

    .line 15
    aget-object v3, p1, v1

    .line 17
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 20
    move-result-wide v3

    .line 21
    iget-object v5, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 23
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 26
    move-result v5

    .line 27
    aget v0, v0, v5

    .line 29
    const-string v5, "Expression"

    .line 31
    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    .line 33
    const-wide/16 v8, 0x0

    .line 35
    packed-switch v0, :pswitch_data_216

    .line 38
    const-string p1, "fail to evalute FunctionExpression, invalid function: "

    .line 40
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-wide v8

    .line 61
    :pswitch_3c  #0x26
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 64
    move-result-wide p1

    .line 65
    return-wide p1

    .line 66
    :pswitch_41  #0x25
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 69
    move-result-wide p1

    .line 70
    return-wide p1

    .line 71
    :pswitch_46  #0x24
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/BaseFunctions;->evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1, v8, v9}, Lcom/miui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    .line 78
    move-result-wide p1

    .line 79
    return-wide p1

    .line 80
    :pswitch_4f  #0x23
    aget-object p2, p1, v1

    .line 82
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    aget-object p1, p1, v2

    .line 88
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_62

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move-wide v6, v8

    .line 100
    :goto_63
    return-wide v6

    .line 101
    :pswitch_64  #0x22
    array-length p2, p1

    .line 102
    :goto_65
    if-ge v1, p2, :cond_75

    .line 104
    aget-object v0, p1, v1

    .line 106
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 109
    move-result-wide v2

    .line 110
    cmpl-double v0, v2, v8

    .line 112
    if-lez v0, :cond_72

    .line 114
    return-wide v6

    .line 115
    :cond_72
    add-int/lit8 v1, v1, 0x1

    .line 117
    goto :goto_65

    .line 118
    :cond_75
    return-wide v8

    .line 119
    :pswitch_76  #0x21
    array-length p2, p1

    .line 120
    :goto_77
    if-ge v1, p2, :cond_87

    .line 122
    aget-object v0, p1, v1

    .line 124
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 127
    move-result-wide v2

    .line 128
    cmpg-double v0, v2, v8

    .line 130
    if-gtz v0, :cond_84

    .line 132
    return-wide v8

    .line 133
    :cond_84
    add-int/lit8 v1, v1, 0x1

    .line 135
    goto :goto_77

    .line 136
    :cond_87
    return-wide v6

    .line 137
    :pswitch_88  #0x20
    array-length p2, p1

    .line 138
    rem-int/lit8 v0, p2, 0x2

    .line 140
    if-eq v0, v2, :cond_a4

    .line 142
    const-string p1, "function parameter number should be 2*n+1: "

    .line 144
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    move-result-object p1

    .line 148
    iget-object p2, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 150
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-wide v8

    .line 165
    :cond_a4
    :goto_a4
    add-int/lit8 v0, p2, -0x1

    .line 167
    div-int/lit8 v3, v0, 0x2

    .line 169
    if-ge v1, v3, :cond_c1

    .line 171
    mul-int/lit8 v0, v1, 0x2

    .line 173
    aget-object v3, p1, v0

    .line 175
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 178
    move-result-wide v3

    .line 179
    cmpl-double v3, v3, v8

    .line 181
    if-lez v3, :cond_be

    .line 183
    add-int/2addr v0, v2

    .line 184
    aget-object p1, p1, v0

    .line 186
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 189
    move-result-wide p1

    .line 190
    return-wide p1

    .line 191
    :cond_be
    add-int/lit8 v1, v1, 0x1

    .line 193
    goto :goto_a4

    .line 194
    :cond_c1
    aget-object p1, p1, v0

    .line 196
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 199
    move-result-wide p1

    .line 200
    return-wide p1

    .line 201
    :pswitch_c8  #0x1f
    aget-object p1, p1, v2

    .line 203
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 206
    move-result-wide p1

    .line 207
    cmpg-double p1, v3, p1

    .line 209
    if-gez p1, :cond_d3

    .line 211
    goto :goto_d4

    .line 212
    :cond_d3
    move-wide v6, v8

    .line 213
    :goto_d4
    return-wide v6

    .line 214
    :pswitch_d5  #0x1e
    aget-object p1, p1, v2

    .line 216
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 219
    move-result-wide p1

    .line 220
    cmpg-double p1, v3, p1

    .line 222
    if-gtz p1, :cond_e0

    .line 224
    goto :goto_e1

    .line 225
    :cond_e0
    move-wide v6, v8

    .line 226
    :goto_e1
    return-wide v6

    .line 227
    :pswitch_e2  #0x1d
    aget-object p1, p1, v2

    .line 229
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 232
    move-result-wide p1

    .line 233
    cmpl-double p1, v3, p1

    .line 235
    if-lez p1, :cond_ed

    .line 237
    goto :goto_ee

    .line 238
    :cond_ed
    move-wide v6, v8

    .line 239
    :goto_ee
    return-wide v6

    .line 240
    :pswitch_ef  #0x1c
    aget-object p1, p1, v2

    .line 242
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 245
    move-result-wide p1

    .line 246
    cmpl-double p1, v3, p1

    .line 248
    if-ltz p1, :cond_fa

    .line 250
    goto :goto_fb

    .line 251
    :cond_fa
    move-wide v6, v8

    .line 252
    :goto_fb
    return-wide v6

    .line 253
    :pswitch_fc  #0x1b
    aget-object p1, p1, v2

    .line 255
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 258
    move-result-wide p1

    .line 259
    cmpl-double p1, v3, p1

    .line 261
    if-eqz p1, :cond_107

    .line 263
    goto :goto_108

    .line 264
    :cond_107
    move-wide v6, v8

    .line 265
    :goto_108
    return-wide v6

    .line 266
    :pswitch_109  #0x1a
    aget-object p1, p1, v2

    .line 268
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 271
    move-result-wide p1

    .line 272
    cmpl-double p1, v3, p1

    .line 274
    if-nez p1, :cond_114

    .line 276
    goto :goto_115

    .line 277
    :cond_114
    move-wide v6, v8

    .line 278
    :goto_115
    return-wide v6

    .line 279
    :pswitch_116  #0x19
    double-to-int p2, v3

    .line 280
    aget-object p1, p1, v2

    .line 282
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 285
    move-result-wide v0

    .line 286
    double-to-int p1, v0

    .line 287
    invoke-direct {p0, p2, p1}, Lcom/miui/maml/data/BaseFunctions;->digit(II)I

    .line 290
    move-result p1

    .line 291
    int-to-double p1, p1

    .line 292
    return-wide p1

    .line 293
    :pswitch_124  #0x18
    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    .line 296
    move-result-wide p1

    .line 297
    return-wide p1

    .line 298
    :pswitch_129  #0x17
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    .line 301
    move-result-wide p1

    .line 302
    return-wide p1

    .line 303
    :pswitch_12e  #0x16
    aget-object p1, p1, v2

    .line 305
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 308
    move-result-wide p1

    .line 309
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->pow(DD)D

    .line 312
    move-result-wide p1

    .line 313
    return-wide p1

    .line 314
    :pswitch_139  #0x15
    aget-object p1, p1, v2

    .line 316
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 319
    move-result-wide p1

    .line 320
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(DD)D

    .line 323
    move-result-wide p1

    .line 324
    return-wide p1

    .line 325
    :pswitch_144  #0x14
    aget-object p1, p1, v2

    .line 327
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 330
    move-result-wide p1

    .line 331
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    .line 334
    move-result-wide p1

    .line 335
    return-wide p1

    .line 336
    :pswitch_14f  #0x13
    cmpl-double p1, v3, v8

    .line 338
    if-lez p1, :cond_154

    .line 340
    move-wide v6, v8

    .line 341
    :cond_154
    return-wide v6

    .line 342
    :pswitch_155  #0x12
    aget-object p1, p1, v1

    .line 344
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 347
    move-result p1

    .line 348
    if-eqz p1, :cond_15e

    .line 350
    goto :goto_15f

    .line 351
    :cond_15e
    move-wide v6, v8

    .line 352
    :goto_15f
    return-wide v6

    .line 353
    :pswitch_160  #0x11
    return-wide v3

    .line 354
    :pswitch_161  #0x10
    double-to-long p1, v3

    .line 355
    long-to-int p1, p1

    .line 356
    int-to-double p1, p1

    .line 357
    return-wide p1

    .line 358
    :pswitch_165  #0xf
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 361
    move-result-wide p1

    .line 362
    long-to-double p1, p1

    .line 363
    return-wide p1

    .line 364
    :pswitch_16b  #0xe
    aget-object v0, p1, v1

    .line 366
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 369
    move-result-object v0

    .line 370
    if-nez v0, :cond_174

    .line 372
    return-wide v8

    .line 373
    :cond_174
    iget-object v1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    move-result v1

    .line 379
    if-nez v1, :cond_184

    .line 381
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 383
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 386
    move-result-object p2

    .line 387
    iput-object p2, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 389
    :cond_184
    iget-object p2, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 391
    if-eqz p2, :cond_18d

    .line 393
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    .line 396
    move-result-object p2

    .line 397
    goto :goto_18e

    .line 398
    :cond_18d
    const/4 p2, 0x0

    .line 399
    :goto_18e
    if-eqz p2, :cond_1a9

    .line 401
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    .line 404
    move-result v0

    .line 405
    aget-object p1, p1, v2

    .line 407
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 410
    move-result-wide v1

    .line 411
    double-to-int p1, v1

    .line 412
    if-lez p1, :cond_1a4

    .line 414
    if-le v0, p1, :cond_1a4

    .line 416
    const/4 v0, 0x4

    .line 417
    invoke-virtual {p2, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 420
    move-result-object p2

    .line 421
    :cond_1a4
    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    .line 424
    move-result-wide p1

    .line 425
    return-wide p1

    .line 426
    :cond_1a9
    const-wide/high16 p1, 0x7ff8000000000000L  # Double.NaN

    .line 428
    return-wide p1

    .line 429
    :pswitch_1ac  #0xd
    aget-object p1, p1, v1

    .line 431
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 434
    move-result-object p1

    .line 435
    if-nez p1, :cond_1b5

    .line 437
    return-wide v8

    .line 438
    :cond_1b5
    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 440
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    move-result v0

    .line 444
    if-nez v0, :cond_1c5

    .line 446
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 448
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 451
    move-result-object p1

    .line 452
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 454
    :cond_1c5
    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 456
    if-nez p1, :cond_1ca

    .line 458
    goto :goto_1ce

    .line 459
    :cond_1ca
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 462
    move-result-wide v8

    .line 463
    :goto_1ce
    return-wide v8

    .line 464
    :pswitch_1cf  #0xc
    aget-object p1, p1, v1

    .line 466
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 469
    move-result-object p1

    .line 470
    if-nez p1, :cond_1d8

    .line 472
    return-wide v8

    .line 473
    :cond_1d8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 476
    move-result p1

    .line 477
    int-to-double p1, p1

    .line 478
    return-wide p1

    .line 479
    :pswitch_1de  #0xb
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 482
    move-result-wide p1

    .line 483
    return-wide p1

    .line 484
    :pswitch_1e3  #0xa
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 487
    move-result-wide p1

    .line 488
    return-wide p1

    .line 489
    :pswitch_1e8  #0x9
    invoke-static {v3, v4}, Ljava/lang/Math;->cosh(D)D

    .line 492
    move-result-wide p1

    .line 493
    return-wide p1

    .line 494
    :pswitch_1ed  #0x8
    invoke-static {v3, v4}, Ljava/lang/Math;->sinh(D)D

    .line 497
    move-result-wide p1

    .line 498
    return-wide p1

    .line 499
    :pswitch_1f2  #0x7
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    .line 502
    move-result-wide p1

    .line 503
    return-wide p1

    .line 504
    :pswitch_1f7  #0x6
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    .line 507
    move-result-wide p1

    .line 508
    return-wide p1

    .line 509
    :pswitch_1fc  #0x5
    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    .line 512
    move-result-wide p1

    .line 513
    return-wide p1

    .line 514
    :pswitch_201  #0x4
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    .line 517
    move-result-wide p1

    .line 518
    return-wide p1

    .line 519
    :pswitch_206  #0x3
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 522
    move-result-wide p1

    .line 523
    return-wide p1

    .line 524
    :pswitch_20b  #0x2
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 527
    move-result-wide p1

    .line 528
    return-wide p1

    .line 529
    :cond_210
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 532
    move-result-wide p1

    .line 533
    return-wide p1

    .line 534
    nop

    .line 535
    :pswitch_data_216
    .packed-switch 0x2
        :pswitch_20b  #00000002
        :pswitch_206  #00000003
        :pswitch_201  #00000004
        :pswitch_1fc  #00000005
        :pswitch_1f7  #00000006
        :pswitch_1f2  #00000007
        :pswitch_1ed  #00000008
        :pswitch_1e8  #00000009
        :pswitch_1e3  #0000000a
        :pswitch_1de  #0000000b
        :pswitch_1cf  #0000000c
        :pswitch_1ac  #0000000d
        :pswitch_16b  #0000000e
        :pswitch_165  #0000000f
        :pswitch_161  #00000010
        :pswitch_160  #00000011
        :pswitch_155  #00000012
        :pswitch_14f  #00000013
        :pswitch_144  #00000014
        :pswitch_139  #00000015
        :pswitch_12e  #00000016
        :pswitch_129  #00000017
        :pswitch_124  #00000018
        :pswitch_116  #00000019
        :pswitch_109  #0000001a
        :pswitch_fc  #0000001b
        :pswitch_ef  #0000001c
        :pswitch_e2  #0000001d
        :pswitch_d5  #0000001e
        :pswitch_c8  #0000001f
        :pswitch_88  #00000020
        :pswitch_76  #00000021
        :pswitch_64  #00000022
        :pswitch_4f  #00000023
        :pswitch_46  #00000024
        :pswitch_41  #00000025
        :pswitch_3c  #00000026
    .end packed-switch
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .registers 12

    .line 1
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/16 v1, 0xd

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eq v0, v1, :cond_b0

    .line 17
    const/16 v1, 0x20

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eq v0, v1, :cond_6c

    .line 22
    const/16 v1, 0x24

    .line 24
    if-eq v0, v1, :cond_3d

    .line 26
    const/16 v1, 0x27

    .line 28
    if-eq v0, v1, :cond_26

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/BaseFunctions;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    .line 33
    move-result-wide p1

    .line 34
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_26
    aget-object p2, p1, v2

    .line 41
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    aget-object p1, p1, v4

    .line 47
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    if-eqz p2, :cond_3c

    .line 53
    if-nez p1, :cond_37

    .line 55
    goto :goto_3c

    .line 56
    :cond_37
    invoke-static {p2, p1}, Lmiui/util/HashUtils;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_3c
    :goto_3c
    return-object v3

    .line 62
    :cond_3d
    aget-object p2, p1, v2

    .line 64
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 68
    if-nez p2, :cond_46

    .line 70
    return-object v3

    .line 71
    :cond_46
    array-length v0, p1

    .line 72
    aget-object v1, p1, v4

    .line 74
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 77
    move-result-wide v1

    .line 78
    double-to-int v1, v1

    .line 79
    const/4 v2, 0x3

    .line 80
    if-lt v0, v2, :cond_66

    .line 82
    const/4 v0, 0x2

    .line 83
    :try_start_52
    aget-object p1, p1, v0

    .line 85
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 88
    move-result-wide v4

    .line 89
    double-to-int p1, v4

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 93
    move-result v0

    .line 94
    if-le p1, v0, :cond_60

    .line 96
    move p1, v0

    .line 97
    :cond_60
    add-int/2addr p1, v1

    .line 98
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :cond_66
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 106
    move-result-object p1
    :try_end_6a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_52 .. :try_end_6a} :catch_6b

    .line 107
    return-object p1

    .line 108
    :catch_6b
    return-object v3

    .line 109
    :cond_6c
    array-length p2, p1

    .line 110
    rem-int/lit8 v0, p2, 0x2

    .line 112
    if-eq v0, v4, :cond_8a

    .line 114
    const-string p1, "function parameter number should be 2*n+1: "

    .line 116
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    move-result-object p1

    .line 120
    iget-object p2, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 122
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    const-string p2, "Expression"

    .line 135
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v3

    .line 139
    :cond_8a
    :goto_8a
    add-int/lit8 v0, p2, -0x1

    .line 141
    div-int/lit8 v1, v0, 0x2

    .line 143
    if-ge v2, v1, :cond_a9

    .line 145
    mul-int/lit8 v0, v2, 0x2

    .line 147
    aget-object v1, p1, v0

    .line 149
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 152
    move-result-wide v5

    .line 153
    const-wide/16 v7, 0x0

    .line 155
    cmpl-double v1, v5, v7

    .line 157
    if-lez v1, :cond_a6

    .line 159
    add-int/2addr v0, v4

    .line 160
    aget-object p1, p1, v0

    .line 162
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    return-object p1

    .line 167
    :cond_a6
    add-int/lit8 v2, v2, 0x1

    .line 169
    goto :goto_8a

    .line 170
    :cond_a9
    aget-object p1, p1, v0

    .line 172
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    return-object p1

    .line 177
    :cond_b0
    aget-object p1, p1, v2

    .line 179
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    if-nez p1, :cond_b9

    .line 185
    return-object v3

    .line 186
    :cond_b9
    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_c9

    .line 194
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 196
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 199
    move-result-object p1

    .line 200
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 202
    :cond_c9
    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 204
    if-nez p1, :cond_ce

    .line 206
    goto :goto_d2

    .line 207
    :cond_ce
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 210
    move-result-object v3

    .line 211
    :goto_d2
    return-object v3
.end method

.method public reset()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 6
    return-void
.end method
