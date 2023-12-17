.class Lcom/android/fileexplorer/FileExplorerTabActivity$3;
.super Ljava/lang/Object;
.source "FileExplorerTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileExplorerTabActivity;->requestPermission(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$3;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$3;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/statistics/StatHelper;->open(Landroid/content/Intent;)V

    .line 10
    return-void
.end method
