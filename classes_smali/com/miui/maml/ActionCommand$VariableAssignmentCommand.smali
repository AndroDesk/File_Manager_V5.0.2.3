.class Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariableAssignmentCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VariableCommand"


# instance fields
.field private mArrayValues:[Lcom/miui/maml/data/Expression;

.field private mExpression:Lcom/miui/maml/data/Expression;

.field private mIndexExpression:Lcom/miui/maml/data/Expression;

.field private mLengthVar:Lcom/miui/maml/data/IndexedVariable;

.field private mName:Ljava/lang/String;

.field private mNameExp:Lcom/miui/maml/data/Expression;

.field private mPersist:Z

.field private mRequestUpdate:Z

.field private mType:Lcom/miui/maml/data/VariableType;

.field private mVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 4
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object p1

    .line 8
    const-string v0, "nameExp"

    .line 10
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    .line 20
    if-eqz v0, :cond_1c

    .line 22
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 28
    goto :goto_24

    .line 29
    :cond_1c
    const-string v0, "name"

    .line 31
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 37
    :goto_24
    const-string v0, "persist"

    .line 39
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 46
    move-result v0

    .line 47
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    .line 49
    const-string v0, "requestUpdate"

    .line 51
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 58
    move-result v0

    .line 59
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    .line 61
    const-string v0, "type"

    .line 63
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/miui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;

    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 73
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_7d

    .line 81
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 83
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 87
    invoke-virtual {v2}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    .line 90
    move-result v2

    .line 91
    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 94
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 96
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 98
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableType;->isArray()Z

    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_84

    .line 104
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 113
    const-string v3, ".length"

    .line 115
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    const/4 v2, 0x1

    .line 120
    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 123
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 125
    goto :goto_84

    .line 126
    :cond_7d
    const-string v0, "ActionCommand"

    .line 128
    const-string v1, "empty name in VariableAssignmentCommand"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_84
    :goto_84
    const-string v0, "expression"

    .line 135
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 142
    move-result-object v0

    .line 143
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 145
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 147
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableType;->isArray()Z

    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_b0

    .line 153
    const-string v0, "index"

    .line 155
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 159
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 162
    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 165
    const-string v0, "values"

    .line 167
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object p2

    .line 171
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 174
    move-result-object p1

    .line 175
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 177
    :cond_b0
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    .line 11
    const-string v3, ".length"

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v2, :cond_4e

    .line 17
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v6

    .line 25
    if-eqz v6, :cond_1d

    .line 27
    iput-object v4, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 29
    return-void

    .line 30
    :cond_1d
    iget-object v6, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 32
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_4e

    .line 38
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 40
    new-instance v6, Lcom/miui/maml/data/IndexedVariable;

    .line 42
    iget-object v7, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 44
    invoke-virtual {v7}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    .line 47
    move-result v7

    .line 48
    invoke-direct {v6, v2, v1, v7}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 51
    iput-object v6, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 53
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 55
    invoke-virtual {v2}, Lcom/miui/maml/data/VariableType;->isArray()Z

    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_4e

    .line 61
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    iget-object v7, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 70
    invoke-static {v6, v7, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v6

    .line 74
    invoke-direct {v2, v6, v1, v5}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 77
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 79
    :cond_4e
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 81
    if-nez v2, :cond_53

    .line 83
    return-void

    .line 84
    :cond_53
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    .line 86
    iget-object v6, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 88
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 91
    move-result v6

    .line 92
    aget v2, v2, v6

    .line 94
    const/4 v6, 0x2

    .line 95
    if-eq v2, v5, :cond_1a7

    .line 97
    if-eq v2, v6, :cond_18c

    .line 99
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 101
    invoke-virtual {v2}, Lcom/miui/maml/data/VariableType;->isNumberOrStringArray()Z

    .line 104
    move-result v2

    .line 105
    const-wide/16 v6, 0x0

    .line 107
    const/4 v8, 0x0

    .line 108
    if-eqz v2, :cond_116

    .line 110
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 112
    if-eqz v2, :cond_a5

    .line 114
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 116
    if-eqz v2, :cond_a5

    .line 118
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 120
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->isNumberArray()Z

    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_91

    .line 126
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 128
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 130
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 133
    move-result-wide v2

    .line 134
    double-to-int v2, v2

    .line 135
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 137
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 140
    move-result-wide v3

    .line 141
    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 144
    goto/16 :goto_1c7

    .line 146
    :cond_91
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 148
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 150
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 153
    move-result-wide v2

    .line 154
    double-to-int v2, v2

    .line 155
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 157
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 164
    goto/16 :goto_1c7

    .line 166
    :cond_a5
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 168
    if-eqz v2, :cond_116

    .line 170
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 172
    invoke-virtual {v2}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 175
    move-result-object v2

    .line 176
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 178
    array-length v3, v3

    .line 179
    if-eqz v2, :cond_c8

    .line 181
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 184
    move-result v5

    .line 185
    if-ne v5, v3, :cond_c8

    .line 187
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 194
    move-result-object v5

    .line 195
    iget-object v9, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 197
    iget-object v9, v9, Lcom/miui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    .line 199
    if-eq v5, v9, :cond_dd

    .line 201
    :cond_c8
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 203
    iget-object v5, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 205
    iget-object v5, v5, Lcom/miui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    .line 207
    invoke-virtual {v1, v2, v3, v5}, Lcom/miui/maml/data/Variables;->createArray(Ljava/lang/String;ILjava/lang/Class;)Z

    .line 210
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 212
    int-to-double v9, v3

    .line 213
    invoke-virtual {v1, v9, v10}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 216
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 218
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 221
    move-result-object v2

    .line 222
    :cond_dd
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lcom/miui/maml/data/VariableType;

    .line 224
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->isNumberArray()Z

    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_f9

    .line 230
    :goto_e5
    if-ge v8, v3, :cond_10f

    .line 232
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 234
    aget-object v1, v1, v8

    .line 236
    if-nez v1, :cond_ef

    .line 238
    move-wide v4, v6

    .line 239
    goto :goto_f3

    .line 240
    :cond_ef
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 243
    move-result-wide v4

    .line 244
    :goto_f3
    invoke-static {v2, v8, v4, v5}, Lcom/miui/maml/data/Variables;->putValueToArr(Ljava/lang/Object;ID)Z

    .line 247
    add-int/lit8 v8, v8, 0x1

    .line 249
    goto :goto_e5

    .line 250
    :cond_f9
    :goto_f9
    if-ge v8, v3, :cond_10f

    .line 252
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lcom/miui/maml/data/Expression;

    .line 254
    aget-object v1, v1, v8

    .line 256
    move-object v5, v2

    .line 257
    check-cast v5, [Ljava/lang/String;

    .line 259
    if-nez v1, :cond_106

    .line 261
    move-object v1, v4

    .line 262
    goto :goto_10a

    .line 263
    :cond_106
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 266
    move-result-object v1

    .line 267
    :goto_10a
    aput-object v1, v5, v8

    .line 269
    add-int/lit8 v8, v8, 0x1

    .line 271
    goto :goto_f9

    .line 272
    :cond_10f
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 274
    invoke-virtual {v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 277
    goto/16 :goto_1c7

    .line 279
    :cond_116
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 281
    if-eqz v2, :cond_11f

    .line 283
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 286
    move-result-object v2

    .line 287
    goto :goto_120

    .line 288
    :cond_11f
    move-object v2, v4

    .line 289
    :goto_120
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 292
    move-result-object v9

    .line 293
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 296
    move-result v10

    .line 297
    if-nez v10, :cond_134

    .line 299
    invoke-virtual {v9, v2}, Lcom/miui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    .line 302
    move-result v10

    .line 303
    if-eqz v10, :cond_134

    .line 305
    invoke-virtual {v9, v2}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    move-result-object v4

    .line 309
    :cond_134
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 311
    if-nez v2, :cond_181

    .line 313
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 315
    invoke-virtual {v2}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 318
    move-result-object v2

    .line 319
    iget-object v9, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 321
    invoke-virtual {v9, v4}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 324
    if-eqz v2, :cond_149

    .line 326
    instance-of v2, v2, Ljava/lang/reflect/Array;

    .line 328
    if-nez v2, :cond_14f

    .line 330
    :cond_149
    if-eqz v4, :cond_150

    .line 332
    instance-of v2, v4, Ljava/lang/reflect/Array;

    .line 334
    if-eqz v2, :cond_150

    .line 336
    :cond_14f
    move v8, v5

    .line 337
    :cond_150
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 339
    if-nez v2, :cond_168

    .line 341
    if-eqz v8, :cond_168

    .line 343
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 345
    new-instance v8, Ljava/lang/StringBuilder;

    .line 347
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    iget-object v9, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 352
    invoke-static {v8, v9, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    move-result-object v3

    .line 356
    invoke-direct {v2, v3, v1, v5}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 359
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 361
    :cond_168
    if-eqz v4, :cond_179

    .line 363
    instance-of v1, v4, Ljava/lang/reflect/Array;

    .line 365
    if-eqz v1, :cond_179

    .line 367
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 369
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 372
    move-result v2

    .line 373
    int-to-double v2, v2

    .line 374
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 377
    goto :goto_1c7

    .line 378
    :cond_179
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mLengthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 380
    if-eqz v1, :cond_1c7

    .line 382
    invoke-virtual {v1, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 385
    goto :goto_1c7

    .line 386
    :cond_181
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 388
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 391
    move-result-wide v2

    .line 392
    double-to-int v2, v2

    .line 393
    invoke-virtual {v1, v2, v4}, Lcom/miui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 396
    goto :goto_1c7

    .line 397
    :cond_18c
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 399
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 402
    move-result-object v1

    .line 403
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 405
    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 408
    iget-boolean v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    .line 410
    if-eqz v2, :cond_1c7

    .line 412
    invoke-virtual {v0, v6}, Lcom/miui/maml/ScreenElementRoot;->getCapability(I)Z

    .line 415
    move-result v2

    .line 416
    if-eqz v2, :cond_1c7

    .line 418
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 420
    invoke-virtual {v0, v2, v1}, Lcom/miui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    goto :goto_1c7

    .line 424
    :cond_1a7
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lcom/miui/maml/data/Expression;

    .line 426
    if-eqz v1, :cond_1c7

    .line 428
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 431
    move-result-wide v1

    .line 432
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 434
    invoke-virtual {v3, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 437
    iget-boolean v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    .line 439
    if-eqz v3, :cond_1c7

    .line 441
    invoke-virtual {v0, v6}, Lcom/miui/maml/ScreenElementRoot;->getCapability(I)Z

    .line 444
    move-result v3

    .line 445
    if-eqz v3, :cond_1c7

    .line 447
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 449
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 452
    move-result-object v1

    .line 453
    invoke-virtual {v0, v3, v1}, Lcom/miui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/Double;)V

    .line 456
    :cond_1c7
    :goto_1c7
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    .line 458
    if-eqz v1, :cond_1ce

    .line 460
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 463
    :cond_1ce
    return-void
.end method
