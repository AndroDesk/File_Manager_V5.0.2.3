.class Lcom/android/fileexplorer/apptag/MiFileListManager$1$1;
.super Ljava/lang/Object;
.source "MiFileListManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/apptag/MiFileListManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/apptag/MiFileListManager$1;

.field public final synthetic val$newFileCount:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/apptag/MiFileListManager$1;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1$1;->this$1:Lcom/android/fileexplorer/apptag/MiFileListManager$1;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1$1;->val$newFileCount:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1$1;->this$1:Lcom/android/fileexplorer/apptag/MiFileListManager$1;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    move-result-wide v1

    .line 9
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$202(Lcom/android/fileexplorer/apptag/MiFileListManager;J)J

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1$1;->this$1:Lcom/android/fileexplorer/apptag/MiFileListManager$1;

    .line 14
    iget-object v0, v0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$300(Lcom/android/fileexplorer/apptag/MiFileListManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_29

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;

    .line 36
    iget v2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1$1;->val$newFileCount:I

    .line 38
    invoke-interface {v1, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;->onScanFinish(I)V

    .line 41
    goto :goto_17

    .line 42
    :cond_29
    return-void
.end method
