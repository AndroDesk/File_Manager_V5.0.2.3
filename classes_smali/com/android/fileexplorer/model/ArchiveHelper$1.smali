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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/model/ArchiveHelper;Ljava/lang/ref/WeakReference;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/model/ArchiveHelper$1;->this$0:Lcom/android/fileexplorer/model/ArchiveHelper;

    iput-object p2, p0, Lcom/android/fileexplorer/model/ArchiveHelper$1;->val$weakRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/android/fileexplorer/model/ArchiveHelper$1;->val$monitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :cond_0
    const-wide/16 v0, 0x64

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper$1;->val$weakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper$1;->val$monitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zip operation canceled"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper$1;->val$monitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    iget-object v0, v0, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2d

    if-eq v0, v1, :cond_0

    goto :goto_31

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_31
    return-void
.end method
