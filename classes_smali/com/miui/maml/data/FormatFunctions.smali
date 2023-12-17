.class public Lcom/miui/maml/data/FormatFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "FormatFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/FormatFunctions$Fun;
    }
.end annotation


# instance fields
.field private final mFun:Lcom/miui/maml/data/FormatFunctions$Fun;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    iput-object p1, p0, Lcom/miui/maml/data/FormatFunctions;->mFun:Lcom/miui/maml/data/FormatFunctions$Fun;

    return-void
.end method

.method public static load()V
    .registers 3

    new-instance v0, Lcom/miui/maml/data/FormatFunctions;

    sget-object v1, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_DATE:Lcom/miui/maml/data/FormatFunctions$Fun;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/FormatFunctions;-><init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V

    const-string v1, "formatDate"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lcom/miui/maml/data/FormatFunctions;

    sget-object v1, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_FLOAT:Lcom/miui/maml/data/FormatFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/FormatFunctions;-><init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V

    const-string v1, "formatFloat"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lcom/miui/maml/data/FormatFunctions;

    sget-object v1, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_INT:Lcom/miui/maml/data/FormatFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/FormatFunctions;-><init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V

    const-string v1, "formatInt"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    return-void
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .registers 3

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .registers 8

    const/4 p2, 0x0

    aget-object v0, p1, p2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    sget-object v2, Lcom/miui/maml/data/FormatFunctions$1;->$SwitchMap$com$miui$maml$data$FormatFunctions$Fun:[I

    iget-object v3, p0, Lcom/miui/maml/data/FormatFunctions;->mFun:Lcom/miui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_47

    const/4 v4, 0x2

    if-eq v2, v4, :cond_33

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1f

    goto :goto_46

    :cond_1f
    :try_start_1f
    new-array v2, v3, [Ljava/lang/Object;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_33
    new-array v2, v3, [Ljava/lang/Object;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, p2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_45
    .catch Ljava/util/IllegalFormatException; {:try_start_1f .. :try_end_45} :catch_46

    return-object p1

    :catch_46
    :goto_46
    return-object v1

    :cond_47
    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    double-to-long p1, p1

    invoke-static {v0, p1, p2}, Lcom/miui/maml/data/DateTimeVariableUpdater;->formatDate(Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .registers 1

    return-void
.end method
