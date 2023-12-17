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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/apptag/MiFileListManager;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    iput-boolean p2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->val$manual:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$000(Lcom/android/fileexplorer/apptag/MiFileListManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    :try_start_f
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    iget-boolean v2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->val$manual:Z

    invoke-static {v1, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$100(Lcom/android/fileexplorer/apptag/MiFileListManager;Z)I

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_33

    :catch_18
    move-exception v1

    const-string v2, "getAllFilesList error: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiFileListManager"

    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v0

    :goto_33
    iget-object v2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    invoke-static {v2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$000(Lcom/android/fileexplorer/apptag/MiFileListManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$1;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$400(Lcom/android/fileexplorer/apptag/MiFileListManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/fileexplorer/apptag/MiFileListManager$1$1;

    invoke-direct {v2, p0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager$1$1;-><init>(Lcom/android/fileexplorer/apptag/MiFileListManager$1;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
