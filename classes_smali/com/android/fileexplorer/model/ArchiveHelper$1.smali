.class Lcom/android/fileexplorer/model/ArchiveHelper$1;
.super Ljava/lang/Object;
.source "ArchiveHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/model/ArchiveHelper;->decompressZipArchive(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/model/ArchiveHelper;

.field public final synthetic val$monitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field public final synthetic val$weakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/model/ArchiveHelper;Ljava/lang/ref/WeakReference;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/ArchiveHelper$1;->this$0:Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/model/ArchiveHelper$1;->val$weakRef:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/model/ArchiveHelper$1;->val$monitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :cond_0
    const-wide/16 v0, 0x64

    .line 3
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper$1;->val$weakRef:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 14
    if-eqz v0, :cond_24

    .line 16
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_24

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper$1;->val$monitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, v0, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->access$000()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "zip operation canceled"

    .line 33
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper$1;->val$monitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 39
    iget-object v0, v0, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    .line 41
    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2d

    .line 43
    if-eq v0, v1, :cond_0

    .line 45
    goto :goto_31

    .line 46
    :catch_2d
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    :goto_31
    return-void
.end method
