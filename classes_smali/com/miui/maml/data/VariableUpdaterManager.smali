.class public Lcom/miui/maml/data/VariableUpdaterManager;
.super Ljava/lang/Object;
.source "VariableUpdaterManager.java"


# static fields
.field public static final USE_TAG_NONE:Ljava/lang/String; = "none"


# instance fields
.field private mRootRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ScreenElementRoot;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdaters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/data/VariableUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object v0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mRootRef:Ljava/lang/ref/WeakReference;

    .line 18
    return-void
.end method


# virtual methods
.method public add(Lcom/miui/maml/data/VariableUpdater;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public addFromTag(Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5b

    .line 7
    const-string v0, "none"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_5b

    .line 16
    :cond_f
    const-string v0, ","

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    array-length v0, p1

    .line 23
    const/4 v1, 0x0

    .line 24
    move v2, v1

    .line 25
    :goto_18
    if-ge v2, v0, :cond_5b

    .line 27
    aget-object v3, p1, v2

    .line 29
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x0

    .line 34
    const/16 v5, 0x2e

    .line 36
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    .line 39
    move-result v5

    .line 40
    const/4 v6, -0x1

    .line 41
    if-eq v5, v6, :cond_37

    .line 43
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 47
    add-int/lit8 v5, v5, 0x1

    .line 49
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    move-object v7, v4

    .line 54
    move-object v4, v3

    .line 55
    move-object v3, v7

    .line 56
    :cond_37
    const-string v5, "DateTime"

    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_48

    .line 64
    new-instance v3, Lcom/miui/maml/data/DateTimeVariableUpdater;

    .line 66
    invoke-direct {v3, p0, v4}, Lcom/miui/maml/data/DateTimeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    .line 72
    goto :goto_58

    .line 73
    :cond_48
    const-string v4, "Battery"

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_58

    .line 81
    new-instance v3, Lcom/miui/maml/data/BatteryVariableUpdater;

    .line 83
    invoke-direct {v3, p0}, Lcom/miui/maml/data/BatteryVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 86
    invoke-virtual {p0, v3}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    .line 89
    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_18

    .line 92
    :cond_5b
    :goto_5b
    return-void
.end method

.method public finish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/data/VariableUpdater;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableUpdater;->finish()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mRootRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/miui/maml/ScreenElementRoot;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method public init()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/data/VariableUpdater;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableUpdater;->init()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public pause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/data/VariableUpdater;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableUpdater;->pause()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public remove(Lcom/miui/maml/data/VariableUpdater;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public resume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/data/VariableUpdater;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableUpdater;->resume()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public tick(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/data/VariableUpdater;

    .line 19
    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/data/VariableUpdater;->tick(J)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method
