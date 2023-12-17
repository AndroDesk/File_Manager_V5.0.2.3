.class Lcom/android/fileexplorer/service/DocSnapShotLoader$2;
.super Landroid/os/Handler;
.source "DocSnapShotLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/DocSnapShotLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/service/DocSnapShotLoader;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->access$000(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    check-cast p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;

    .line 12
    iget-object v1, p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->result:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoadSnapshotResult;

    .line 14
    if-eqz v1, :cond_12

    .line 16
    invoke-interface {v1, p1}, Lcom/android/fileexplorer/service/DocSnapShotLoader$LoadSnapshotResult;->loadSuccess(Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;)V

    .line 19
    :cond_12
    iget-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 21
    invoke-static {v1}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->access$100(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Lmiuix/core/util/Pools$SimplePool;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, p1}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 30
    invoke-static {p1}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->access$000(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Ljava/util/Map;

    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2e

    .line 40
    iget-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-static {p1, v1}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->access$202(Lcom/android/fileexplorer/service/DocSnapShotLoader;Z)Z

    .line 46
    goto :goto_3e

    .line 47
    :cond_2e
    iget-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 49
    invoke-static {p1}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->access$400(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Landroid/os/Handler;

    .line 52
    move-result-object p1

    .line 53
    new-instance v1, Lcom/android/fileexplorer/service/DocSnapShotLoader$2$1;

    .line 55
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader$2$1;-><init>(Lcom/android/fileexplorer/service/DocSnapShotLoader$2;)V

    .line 58
    const-wide/16 v2, 0x14

    .line 60
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    :goto_3e
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :catchall_40
    move-exception p1

    .line 66
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    .line 67
    throw p1
.end method
