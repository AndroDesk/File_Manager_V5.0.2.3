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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/FileExplorerTabActivity$10;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$10$1;->this$1:Lcom/android/fileexplorer/FileExplorerTabActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$10$1;->this$1:Lcom/android/fileexplorer/FileExplorerTabActivity$10;

    iget-object v0, v0, Lcom/android/fileexplorer/FileExplorerTabActivity$10;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->clearAvailableStorage()V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$10$1;->this$1:Lcom/android/fileexplorer/FileExplorerTabActivity$10;

    iget-object v0, v0, Lcom/android/fileexplorer/FileExplorerTabActivity$10;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->access$000(Lcom/android/fileexplorer/FileExplorerTabActivity;Z)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/event/OtgChangeEvent;

    invoke-direct {v1}, Lcom/android/fileexplorer/event/OtgChangeEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_21
    return-void
.end method
