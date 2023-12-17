.class Lcom/android/fileexplorer/model/ArchiveHelper$2;
.super Ljava/lang/Object;
.source "ArchiveHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/model/ArchiveHelper;->compressZipArchiveZipNormal(Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;Ljava/lang/String;)I
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

    iput-object p1, p0, Lcom/android/fileexplorer/model/ArchiveHelper$2;->this$0:Lcom/android/fileexplorer/model/ArchiveHelper;

    iput-object p2, p0, Lcom/android/fileexplorer/model/ArchiveHelper$2;->val$weakRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/android/fileexplorer/model/ArchiveHelper$2;->val$monitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper$2;->val$weakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper$2;->val$monitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zip operation canceled"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    iget-object v1, p0, Lcom/android/fileexplorer/model/ArchiveHelper$2;->val$monitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    iget-wide v1, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->c:J

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Work Done: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_45

    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setSingleSizeDone(J)V

    :cond_45
    iget-object v0, p0, Lcom/android/fileexplorer/model/ArchiveHelper$2;->val$monitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    iget-object v0, v0, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4e

    if-eq v0, v1, :cond_0

    goto :goto_52

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_52
    return-void
.end method
