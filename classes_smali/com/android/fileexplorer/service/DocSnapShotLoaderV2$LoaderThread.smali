.class Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$LoaderThread;
.super Landroid/os/HandlerThread;
.source "DocSnapShotLoaderV2.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoaderThread"
.end annotation


# static fields
.field private static final LOADER_THREAD_NAME:Ljava/lang/String; = "LocationLoader"


# instance fields
.field private mLoaderThreadHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$LoaderThread;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;

    const-string p1, "LocationLoader"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;

    invoke-static {}, Lcom/android/fileexplorer/model/DocSnapshotManager;->getInstance()Lcom/android/fileexplorer/model/DocSnapshotManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;->sizeDes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/model/DocSnapshotManager;->snapshot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;->snapshot:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$LoaderThread;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;

    invoke-static {v0}, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;->access$400(Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method

.method public requestLoading(Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$DocSnapShot;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
