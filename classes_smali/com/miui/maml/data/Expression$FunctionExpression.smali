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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 8
    invoke-static {}, Lcom/miui/maml/data/FunctionsLoader;->load()V

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;[Lcom/miui/maml/data/Expression;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    .line 6
    iput-object p2, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    .line 8
    iput-object p3, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFunName:Ljava/lang/String;

    .line 10
    invoke-direct {p0, p3}, Lcom/miui/maml/data/Expression$FunctionExpression;->parseFunction(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method private parseFunction(Ljava/lang/String;)V
    .registers 8

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_e

    .line 13
    move v3, v1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v3, v2

    .line 16
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v5, "invalid function:"

    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    invoke-static {v3, v4}, Lcom/miui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 36
    iput-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 38
    iget-object v3, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    .line 40
    array-length v3, v3

    .line 41
    iget v0, v0, Lcom/miui/maml/data/Expression$FunctionImpl;->params:I

    .line 43
    if-lt v3, v0, :cond_2d

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move v1, v2

    .line 47
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v2, "parameters count not matching for function: "

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-static {v1, p1}, Lcom/miui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 67
    return-void
.end method

.method public static registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 9
    if-eqz p1, :cond_20

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v0, "duplicated function name registation: "

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    const-string p1, "Expression"

    .line 30
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_20
    return-void
.end method

.method public static removeFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V
    .registers 2

    .line 1
    sget-object p1, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public static resetFunctions()V
    .registers 2

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_20

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 29
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression$FunctionImpl;->reset()V

    .line 32
    goto :goto_a

    .line 33
    :cond_20
    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .registers 5

    .line 1
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_4
    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v2, v1

    .line 8
    if-ge v0, v2, :cond_11

    .line 10
    aget-object v1, v1, v0

    .line 12
    invoke-virtual {v1, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 17
    goto :goto_4

    .line 18
    :cond_11
    return-void
.end method

.method public evaluate()D
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    .line 5
    iget-object v2, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    .line 5
    iget-object v2, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getFunName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFunName:Ljava/lang/String;

    .line 3
    return-object v0
.end method
