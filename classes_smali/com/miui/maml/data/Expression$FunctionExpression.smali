.class public Lcom/miui/maml/data/Expression$FunctionExpression;
.super Lcom/miui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionExpression"
.end annotation


# static fields
.field public static sFunMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/data/Expression$FunctionImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

.field private mFunName:Ljava/lang/String;

.field private mParaExps:[Lcom/miui/maml/data/Expression;

.field private mVariables:Lcom/miui/maml/data/Variables;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/miui/maml/data/FunctionsLoader;->load()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;[Lcom/miui/maml/data/Expression;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    iput-object p2, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    iput-object p3, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFunName:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/miui/maml/data/Expression$FunctionExpression;->parseFunction(Ljava/lang/String;)V

    return-void
.end method

.method private parseFunction(Ljava/lang/String;)V
    .registers 8

    sget-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/Expression$FunctionImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid function:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    iget-object v3, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    array-length v3, v3

    iget v0, v0, Lcom/miui/maml/data/Expression$FunctionImpl;->params:I

    if-lt v3, v0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameters count not matching for function: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    return-void
.end method

.method public static registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V
    .registers 3

    sget-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/data/Expression$FunctionImpl;

    if-eqz p1, :cond_20

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duplicated function name registation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Expression"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public static removeFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V
    .registers 2

    sget-object p1, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static resetFunctions()V
    .registers 2

    sget-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/data/Expression$FunctionImpl;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression$FunctionImpl;->reset()V

    goto :goto_a

    :cond_20
    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .registers 5

    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    array-length v2, v1

    if-ge v0, v2, :cond_11

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    return-void
.end method

.method public evaluate()D
    .registers 4

    iget-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    iget-object v2, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    iget-object v2, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFunName:Ljava/lang/String;

    return-object v0
.end method
