.class Lcom/android/fileexplorer/apptag/MiFileListManager$2$1;
.super Ljava/lang/Object;
.source "MiFileListManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/apptag/MiFileListManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/apptag/MiFileListManager$2;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/apptag/MiFileListManager$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$2$1;->this$1:Lcom/android/fileexplorer/apptag/MiFileListManager$2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$2$1;->this$1:Lcom/android/fileexplorer/apptag/MiFileListManager$2;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/apptag/MiFileListManager$2;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$500(Lcom/android/fileexplorer/apptag/MiFileListManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1c

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/fileexplorer/apptag/MiFileListManager$OnAppTagScanListener;

    .line 25
    invoke-interface {v1}, Lcom/android/fileexplorer/apptag/MiFileListManager$OnAppTagScanListener;->onAppTagScanFinish()V

    .line 28
    goto :goto_c

    .line 29
    :cond_1c
    return-void
.end method
