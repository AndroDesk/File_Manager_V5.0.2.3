.class public abstract Lcom/miui/maml/data/Expression$FunctionImpl;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FunctionImpl"
.end annotation


# instance fields
.field public params:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/maml/data/Expression$FunctionImpl;->params:I

    return-void
.end method


# virtual methods
.method public abstract evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
.end method

.method public abstract evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
.end method

.method public abstract reset()V
.end method
