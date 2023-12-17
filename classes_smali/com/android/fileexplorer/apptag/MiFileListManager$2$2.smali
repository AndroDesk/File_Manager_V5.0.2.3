.class Lcom/android/fileexplorer/apptag/MiFileListManager$2$2;
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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/apptag/MiFileListManager$2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$2$2;->this$1:Lcom/android/fileexplorer/apptag/MiFileListManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$2$2;->this$1:Lcom/android/fileexplorer/apptag/MiFileListManager$2;

    iget-object v0, v0, Lcom/android/fileexplorer/apptag/MiFileListManager$2;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$300(Lcom/android/fileexplorer/apptag/MiFileListManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;->onScanFinish(I)V

    goto :goto_c

    :cond_1d
    return-void
.end method
