.class public Lcom/android/fileexplorer/fragment/ImagePreviewFragment;
.super Lcom/android/fileexplorer/fragment/LazyFragment;
.source "ImagePreviewFragment.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/fragment/ImagePreviewFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/ImagePreviewFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;-><init>()V

    if-eqz p0, :cond_a

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

    const v0, 0x7f032e84

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mImageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/ImagePreviewFragment$1;-><init>(Lcom/android/fileexplorer/fragment/ImagePreviewFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->loadImage()V

    return-void
.end method

.method public loadImage()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cloud/util/ColorGamutUtil;->isSupportColorGamut(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v2, :cond_3a

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    const/4 v2, 0x3

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getThumbnailUrl(ILjava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getThumbnailUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->loadPreviewPic(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_65

    :cond_3a
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gif"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->loadGifPic(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_65

    :cond_58
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v3, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->loadPreviewPic(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :goto_65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "image_info"

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    :cond_17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-nez v0, :cond_25

    if-eqz p1, :cond_25

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    :cond_25
    const p1, 0x7f12014d

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/FileIconHelper;->clear(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->hide()V

    :cond_10
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ImagePreviewFragment;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    const-string v1, "image_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
