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
.method private constructor <init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/data/FormatFunctions;->mFun:Lcom/miui/maml/data/FormatFunctions$Fun;

    .line 6
    return-void
.end method

.method public static load()V
    .registers 3

    .line 1
    new-instance v0, Lcom/miui/maml/data/FormatFunctions;

    .line 3
    sget-object v1, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_DATE:Lcom/miui/maml/data/FormatFunctions$Fun;

    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/FormatFunctions;-><init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V

    .line 9
    const-string v1, "formatDate"

    .line 11
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 14
    new-instance v0, Lcom/miui/maml/data/FormatFunctions;

    .line 16
    sget-object v1, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_FLOAT:Lcom/miui/maml/data/FormatFunctions$Fun;

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/FormatFunctions;-><init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V

    .line 21
    const-string v1, "formatFloat"

    .line 23
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 26
    new-instance v0, Lcom/miui/maml/data/FormatFunctions;

    .line 28
    sget-object v1, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_INT:Lcom/miui/maml/data/FormatFunctions$Fun;

    .line 30
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/FormatFunctions;-><init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V

    .line 33
    const-string v1, "formatInt"

    .line 35
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 38
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

    .line 1
    const/4 p2, 0x0

    .line 2
    aget-object v0, p1, p2

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-object v1

    .line 12
    :cond_b
    sget-object v2, Lcom/miui/maml/data/FormatFunctions$1;->$SwitchMap$com$miui$maml$data$FormatFunctions$Fun:[I

    .line 14
    iget-object v3, p0, Lcom/miui/maml/data/FormatFunctions;->mFun:Lcom/miui/maml/data/FormatFunctions$Fun;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result v3

    .line 20
    aget v2, v2, v3

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v2, v3, :cond_47

    .line 25
    const/4 v4, 0x2

    .line 26
    if-eq v2, v4, :cond_33

    .line 28
    const/4 v4, 0x3

    .line 29
    if-eq v2, v4, :cond_1f

    .line 31
    goto :goto_46

    .line 32
    :cond_1f
    :try_start_1f
    new-array v2, v3, [Ljava/lang/Object;

    .line 34
    aget-object p1, p1, v3

    .line 36
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 39
    move-result-wide v3

    .line 40
    double-to-int p1, v3

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p1

    .line 45
    aput-object p1, v2, p2

    .line 47
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_33
    new-array v2, v3, [Ljava/lang/Object;

    .line 54
    aget-object p1, p1, v3

    .line 56
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 59
    move-result-wide v3

    .line 60
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 63
    move-result-object p1

    .line 64
    aput-object p1, v2, p2

    .line 66
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    move-result-object p1
    :try_end_45
    .catch Ljava/util/IllegalFormatException; {:try_start_1f .. :try_end_45} :catch_46

    .line 70
    return-object p1

    .line 71
    :catch_46
    :goto_46
    return-object v1

    .line 72
    :cond_47
    aget-object p1, p1, v3

    .line 74
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 77
    move-result-wide p1

    .line 78
    double-to-long p1, p1

    .line 79
    invoke-static {v0, p1, p2}, Lcom/miui/maml/data/DateTimeVariableUpdater;->formatDate(Ljava/lang/CharSequence;J)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method

.method public reset()V
    .registers 1

    return-void
.end method
