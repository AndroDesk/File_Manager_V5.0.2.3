.class Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$1;
.super Ljava/lang/Object;
.source "PadNavigationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->initView(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_14

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/android/fileexplorer/util/MiDriveUtils;->startMiDrive(Landroid/content/Context;)V

    .line 16
    const-string p1, "click_midrive_card"

    .line 18
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;)V

    .line 21
    :cond_14
    return-void
.end method
