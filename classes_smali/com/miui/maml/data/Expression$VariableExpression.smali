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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mName:Ljava/lang/String;

    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {v0, p2, p1, p3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getIndex()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getVersion()I

    move-result v0

    return v0
.end method