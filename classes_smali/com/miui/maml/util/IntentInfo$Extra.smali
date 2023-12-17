.class Lcom/miui/maml/util/IntentInfo$Extra;
.super Ljava/lang/Object;
.source "IntentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/IntentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Extra"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Extra"


# instance fields
.field private mCondition:Lcom/miui/maml/data/Expression;

.field private mExpression:Lcom/miui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field public mType:Lcom/miui/maml/util/IntentInfo$Type;

.field public final synthetic this$0:Lcom/miui/maml/util/IntentInfo;


# direct methods
.method public constructor <init>(Lcom/miui/maml/util/IntentInfo;Lorg/w3c/dom/Element;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->this$0:Lcom/miui/maml/util/IntentInfo;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object p1, Lcom/miui/maml/util/IntentInfo$Type;->DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

    .line 8
    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 10
    invoke-direct {p0, p2}, Lcom/miui/maml/util/IntentInfo$Extra;->load(Lorg/w3c/dom/Element;)V

    .line 13
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 5

    .line 1
    const-string v0, "TaskVariable"

    .line 3
    if-nez p1, :cond_a

    .line 5
    const-string p1, "node is null"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_a
    const-string v1, "name"

    .line 13
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mName:Ljava/lang/String;

    .line 19
    const-string v1, "type"

    .line 21
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    const-string v2, "string"

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_25

    .line 33
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->STRING:Lcom/miui/maml/util/IntentInfo$Type;

    .line 35
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 37
    goto :goto_6e

    .line 38
    :cond_25
    const-string v2, "int"

    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_6a

    .line 46
    const-string v2, "integer"

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_36

    .line 54
    goto :goto_6a

    .line 55
    :cond_36
    const-string v2, "long"

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_43

    .line 63
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->LONG:Lcom/miui/maml/util/IntentInfo$Type;

    .line 65
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 67
    goto :goto_6e

    .line 68
    :cond_43
    const-string v2, "float"

    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_50

    .line 76
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->FLOAT:Lcom/miui/maml/util/IntentInfo$Type;

    .line 78
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 80
    goto :goto_6e

    .line 81
    :cond_50
    const-string v2, "double"

    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_5d

    .line 89
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

    .line 91
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 93
    goto :goto_6e

    .line 94
    :cond_5d
    const-string v2, "boolean"

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_6e

    .line 102
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->BOOLEAN:Lcom/miui/maml/util/IntentInfo$Type;

    .line 104
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 106
    goto :goto_6e

    .line 107
    :cond_6a
    :goto_6a
    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->INT:Lcom/miui/maml/util/IntentInfo$Type;

    .line 109
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    .line 111
    :cond_6e
    :goto_6e
    iget-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->this$0:Lcom/miui/maml/util/IntentInfo;

    .line 113
    invoke-static {v1}, Lcom/miui/maml/util/IntentInfo;->access$000(Lcom/miui/maml/util/IntentInfo;)Lcom/miui/maml/data/Variables;

    .line 116
    move-result-object v1

    .line 117
    const-string v2, "expression"

    .line 119
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 126
    move-result-object v1

    .line 127
    iput-object v1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mExpression:Lcom/miui/maml/data/Expression;

    .line 129
    if-nez v1, :cond_87

    .line 131
    const-string v1, "invalid expression in IntentCommand"

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_87
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->this$0:Lcom/miui/maml/util/IntentInfo;

    .line 138
    invoke-static {v0}, Lcom/miui/maml/util/IntentInfo;->access$000(Lcom/miui/maml/util/IntentInfo;)Lcom/miui/maml/data/Variables;

    .line 141
    move-result-object v0

    .line 142
    const-string v1, "condition"

    .line 144
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 151
    move-result-object p1

    .line 152
    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mCondition:Lcom/miui/maml/data/Expression;

    .line 154
    return-void
.end method


# virtual methods
.method public getDouble()D
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mExpression:Lcom/miui/maml/data/Expression;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    return-wide v0

    .line 8
    :cond_7
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mExpression:Lcom/miui/maml/data/Expression;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public isConditionTrue()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mCondition:Lcom/miui/maml/data/Expression;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 10
    move-result-wide v2

    .line 11
    const-wide/16 v4, 0x0

    .line 13
    cmpl-double v0, v2, v4

    .line 15
    if-lez v0, :cond_11

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    :goto_12
    return v1
.end method
