.class public Lcom/miui/maml/util/IndexedStringVariable;
.super Lcom/miui/maml/data/IndexedVariable;
.source "IndexedStringVariable.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    return-void
.end method
