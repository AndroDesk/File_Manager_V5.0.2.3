.class Lcom/miui/maml/data/RootExpression$VarVersionVisitor;
.super Lcom/miui/maml/data/ExpressionVisitor;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarVersionVisitor"
.end annotation


# instance fields
.field private mRoot:Lcom/miui/maml/data/RootExpression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/RootExpression;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/ExpressionVisitor;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lcom/miui/maml/data/RootExpression;

    .line 6
    return-void
.end method


# virtual methods
.method public visit(Lcom/miui/maml/data/Expression;)V
    .registers 6

    .line 1
    instance-of v0, p1, Lcom/miui/maml/data/Expression$VariableExpression;

    .line 3
    if-eqz v0, :cond_1f

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/miui/maml/data/Expression$VariableExpression;

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 11
    iget-object v1, p0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lcom/miui/maml/data/RootExpression;

    .line 13
    new-instance v2, Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 15
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression$VariableExpression;->getIndex()I

    .line 18
    move-result v3

    .line 19
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression$VariableExpression;->getVersion()I

    .line 22
    move-result v0

    .line 23
    instance-of p1, p1, Lcom/miui/maml/data/Expression$NumberVariableExpression;

    .line 25
    invoke-direct {v2, v3, v0, p1}, Lcom/miui/maml/data/RootExpression$VarVersion;-><init>(IIZ)V

    .line 28
    invoke-virtual {v1, v2}, Lcom/miui/maml/data/RootExpression;->addVarVersion(Lcom/miui/maml/data/RootExpression$VarVersion;)V

    .line 31
    goto :goto_47

    .line 32
    :cond_1f
    instance-of v0, p1, Lcom/miui/maml/data/Expression$FunctionExpression;

    .line 34
    if-eqz v0, :cond_47

    .line 36
    check-cast p1, Lcom/miui/maml/data/Expression$FunctionExpression;

    .line 38
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression$FunctionExpression;->getFunName()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    const-string v0, "rand"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_41

    .line 50
    const-string v0, "eval"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_41

    .line 58
    const-string v0, "preciseeval"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_47

    .line 66
    :cond_41
    iget-object p1, p0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lcom/miui/maml/data/RootExpression;

    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-static {p1, v0}, Lcom/miui/maml/data/RootExpression;->access$002(Lcom/miui/maml/data/RootExpression;Z)Z

    .line 72
    :cond_47
    :goto_47
    return-void
.end method
