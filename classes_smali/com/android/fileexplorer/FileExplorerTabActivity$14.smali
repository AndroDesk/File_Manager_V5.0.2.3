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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/FileExplorerTabActivity;ILjava/lang/Class;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$14;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/fileexplorer/fragment/NavInfo/EmptyFragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$14;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/util/PageRouter;->routeToRecorder(Landroid/content/Context;)V

    const/4 p1, 0x0

    return p1
.end method
