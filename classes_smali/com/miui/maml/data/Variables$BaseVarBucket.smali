.class abstract Lcom/miui/maml/data/Variables$BaseVarBucket;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseVarBucket"
.end annotation


# instance fields
.field private mIndices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextIndex:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/data/Variables$1;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/data/Variables$BaseVarBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public exists(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public abstract onAddItem(I)V
.end method

.method public declared-synchronized registerVariable(Ljava/lang/String;)I
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 10
    if-nez v0, :cond_1b

    .line 12
    iget v0, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    .line 20
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget v1, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    .line 25
    invoke-virtual {p0, v1}, Lcom/miui/maml/data/Variables$BaseVarBucket;->onAddItem(I)V

    .line 28
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v1

    .line 32
    iget v2, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    .line 34
    if-ne v1, v2, :cond_27

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 38
    iput v2, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    .line 40
    :cond_27
    invoke-static {}, Lcom/miui/maml/data/Variables;->access$000()Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4b

    .line 46
    const-string v1, "Variables"

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v3, "registerVariable: "

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string p1, "  index:"

    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 79
    move-result p1
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    .line 80
    monitor-exit p0

    .line 81
    return p1

    .line 82
    :catchall_51
    move-exception p1

    .line 83
    monitor-exit p0

    .line 84
    throw p1
.end method
