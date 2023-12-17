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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/MiDriveUtils;->startMiDrive(Landroid/content/Context;)V

    const-string p1, "click_midrive_card"

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;)V

    :cond_14
    return-void
.end method
