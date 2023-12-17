.class public Lcom/android/fileexplorer/pad/fragment/PadUsbFileDetailFragment;
.super Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;
.source "PadUsbFileDetailFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/pad/fragment/PadUsbFileDetailFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadUsbFileDetailFragment;->lambda$onFileChange$0()V

    return-void
.end method

.method private synthetic lambda$onFileChange$0()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->updateUI()V

    .line 4
    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->initView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mBtnOpen:Landroid/widget/Button;

    .line 6
    if-eqz p1, :cond_c

    .line 8
    const/16 v0, 0x8

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_c
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isRootPath()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_12
    invoke-super {p0}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->onBack()Z

    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 4

    .line 1
    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 8
    new-instance v0, Landroidx/activity/b;

    .line 10
    const/16 v1, 0x12

    .line 12
    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    return-void
.end method
