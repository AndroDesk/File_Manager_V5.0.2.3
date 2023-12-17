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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/maml/data/Variables$BaseVarBucket;-><init>(Lcom/miui/maml/data/Variables$1;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/data/Variables$1;)V
    .registers 2

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

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/data/Variables$ValueInfo;

    if-nez p1, :cond_d

    goto :goto_f

    :cond_d
    iget-object v0, p1, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_f} :catch_14
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_14
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getVer(I)I
    .registers 4

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    iget-object v1, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/data/Variables$ValueInfo;

    if-nez p1, :cond_d

    goto :goto_f

    :cond_d
    iget v0, p1, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_f} :catch_14
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit p0

    return v0

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_14
    monitor-exit p0

    return v0
.end method

.method public onAddItem(I)V
    .registers 4

    :goto_0
    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_f

    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

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

    monitor-enter p0

    if-gez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/Variables$ValueInfo;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/miui/maml/data/Variables$ValueInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/miui/maml/data/Variables$ValueInfo;-><init>(Ljava/lang/Object;I)V

    iget-object p2, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_1b
    invoke-virtual {v0, p2}, Lcom/miui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_1e} :catch_22
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    goto :goto_22

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_22
    :goto_22
    monitor-exit p0

    return-void
.end method

.method public reset()V
    .registers 4

    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/data/Variables$ValueInfo;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/miui/maml/data/Variables$ValueInfo;->reset()V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return-void
.end method
