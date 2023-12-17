.class public Lcom/miui/maml/data/ContextVariables;
.super Ljava/lang/Object;
.source "ContextVariables.java"


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 11
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    return-void
.end method

.method public getBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_a

    .line 10
    return-object v0

    .line 11
    :cond_a
    instance-of v1, p1, Landroid/graphics/Bitmap;

    .line 13
    if-nez v1, :cond_f

    .line 15
    return-object v0

    .line 16
    :cond_f
    check-cast p1, Landroid/graphics/Bitmap;

    .line 18
    return-object p1
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_a

    .line 10
    return-object v0

    .line 11
    :cond_a
    instance-of v1, p1, Ljava/lang/Double;

    .line 13
    if-nez v1, :cond_f

    .line 15
    return-object v0

    .line 16
    :cond_f
    check-cast p1, Ljava/lang/Double;

    .line 18
    return-object p1
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_a

    .line 10
    return-object v0

    .line 11
    :cond_a
    instance-of v1, p1, Ljava/lang/Integer;

    .line 13
    if-nez v1, :cond_f

    .line 15
    return-object v0

    .line 16
    :cond_f
    check-cast p1, Ljava/lang/Integer;

    .line 18
    return-object p1
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_a

    .line 10
    return-object v0

    .line 11
    :cond_a
    instance-of v1, p1, Ljava/lang/Long;

    .line 13
    if-nez v1, :cond_f

    .line 15
    return-object v0

    .line 16
    :cond_f
    check-cast p1, Ljava/lang/Long;

    .line 18
    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_a
    instance-of v0, p1, Ljava/lang/String;

    .line 13
    if-nez v0, :cond_13

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    check-cast p1, Ljava/lang/String;

    .line 22
    return-object p1
.end method

.method public getVar(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public setVar(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method
