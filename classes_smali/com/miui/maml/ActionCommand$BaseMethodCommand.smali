.class abstract Lcom/miui/maml/ActionCommand$BaseMethodCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseMethodCommand"
.end annotation


# static fields
.field public static final ERROR_EXCEPTION:I = -0x2

.field public static final ERROR_NO_METHOD:I = -0x1

.field public static final ERROR_SUCCESS:I = 0x1


# instance fields
.field public mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

.field private mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

.field public mParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public mParamValues:[Ljava/lang/Object;

.field private mParams:[Lcom/miui/maml/data/Expression;

.field public mReturnVar:Lcom/miui/maml/data/IndexedVariable;

.field public mTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public mTargetClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 7

    .line 1
    const-string v0, "ActionCommand"

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 6
    const-string p1, "class"

    .line 8
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result p1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p1, :cond_16

    .line 21
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    .line 23
    :cond_16
    const-string p1, "params"

    .line 25
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 39
    const-string p1, "paramTypes"

    .line 41
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 47
    if-eqz v2, :cond_85

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_85

    .line 55
    const-string v2, ","

    .line 57
    invoke-static {p1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    :try_start_3c
    invoke-static {p1}, Lcom/miui/maml/util/ReflectionHelper;->strTypesToClass([Ljava/lang/String;)[Ljava/lang/Class;

    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 67
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 69
    array-length v2, v2

    .line 70
    array-length p1, p1

    .line 71
    if-eq v2, p1, :cond_85

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 80
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v2, "different length of params and paramTypes"

    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 97
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;
    :try_end_62
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_62} :catch_63

    .line 99
    goto :goto_85

    .line 100
    :catch_63
    move-exception p1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v3, "invalid method paramTypes. "

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 132
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 134
    :cond_85
    :goto_85
    const-string p1, "return"

    .line 136
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_aa

    .line 146
    const-string v0, "returnType"

    .line 148
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/miui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;

    .line 155
    move-result-object v0

    .line 156
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 158
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableType;->isNumber()Z

    .line 165
    move-result v0

    .line 166
    invoke-direct {v1, p1, v2, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 169
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mReturnVar:Lcom/miui/maml/data/IndexedVariable;

    .line 171
    :cond_aa
    const-string p1, "errorVar"

    .line 173
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object p1

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    move-result p2

    .line 181
    if-nez p2, :cond_c2

    .line 183
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 185
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 188
    move-result-object v0

    .line 189
    const/4 v1, 0x1

    .line 190
    invoke-direct {p2, p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 193
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 195
    :cond_c2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 202
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string p2, ", class="

    .line 207
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    .line 212
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string p2, " type="

    .line 217
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 222
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 225
    move-result-object p2

    .line 226
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object p1

    .line 233
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 235
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ActionCommand;->finish()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 7
    return-void
.end method

.method public init()V
    .registers 6

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 6
    if-eqz v0, :cond_4e

    .line 8
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    .line 10
    if-nez v1, :cond_10

    .line 12
    array-length v0, v0

    .line 13
    new-array v0, v0, [Lcom/miui/maml/ActionCommand$ObjVar;

    .line 15
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 20
    array-length v2, v1

    .line 21
    if-ge v0, v2, :cond_4e

    .line 23
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v3, v2, v0

    .line 28
    aget-object v1, v1, v0

    .line 30
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_29

    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_4b

    .line 42
    :cond_29
    const-class v2, Ljava/lang/String;

    .line 44
    if-ne v1, v2, :cond_2e

    .line 46
    goto :goto_4b

    .line 47
    :cond_2e
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 49
    aget-object v1, v1, v0

    .line 51
    if-eqz v1, :cond_4b

    .line 53
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_4b

    .line 63
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    .line 65
    new-instance v3, Lcom/miui/maml/ActionCommand$ObjVar;

    .line 67
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 70
    move-result-object v4

    .line 71
    invoke-direct {v3, v1, v4}, Lcom/miui/maml/ActionCommand$ObjVar;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;)V

    .line 74
    aput-object v3, v2, v0

    .line 76
    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    .line 78
    goto :goto_11

    .line 79
    :cond_4e
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    .line 81
    if-eqz v0, :cond_7a

    .line 83
    :try_start_52
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_59

    .line 89
    goto :goto_7a

    .line 90
    :catch_59
    move-exception v0

    .line 91
    const-string v1, "target class not found, name: "

    .line 93
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, "\n"

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    const-string v1, "ActionCommand"

    .line 120
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_7a
    :goto_7a
    return-void
.end method

.method public prepareParams()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_cf

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 7
    if-nez v1, :cond_d

    .line 9
    array-length v0, v0

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_f
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 18
    array-length v3, v2

    .line 19
    if-ge v1, v3, :cond_cf

    .line 21
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v4, v3, v1

    .line 26
    iget-object v5, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 28
    aget-object v5, v5, v1

    .line 30
    aget-object v2, v2, v1

    .line 32
    if-nez v2, :cond_23

    .line 34
    goto/16 :goto_cb

    .line 36
    :cond_23
    const-class v6, Ljava/lang/String;

    .line 38
    if-ne v5, v6, :cond_2f

    .line 40
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    aput-object v2, v3, v1

    .line 46
    goto/16 :goto_cb

    .line 48
    :cond_2f
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 50
    if-ne v5, v6, :cond_41

    .line 52
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 55
    move-result-wide v4

    .line 56
    double-to-long v4, v4

    .line 57
    long-to-int v2, v4

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v2

    .line 62
    aput-object v2, v3, v1

    .line 64
    goto/16 :goto_cb

    .line 66
    :cond_41
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 68
    if-ne v5, v6, :cond_52

    .line 70
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 73
    move-result-wide v4

    .line 74
    double-to-long v4, v4

    .line 75
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    move-result-object v2

    .line 79
    aput-object v2, v3, v1

    .line 81
    goto/16 :goto_cb

    .line 83
    :cond_52
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 85
    if-ne v5, v6, :cond_6a

    .line 87
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 90
    move-result-wide v4

    .line 91
    const-wide/16 v6, 0x0

    .line 93
    cmpl-double v2, v4, v6

    .line 95
    if-lez v2, :cond_62

    .line 97
    const/4 v2, 0x1

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move v2, v0

    .line 100
    :goto_63
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    move-result-object v2

    .line 104
    aput-object v2, v3, v1

    .line 106
    goto :goto_cb

    .line 107
    :cond_6a
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 109
    if-ne v5, v6, :cond_79

    .line 111
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 114
    move-result-wide v4

    .line 115
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 118
    move-result-object v2

    .line 119
    aput-object v2, v3, v1

    .line 121
    goto :goto_cb

    .line 122
    :cond_79
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 124
    if-ne v5, v6, :cond_89

    .line 126
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 129
    move-result-wide v4

    .line 130
    double-to-float v2, v4

    .line 131
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 134
    move-result-object v2

    .line 135
    aput-object v2, v3, v1

    .line 137
    goto :goto_cb

    .line 138
    :cond_89
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 140
    if-ne v5, v6, :cond_9b

    .line 142
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 145
    move-result-wide v4

    .line 146
    double-to-long v4, v4

    .line 147
    long-to-int v2, v4

    .line 148
    int-to-byte v2, v2

    .line 149
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 152
    move-result-object v2

    .line 153
    aput-object v2, v3, v1

    .line 155
    goto :goto_cb

    .line 156
    :cond_9b
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 158
    if-ne v5, v6, :cond_ad

    .line 160
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 163
    move-result-wide v4

    .line 164
    double-to-long v4, v4

    .line 165
    long-to-int v2, v4

    .line 166
    int-to-short v2, v2

    .line 167
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 170
    move-result-object v2

    .line 171
    aput-object v2, v3, v1

    .line 173
    goto :goto_cb

    .line 174
    :cond_ad
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 176
    if-ne v5, v6, :cond_bf

    .line 178
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 181
    move-result-wide v4

    .line 182
    double-to-long v4, v4

    .line 183
    long-to-int v2, v4

    .line 184
    int-to-char v2, v2

    .line 185
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 188
    move-result-object v2

    .line 189
    aput-object v2, v3, v1

    .line 191
    goto :goto_cb

    .line 192
    :cond_bf
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lcom/miui/maml/ActionCommand$ObjVar;

    .line 194
    aget-object v2, v2, v1

    .line 196
    if-eqz v2, :cond_c9

    .line 198
    invoke-virtual {v2}, Lcom/miui/maml/ActionCommand$ObjVar;->get()Ljava/lang/Object;

    .line 201
    move-result-object v4

    .line 202
    :cond_c9
    aput-object v4, v3, v1

    .line 204
    :goto_cb
    add-int/lit8 v1, v1, 0x1

    .line 206
    goto/16 :goto_f

    .line 208
    :cond_cf
    return-void
.end method
