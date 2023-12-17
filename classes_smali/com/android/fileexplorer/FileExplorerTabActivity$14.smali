.class Lcom/android/fileexplorer/FileExplorerTabActivity$14;
.super Lcom/android/fileexplorer/fragment/NavInfo/EmptyFragmentNavInfo;
.source "FileExplorerTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileExplorerTabActivity;->lambda$createOtherNavigation$1(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/FileExplorerTabActivity;ILjava/lang/Class;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$14;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/fileexplorer/fragment/NavInfo/EmptyFragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$14;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/util/PageRouter;->routeToRecorder(Landroid/content/Context;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method
