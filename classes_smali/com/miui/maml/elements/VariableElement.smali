.class public Lcom/miui/maml/elements/VariableElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "VariableElement.java"


# static fields
.field public static final LENGTH_SUFFIX:Ljava/lang/String; = ".length"

.field private static final LOG_TAG:Ljava/lang/String; = "VariableElement"

.field private static final OLD_VALUE:Ljava/lang/String; = "old_value"

.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Lcom/miui/maml/animation/VariableAnimation;

.field private mArraySize:I

.field private mArrayValues:[Lcom/miui/maml/data/Expression;

.field private mConst:Z

.field private mExpression:Lcom/miui/maml/data/Expression;

.field private mIndexExpression:Lcom/miui/maml/data/Expression;

.field private mInited:Z

.field private mLengthVar:Lcom/miui/maml/data/IndexedVariable;

.field private mOldValue:D

.field private mOldVar:Lcom/miui/maml/data/IndexedVariable;

.field private mThreshold:D

.field private mTrigger:Lcom/miui/maml/CommandTrigger;

.field private mType:Lcom/miui/maml/data/VariableType;

.field private mVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 10

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    if-eqz p1, :cond_e9

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "expression"

    .line 12
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mExpression:Lcom/miui/maml/data/Expression;

    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "index"

    .line 28
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 38
    const/high16 v0, 0x3f800000  # 1.0f

    .line 40
    const-string v1, "threshold"

    .line 42
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 45
    move-result v0

    .line 46
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 49
    move-result v0

    .line 50
    float-to-double v0, v0

    .line 51
    iput-wide v0, p0, Lcom/miui/maml/elements/VariableElement;->mThreshold:D

    .line 53
    const-string v0, "type"

    .line 55
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/miui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;

    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    .line 65
    const-string v0, "const"

    .line 67
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 74
    move-result v0

    .line 75
    iput-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mConst:Z

    .line 77
    const-string v0, "size"

    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 83
    move-result v0

    .line 84
    iput v0, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    .line 86
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 89
    move-result-object v0

    .line 90
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 92
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 94
    iget-object v4, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    .line 96
    invoke-virtual {v4}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    .line 99
    move-result v4

    .line 100
    invoke-direct {v2, v3, v0, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 103
    iput-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 105
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    iget-object v4, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 114
    const-string v5, "."

    .line 116
    const-string v6, "old_value"

    .line 118
    invoke-static {v3, v4, v5, v6}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object v3

    .line 122
    iget-object v4, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    .line 124
    invoke-virtual {v4}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    .line 127
    move-result v4

    .line 128
    invoke-direct {v2, v3, v0, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 131
    iput-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mOldVar:Lcom/miui/maml/data/IndexedVariable;

    .line 133
    invoke-static {p1, p2}, Lcom/miui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 136
    move-result-object p2

    .line 137
    iput-object p2, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 139
    iget-object p2, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    .line 141
    invoke-virtual {p2}, Lcom/miui/maml/data/VariableType;->isArray()Z

    .line 144
    move-result p2

    .line 145
    if-eqz p2, :cond_e9

    .line 147
    const-string p2, "values"

    .line 149
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 156
    move-result-object p1

    .line 157
    iput-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 159
    if-eqz p1, :cond_a3

    .line 161
    array-length p1, p1

    .line 162
    iput p1, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    .line 164
    :cond_a3
    iget p1, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    .line 166
    const-string p2, "VariableElement"

    .line 168
    if-lez p1, :cond_c3

    .line 170
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 172
    iget-object v3, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    .line 174
    iget-object v3, v3, Lcom/miui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    .line 176
    invoke-virtual {v0, v2, p1, v3}, Lcom/miui/maml/data/Variables;->createArray(Ljava/lang/String;ILjava/lang/Class;)Z

    .line 179
    move-result p1

    .line 180
    if-nez p1, :cond_ce

    .line 182
    const-string p1, "fail to create array:"

    .line 184
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    move-result-object p1

    .line 188
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 190
    invoke-static {p1, v2, p2}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iput v1, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    .line 195
    goto :goto_ce

    .line 196
    :cond_c3
    const-string p1, "array size is 0:"

    .line 198
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    move-result-object p1

    .line 202
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 204
    invoke-static {p1, v1, p2}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_ce
    :goto_ce
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 216
    const-string v2, ".length"

    .line 218
    invoke-static {p2, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    move-result-object p2

    .line 222
    const/4 v1, 0x1

    .line 223
    invoke-direct {p1, p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 226
    iput-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 228
    iget p2, p0, Lcom/miui/maml/elements/VariableElement;->mArraySize:I

    .line 230
    int-to-double v0, p2

    .line 231
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 234
    :cond_e9
    return-void
.end method

.method private getDouble(ZI)D
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mAnimation:Lcom/miui/maml/animation/VariableAnimation;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/animation/VariableAnimation;->getValue()D

    .line 8
    move-result-wide p1

    .line 9
    return-wide p1

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mExpression:Lcom/miui/maml/data/Expression;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide p1

    .line 18
    return-wide p1

    .line 19
    :cond_12
    if-eqz p1, :cond_1b

    .line 21
    iget-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 23
    invoke-virtual {p1, p2}, Lcom/miui/maml/data/IndexedVariable;->getArrDouble(I)D

    .line 26
    move-result-wide p1

    .line 27
    goto :goto_21

    .line 28
    :cond_1b
    iget-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 30
    invoke-virtual {p1}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 33
    move-result-wide p1

    .line 34
    :goto_21
    return-wide p1
.end method

.method private onValueChange(D)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mInited:Z

    .line 3
    if-nez v0, :cond_6

    .line 5
    iput-wide p1, p0, Lcom/miui/maml/elements/VariableElement;->mOldValue:D

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 9
    if-eqz v0, :cond_26

    .line 11
    iget-wide v0, p0, Lcom/miui/maml/elements/VariableElement;->mOldValue:D

    .line 13
    sub-double v0, p1, v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 18
    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lcom/miui/maml/elements/VariableElement;->mThreshold:D

    .line 21
    cmpl-double v0, v0, v2

    .line 23
    if-ltz v0, :cond_26

    .line 25
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mOldVar:Lcom/miui/maml/data/IndexedVariable;

    .line 27
    iget-wide v1, p0, Lcom/miui/maml/elements/VariableElement;->mOldValue:D

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 32
    iput-wide p1, p0, Lcom/miui/maml/elements/VariableElement;->mOldValue:D

    .line 34
    iget-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 36
    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 39
    :cond_26
    return-void
.end method

.method private update()V
    .registers 7

    .line 1
    sget-object v0, Lcom/miui/maml/elements/VariableElement$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    .line 3
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_ca

    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eq v0, v2, :cond_68

    .line 18
    const/4 v2, 0x3

    .line 19
    if-eq v0, v2, :cond_5a

    .line 21
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mType:Lcom/miui/maml/data/VariableType;

    .line 23
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableType;->isNumberArray()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_ef

    .line 29
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 31
    if-eqz v0, :cond_33

    .line 33
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 36
    move-result-wide v2

    .line 37
    double-to-int v0, v2

    .line 38
    invoke-direct {p0, v1, v0}, Lcom/miui/maml/elements/VariableElement;->getDouble(ZI)D

    .line 41
    move-result-wide v1

    .line 42
    iget-object v3, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 44
    invoke-virtual {v3, v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 47
    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/VariableElement;->onValueChange(D)V

    .line 50
    goto/16 :goto_ef

    .line 52
    :cond_33
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 54
    if-eqz v0, :cond_ef

    .line 56
    array-length v0, v0

    .line 57
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 59
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    :goto_3e
    if-ge v3, v0, :cond_53

    .line 65
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 67
    aget-object v2, v2, v3

    .line 69
    if-nez v2, :cond_49

    .line 71
    const-wide/16 v4, 0x0

    .line 73
    goto :goto_4d

    .line 74
    :cond_49
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 77
    move-result-wide v4

    .line 78
    :goto_4d
    invoke-static {v1, v3, v4, v5}, Lcom/miui/maml/data/Variables;->putValueToArr(Ljava/lang/Object;ID)Z

    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 83
    goto :goto_3e

    .line 84
    :cond_53
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 86
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 89
    goto/16 :goto_ef

    .line 91
    :cond_5a
    invoke-direct {p0, v3, v3}, Lcom/miui/maml/elements/VariableElement;->getDouble(ZI)D

    .line 94
    move-result-wide v0

    .line 95
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 97
    invoke-virtual {v2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 100
    invoke-direct {p0, v0, v1}, Lcom/miui/maml/elements/VariableElement;->onValueChange(D)V

    .line 103
    goto/16 :goto_ef

    .line 105
    :cond_68
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 107
    if-eqz v0, :cond_99

    .line 109
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mExpression:Lcom/miui/maml/data/Expression;

    .line 111
    if-eqz v0, :cond_99

    .line 113
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 119
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 122
    move-result-wide v1

    .line 123
    double-to-int v1, v1

    .line 124
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 126
    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->getArrString(I)Ljava/lang/String;

    .line 129
    move-result-object v2

    .line 130
    invoke-static {v0, v2}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    move-result v3

    .line 134
    if-nez v3, :cond_ef

    .line 136
    iget-object v3, p0, Lcom/miui/maml/elements/VariableElement;->mOldVar:Lcom/miui/maml/data/IndexedVariable;

    .line 138
    invoke-virtual {v3, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 141
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 143
    invoke-virtual {v2, v1, v0}, Lcom/miui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 148
    if-eqz v0, :cond_ef

    .line 150
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 153
    goto :goto_ef

    .line 154
    :cond_99
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 156
    if-eqz v0, :cond_ef

    .line 158
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 160
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 163
    move-result-object v0

    .line 164
    instance-of v1, v0, [Ljava/lang/String;

    .line 166
    if-eqz v1, :cond_ef

    .line 168
    check-cast v0, [Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 172
    array-length v1, v1

    .line 173
    array-length v2, v0

    .line 174
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 177
    move-result v1

    .line 178
    :goto_b1
    if-ge v3, v1, :cond_c4

    .line 180
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 182
    aget-object v2, v2, v3

    .line 184
    if-nez v2, :cond_bb

    .line 186
    const/4 v2, 0x0

    .line 187
    goto :goto_bf

    .line 188
    :cond_bb
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 191
    move-result-object v2

    .line 192
    :goto_bf
    aput-object v2, v0, v3

    .line 194
    add-int/lit8 v3, v3, 0x1

    .line 196
    goto :goto_b1

    .line 197
    :cond_c4
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 199
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 202
    goto :goto_ef

    .line 203
    :cond_ca
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mExpression:Lcom/miui/maml/data/Expression;

    .line 205
    if-eqz v0, :cond_ef

    .line 207
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 213
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 216
    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    move-result v2

    .line 221
    if-nez v2, :cond_ef

    .line 223
    iget-object v2, p0, Lcom/miui/maml/elements/VariableElement;->mOldVar:Lcom/miui/maml/data/IndexedVariable;

    .line 225
    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 228
    iget-object v1, p0, Lcom/miui/maml/elements/VariableElement;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 230
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 235
    if-eqz v0, :cond_ef

    .line 237
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 240
    :cond_ef
    :goto_ef
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public doTick(J)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mConst:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    .line 9
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    .line 12
    return-void
.end method

.method public finish()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->finish()V

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mInited:Z

    .line 14
    return-void
.end method

.method public init()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 11
    :cond_a
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/miui/maml/elements/VariableElement;->mInited:Z

    .line 17
    return-void
.end method

.method public onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;
    .registers 4

    .line 1
    const-string v0, "VariableAnimation"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 9
    new-instance p1, Lcom/miui/maml/animation/VariableAnimation;

    .line 11
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 14
    iput-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mAnimation:Lcom/miui/maml/animation/VariableAnimation;

    .line 16
    return-object p1

    .line 17
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public onSetAnimBefore()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mAnimation:Lcom/miui/maml/animation/VariableAnimation;

    .line 4
    return-void
.end method

.method public onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/miui/maml/animation/VariableAnimation;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    check-cast p1, Lcom/miui/maml/animation/VariableAnimation;

    .line 7
    iput-object p1, p0, Lcom/miui/maml/elements/VariableElement;->mAnimation:Lcom/miui/maml/animation/VariableAnimation;

    .line 9
    :cond_8
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->pause()V

    .line 11
    :cond_a
    return-void
.end method

.method public pauseAnim(J)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    .line 7
    return-void
.end method

.method public playAnim(JJJZZ)V
    .registers 9

    .line 1
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    .line 7
    return-void
.end method

.method public reset(J)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    .line 7
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/VariableElement;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->resume()V

    .line 11
    :cond_a
    return-void
.end method

.method public resumeAnim(J)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableElement;->update()V

    .line 7
    return-void
.end method
