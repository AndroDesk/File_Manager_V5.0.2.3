.class Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$4;
.super Ljava/lang/Object;
.source "PadNavigationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$4;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_2e

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$4;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/android/fileexplorer/util/DownloadUtils;->startDownloadPage(Landroid/content/Context;)V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$4;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 18
    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$500(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)I

    .line 21
    move-result p1

    .line 22
    sget v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->RECENT_GROUP_POSITION:I

    .line 24
    if-ne p1, v0, :cond_1c

    .line 26
    const-string p1, "最近tab页"

    .line 28
    goto :goto_2b

    .line 29
    :cond_1c
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$4;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 31
    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$500(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)I

    .line 34
    move-result p1

    .line 35
    sget v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->CLOUD_GROUP_POSITION:I

    .line 37
    if-ne p1, v0, :cond_29

    .line 39
    const-string p1, "云盘tab页"

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    const-string p1, "手机tab页"

    .line 44
    :goto_2b
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->clickDownload(Ljava/lang/String;)V

    .line 47
    :cond_2e
    return-void
.end method
