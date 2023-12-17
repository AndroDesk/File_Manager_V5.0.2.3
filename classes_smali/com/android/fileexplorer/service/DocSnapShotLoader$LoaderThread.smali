.class Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;
.super Landroid/os/HandlerThread;
.source "DocSnapShotLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/DocSnapShotLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoaderThread"
.end annotation


# static fields
.field private static final LOADER_THREAD_NAME:Ljava/lang/String; = "LocationLoader"


# instance fields
.field private mLoaderThreadHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/service/DocSnapShotLoader;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 3
    const-string p1, "LocationLoader"

    .line 5
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/model/DocSnapshotManager;->getInstance()Lcom/android/fileexplorer/model/DocSnapshotManager;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->path:Ljava/lang/String;

    .line 11
    iget-object v2, p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->sizeDes:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/model/DocSnapshotManager;->snapshot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;->snapshot:Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoader;

    .line 21
    invoke-static {v0}, Lcom/android/fileexplorer/service/DocSnapShotLoader;->access$400(Lcom/android/fileexplorer/service/DocSnapShotLoader;)Landroid/os/Handler;

    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 33
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method public requestLoading(Lcom/android/fileexplorer/service/DocSnapShotLoader$DocSnapShot;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 7
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 26
    return-void
.end method
