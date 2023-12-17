.class Lmiuix/core/util/Pools$BasePool$1;
.super Ljava/lang/Object;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/Pools$BasePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/core/util/Pools$BasePool;


# direct methods
.method public constructor <init>(Lmiuix/core/util/Pools$BasePool;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/core/util/Pools$BasePool$1;->this$0:Lmiuix/core/util/Pools$BasePool;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public finalize()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool$1;->this$0:Lmiuix/core/util/Pools$BasePool;

    .line 3
    invoke-virtual {v0}, Lmiuix/core/util/Pools$BasePool;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 6
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9
    return-void

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 14
    throw v0
.end method
