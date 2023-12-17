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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/DocSnapShotLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    invoke-static {v0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->access$000(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;

    iget-object v1, p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->result:Lcom/android/fileexplorer/service/DocSnapShotLoader$LoadSnapshotResult;

    if-eqz v1, :cond_12

    invoke-interface {v1, p1}, Lcom/android/fileexplorer/service/DocSnapShotLoader$LoadSnapshotResult;->loadSuccess(Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;)V

    :cond_12
    iget-object v1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    invoke-static {v1}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->access$100(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Lmiuix/core/util/Pools$SimplePool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    invoke-static {p1}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->access$000(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->access$202(Lcom/android/fileexplorer/service/DocSnapShotLoader;Z)Z

    goto :goto_3e

    :cond_2e
    iget-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$2;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    invoke-static {p1}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->access$400(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/android/fileexplorer/service/DocSnapShotLoader$2$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/service/DocSnapShotLoader$2$1;-><init>(Lcom/android/fileexplorer/service/DocSnapShotLoader$2;)V

    const-wide/16 v2, 0x14

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw p1
.end method
