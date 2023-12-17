.class Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1$1;
.super Ljava/lang/Object;
.source "FileExplorerTabBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1$1;->this$1:Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1$1;->this$1:Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;->this$0:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_11

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1$1;->this$1:Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;

    .line 13
    iget-object v0, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;->this$0:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 15
    invoke-static {v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->access$000(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)Z

    .line 18
    :cond_11
    return-void
.end method
