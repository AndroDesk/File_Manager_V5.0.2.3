.class public Lcom/android/fileexplorer/pad/fragment/PadUsbFileDetailFragment;
.super Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;
.source "PadUsbFileDetailFragment.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/pad/fragment/PadUsbFileDetailFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadUsbFileDetailFragment;->lambda$onFileChange$0()V

    return-void
.end method

.method private synthetic lambda$onFileChange$0()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->updateUI()V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->initView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mBtnOpen:Landroid/widget/Button;

    if-eqz p1, :cond_c

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public onBack()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isRootPath()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    invoke-super {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->onBack()Z

    move-result v0

    return v0
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 4

    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    new-instance v0, Landroidx/activity/b;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
