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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/RootExpression;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/maml/data/ExpressionVisitor;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lcom/miui/maml/data/RootExpression;

    return-void
.end method


# virtual methods
.method public visit(Lcom/miui/maml/data/Expression;)V
    .registers 6

    instance-of v0, p1, Lcom/miui/maml/data/Expression$VariableExpression;

    if-eqz v0, :cond_1f

    move-object v0, p1

    check-cast v0, Lcom/miui/maml/data/Expression$VariableExpression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    iget-object v1, p0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lcom/miui/maml/data/RootExpression;

    new-instance v2, Lcom/miui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression$VariableExpression;->getIndex()I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression$VariableExpression;->getVersion()I

    move-result v0

    instance-of p1, p1, Lcom/miui/maml/data/Expression$NumberVariableExpression;

    invoke-direct {v2, v3, v0, p1}, Lcom/miui/maml/data/RootExpression$VarVersion;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Lcom/miui/maml/data/RootExpression;->addVarVersion(Lcom/miui/maml/data/RootExpression$VarVersion;)V

    goto :goto_47

    :cond_1f
    instance-of v0, p1, Lcom/miui/maml/data/Expression$FunctionExpression;

    if-eqz v0, :cond_47

    check-cast p1, Lcom/miui/maml/data/Expression$FunctionExpression;

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression$FunctionExpression;->getFunName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rand"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "eval"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "preciseeval"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    :cond_41
    iget-object p1, p0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lcom/miui/maml/data/RootExpression;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/maml/data/RootExpression;->access$002(Lcom/miui/maml/data/RootExpression;Z)Z

    :cond_47
    :goto_47
    return-void
.end method
