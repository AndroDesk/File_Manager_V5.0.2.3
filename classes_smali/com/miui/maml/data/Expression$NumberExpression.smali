.class public Lcom/miui/maml/data/Expression$NumberExpression;
.super Lcom/miui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberExpression"
.end annotation


# instance fields
.field private mString:Ljava/lang/String;

.field private mValue:D


# direct methods
.method public constructor <init>(D)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 3
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Expression"

    if-eqz v0, :cond_11

    const-string p1, "invalid NumberExpression: null"

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_2e

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2e

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    goto :goto_49

    .line 8
    :cond_2e
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_34} :catch_35

    goto :goto_49

    .line 9
    :catch_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid NumberExpression:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49
    return-void
.end method


# virtual methods
.method public evaluate()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    .line 3
    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-wide v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    .line 7
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    .line 15
    return-object v0
.end method

.method public setValue(D)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    .line 3
    return-void
.end method
