.class Lcom/android/fileexplorer/FileExplorerTabActivity$10$1;
.super Ljava/lang/Object;
.source "FileExplorerTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileExplorerTabActivity$10;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/FileExplorerTabActivity$10;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/FileExplorerTabActivity$10;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$10$1;->this$1:Lcom/android/fileexplorer/FileExplorerTabActivity$10;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$10$1;->this$1:Lcom/android/fileexplorer/FileExplorerTabActivity$10;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/FileExplorerTabActivity$10;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_21

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->clearAvailableStorage()V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$10$1;->this$1:Lcom/android/fileexplorer/FileExplorerTabActivity$10;

    .line 16
    iget-object v0, v0, Lcom/android/fileexplorer/FileExplorerTabActivity$10;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->access$000(Lcom/android/fileexplorer/FileExplorerTabActivity;Z)V

    .line 22
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/android/fileexplorer/event/OtgChangeEvent;

    .line 28
    invoke-direct {v1}, Lcom/android/fileexplorer/event/OtgChangeEvent;-><init>()V

    .line 31
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 34
    :cond_21
    return-void
.end method
