.class Lcom/android/fileexplorer/apptag/MiFileListManager$1;
.super Ljava/lang/Object;
.source "MiFileListManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

.field public final synthetic val$manual:Z


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/apptag/MiFileListManager;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 3
    iput-boolean p2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->val$manual:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$000(Lcom/android/fileexplorer/apptag/MiFileListManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :try_start_f
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 18
    iget-boolean v2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->val$manual:Z

    .line 20
    invoke-static {v1, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$100(Lcom/android/fileexplorer/apptag/MiFileListManager;Z)I

    .line 23
    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_18

    .line 24
    goto :goto_33

    .line 25
    :catch_18
    move-exception v1

    .line 26
    const-string v2, "getAllFilesList error: "

    .line 28
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    const-string v3, "MiFileListManager"

    .line 45
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    move v1, v0

    .line 52
    :goto_33
    iget-object v2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 54
    invoke-static {v2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$000(Lcom/android/fileexplorer/apptag/MiFileListManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 63
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$400(Lcom/android/fileexplorer/apptag/MiFileListManager;)Landroid/os/Handler;

    .line 66
    move-result-object v0

    .line 67
    new-instance v2, Lcom/android/fileexplorer/apptag/MiFileListManager$1$1;

    .line 69
    invoke-direct {v2, p0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager$1$1;-><init>(Lcom/android/fileexplorer/apptag/MiFileListManager$1;I)V

    .line 72
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method
