.class Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;
.super Ljava/lang/Object;
.source "RecentManagerService.java"

# interfaces
.implements Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->init(Lcom/android/fileexplorer/service/IInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

.field public final synthetic val$callback:Lcom/android/fileexplorer/service/IInitCallback;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Lcom/android/fileexplorer/service/IInitCallback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;->this$0:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;->val$callback:Lcom/android/fileexplorer/service/IInitCallback;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onScanFinish(I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;->this$0:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;->val$callback:Lcom/android/fileexplorer/service/IInitCallback;

    .line 5
    invoke-static {p1, v0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->access$100(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Lcom/android/fileexplorer/service/IInitCallback;)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;->this$0:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->access$202(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Z)Z

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;->this$0:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->access$300(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;)Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->unRegisterOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/service/RecentManagerService;->access$000()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    const-string v0, "init done scan finish"

    .line 33
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method
