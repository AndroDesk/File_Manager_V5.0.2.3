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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$4;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$4;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/DownloadUtils;->startDownloadPage(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$4;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$500(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)I

    move-result p1

    sget v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->RECENT_GROUP_POSITION:I

    if-ne p1, v0, :cond_1c

    const-string p1, "最近tab页"

    goto :goto_2b

    :cond_1c
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$4;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$500(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)I

    move-result p1

    sget v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->CLOUD_GROUP_POSITION:I

    if-ne p1, v0, :cond_29

    const-string p1, "云盘tab页"

    goto :goto_2b

    :cond_29
    const-string p1, "手机tab页"

    :goto_2b
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->clickDownload(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method
