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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Lcom/android/fileexplorer/service/IInitCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;->this$0:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    iput-object p2, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;->val$callback:Lcom/android/fileexplorer/service/IInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFinish(I)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;->this$0:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;->val$callback:Lcom/android/fileexplorer/service/IInitCallback;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->access$100(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Lcom/android/fileexplorer/service/IInitCallback;)V

    iget-object p1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;->this$0:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->access$202(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Z)Z

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$1;->this$0:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    invoke-static {v0}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->access$300(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;)Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->unRegisterOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    invoke-static {}, Lcom/android/fileexplorer/service/RecentManagerService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "init done scan finish"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
