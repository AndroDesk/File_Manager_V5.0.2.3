.class abstract Lcom/miui/maml/data/Expression$VariableExpression;
.super Lcom/miui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VariableExpression"
.end annotation


# instance fields
.field public mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mName:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 8
    invoke-direct {v0, p2, p1, p3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 11
    iput-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 13
    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getIndex()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getVersion()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
