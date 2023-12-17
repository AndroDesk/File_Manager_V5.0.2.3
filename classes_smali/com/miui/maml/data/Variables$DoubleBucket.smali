.class Lcom/miui/maml/data/Variables$DoubleBucket;
.super Lcom/miui/maml/data/Variables$BaseVarBucket;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleBucket"
.end annotation


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/data/Variables$DoubleInfo;",
            ">;"
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

    iput-object v0, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/data/Variables$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/maml/data/Variables$DoubleBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized exists(I)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    if-gez p1, :cond_5

    goto :goto_e

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_b} :catch_13
    .catchall {:try_start_5 .. :try_end_b} :catchall_10

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :cond_e
    :goto_e
    monitor-exit p0

    return v0

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_13
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized get(I)D
    .registers 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/data/Variables$DoubleInfo;

    if-nez p1, :cond_e

    goto :goto_10

    :cond_e
    iget-wide v0, p1, Lcom/miui/maml/data/Variables$DoubleInfo;->mValue:D
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_10} :catch_15
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    :goto_10
    monitor-exit p0

    return-wide v0

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_15
    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized getVer(I)I
    .registers 4

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    iget-object v1, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/data/Variables$DoubleInfo;

    if-nez p1, :cond_d

    goto :goto_f

    :cond_d
    iget v0, p1, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I
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
    iget-object v0, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_f

    iget-object v0, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_f
    return-void
.end method

.method public final declared-synchronized put(ID)V
    .registers 6

    monitor-enter p0

    if-gez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/Variables$DoubleInfo;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/miui/maml/data/Variables$DoubleInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/miui/maml/data/Variables$DoubleInfo;-><init>(DI)V

    iget-object p2, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_1b
    invoke-virtual {v0, p2, p3}, Lcom/miui/maml/data/Variables$DoubleInfo;->setValue(D)V
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
    .registers 6

    iget-object v0, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Lcom/miui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/data/Variables$DoubleInfo;

    if-eqz v2, :cond_18

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/Variables$DoubleInfo;->setValue(D)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    return-void
.end method
