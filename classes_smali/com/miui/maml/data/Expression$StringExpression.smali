.class Lcom/miui/maml/data/Expression$StringExpression;
.super Lcom/miui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringExpression"
.end annotation


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public evaluate()D
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f

    .line 9
    :try_start_8
    iget-object v0, p0, Lcom/miui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 14
    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_e} :catch_f

    .line 15
    return-wide v0

    .line 16
    :catch_f
    :cond_f
    const-wide/16 v0, 0x0

    .line 18
    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    .line 3
    return-object v0
.end method
