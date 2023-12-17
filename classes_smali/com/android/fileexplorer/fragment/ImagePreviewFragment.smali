.class public Lcom/android/fileexplorer/fragment/ImagePreviewFragment;
.super Lcom/android/fileexplorer/fragment/LazyFragment;
.source "ImagePreviewFragment.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/fragment/ImagePreviewFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/ImagePreviewFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d009f

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    .line 1
    const v0, 0x7f0a0312

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/widget/ImageView;

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mImageView:Landroid/widget/ImageView;

    .line 12
    new-instance v0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment$1;

    .line 14
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/ImagePreviewFragment$1;-><init>(Lcom/android/fileexplorer/fragment/ImagePreviewFragment;)V

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->loadImage()V

    .line 23
    return-void
.end method

.method public loadImage()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/android/cloud/util/ColorGamutUtil;->isSupportColorGamut(Landroid/content/Context;)Z

    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 16
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 18
    if-eqz v2, :cond_3a

    .line 20
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3a

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 30
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2, v3}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getThumbnailUrl(ILjava/lang/String;)Ljava/lang/String;

    .line 40
    const/4 v2, 0x5

    .line 41
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-static {v2, v1}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getThumbnailUrl(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mImageView:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->loadPreviewPic(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 58
    goto :goto_65

    .line 59
    :cond_3a
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 61
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    const-string v2, "gif"

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_58

    .line 75
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 78
    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mImageView:Landroid/widget/ImageView;

    .line 81
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 83
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->loadGifPic(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 88
    goto :goto_65

    .line 89
    :cond_58
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 92
    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mImageView:Landroid/widget/ImageView;

    .line 95
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 97
    iget-object v3, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->loadPreviewPic(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 102
    :goto_65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "image_info"

    .line 10
    if-eqz v0, :cond_17

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 26
    if-nez v0, :cond_25

    .line 28
    if-eqz p1, :cond_25

    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 36
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 38
    :cond_25
    const p1, 0x7f12014d

    .line 41
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 44
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mImageView:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/FileIconHelper;->clear(Landroid/view/View;)V

    .line 13
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_10

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->hide()V

    .line 17
    :cond_10
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    const-string v1, "image_info"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 11
    return-void
.end method
