.class Lcom/miui/maml/elements/VariableArrayElement$Var;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Var"
.end annotation


# instance fields
.field private mConst:Z

.field private mCurrentItemIsExpression:Z

.field private mIndex:I

.field private mIndexExpression:Lcom/miui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field private mVar:Lcom/miui/maml/data/IndexedVariable;

.field public final synthetic this$0:Lcom/miui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 9
    if-eqz p3, :cond_40

    .line 11
    const-string v0, "name"

    .line 13
    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    .line 19
    const-string v0, "index"

    .line 21
    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 31
    const-string p2, "const"

    .line 33
    invoke-interface {p3, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 40
    move-result p2

    .line 41
    iput-boolean p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mConst:Z

    .line 43
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 45
    iget-object p3, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 50
    move-result-object v0

    .line 51
    iget-object p1, p1, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 53
    sget-object v1, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 55
    if-eq p1, v1, :cond_3a

    .line 57
    const/4 p1, 0x1

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    const/4 p1, 0x0

    .line 60
    :goto_3b
    invoke-direct {p2, p3, v0, p1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 63
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 65
    :cond_40
    return-void
.end method

.method private update()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 9
    move-result-wide v0

    .line 10
    double-to-int v0, v0

    .line 11
    if-ltz v0, :cond_5a

    .line 13
    iget-object v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 15
    invoke-static {v1}, Lcom/miui/maml/elements/VariableArrayElement;->access$000(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v1

    .line 23
    if-lt v0, v1, :cond_19

    .line 25
    goto :goto_5a

    .line 26
    :cond_19
    iget v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 28
    if-ne v1, v0, :cond_22

    .line 30
    iget-boolean v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    .line 32
    if-nez v1, :cond_22

    .line 34
    return-void

    .line 35
    :cond_22
    iget-object v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 37
    invoke-static {v1}, Lcom/miui/maml/elements/VariableArrayElement;->access$000(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/miui/maml/elements/VariableArrayElement$Item;

    .line 47
    iget v2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 49
    if-eq v2, v0, :cond_3a

    .line 51
    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 53
    invoke-virtual {v1}, Lcom/miui/maml/elements/VariableArrayElement$Item;->isExpression()Z

    .line 56
    move-result v0

    .line 57
    iput-boolean v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    .line 59
    :cond_3a
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 61
    iget-object v0, v0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 63
    sget-object v2, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 65
    if-ne v0, v2, :cond_4c

    .line 67
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 69
    invoke-virtual {v1}, Lcom/miui/maml/elements/VariableArrayElement$Item;->evaluateStr()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 76
    goto :goto_59

    .line 77
    :cond_4c
    sget-object v2, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 79
    if-ne v0, v2, :cond_59

    .line 81
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 83
    invoke-virtual {v1}, Lcom/miui/maml/elements/VariableArrayElement$Item;->evaluate()Ljava/lang/Double;

    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 90
    :cond_59
    :goto_59
    return-void

    .line 91
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 93
    iget-object v0, v0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 95
    sget-object v1, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 97
    if-ne v0, v1, :cond_69

    .line 99
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 105
    goto :goto_74

    .line 106
    :cond_69
    sget-object v1, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 108
    if-ne v0, v1, :cond_74

    .line 110
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 112
    const-wide/16 v1, 0x0

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 117
    :cond_74
    :goto_74
    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableArrayElement$Var;->update()V

    .line 7
    return-void
.end method

.method public tick()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mConst:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableArrayElement$Var;->update()V

    .line 8
    :cond_7
    return-void
.end method
