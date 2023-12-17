.class Lcom/miui/maml/data/Variables$VarBucket;
.super Lcom/miui/maml/data/Variables$BaseVarBucket;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarBucket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/maml/data/Variables$BaseVarBucket;"
    }
.end annotation


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/data/Variables$ValueInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/miui/maml/data/Variables$BaseVarBucket;-><init>(Lcom/miui/maml/data/Variables$1;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/data/Variables$1;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/miui/maml/data/Variables$VarBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/miui/maml/data/Variables$ValueInfo;

    .line 11
    if-nez p1, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    iget-object v0, p1, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_f} :catch_14
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 16
    :goto_f
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1

    .line 21
    :catch_14
    monitor-exit p0

    .line 22
    return-object v0
.end method

.method public declared-synchronized getVer(I)I
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, -0x1

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/miui/maml/data/Variables$ValueInfo;

    .line 11
    if-nez p1, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    iget v0, p1, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_f} :catch_14
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 16
    :goto_f
    monitor-exit p0

    .line 17
    return v0

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1

    .line 21
    :catch_14
    monitor-exit p0

    .line 22
    return v0
.end method

.method public onAddItem(I)V
    .registers 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    if-gt v0, p1, :cond_f

    .line 9
    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    goto :goto_0

    .line 16
    :cond_f
    return-void
.end method

.method public final declared-synchronized put(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    if-gez p1, :cond_5

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/miui/maml/data/Variables$ValueInfo;

    .line 14
    if-nez v0, :cond_1b

    .line 16
    new-instance v0, Lcom/miui/maml/data/Variables$ValueInfo;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p2, v1}, Lcom/miui/maml/data/Variables$ValueInfo;-><init>(Ljava/lang/Object;I)V

    .line 22
    iget-object p2, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    goto :goto_22

    .line 28
    :cond_1b
    invoke-virtual {v0, p2}, Lcom/miui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_1e} :catch_22
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    .line 31
    goto :goto_22

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    monitor-exit p0

    .line 34
    throw p1

    .line 35
    :catch_22
    :goto_22
    monitor-exit p0

    .line 36
    return-void
.end method

.method public reset()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_19

    .line 10
    iget-object v2, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/miui/maml/data/Variables$ValueInfo;

    .line 18
    if-eqz v2, :cond_16

    .line 20
    invoke-virtual {v2}, Lcom/miui/maml/data/Variables$ValueInfo;->reset()V

    .line 23
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_7

    .line 26
    :cond_19
    return-void
.end method
