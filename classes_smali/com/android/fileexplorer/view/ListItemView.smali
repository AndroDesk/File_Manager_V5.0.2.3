.class public Lcom/android/fileexplorer/view/ListItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ListItemView.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;


# instance fields
.field public mArrow:Landroid/widget/ImageView;

.field public mCheckBox:Landroid/widget/CheckBox;

.field public mCloudState:Landroid/widget/ImageView;

.field public mFav:Landroid/widget/ImageView;

.field public mFileIcon:Landroid/widget/ImageView;

.field public mFileName:Landroid/widget/TextView;

.field public mFileSummary:Landroid/widget/TextView;

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

.field public mStroke:Landroid/widget/FrameLayout;

.field public mVideoTag:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getFileIconView()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFileIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getFileNameView()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFileName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStrokeView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mStroke:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V
    .registers 2

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/ListItemView;->setTransStateVisibility(I)V

    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/ListItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f032c10

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFileName:Landroid/widget/TextView;

    const v0, 0x7f032c1a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFileSummary:Landroid/widget/TextView;

    const v0, 0x7f032e7c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mStroke:Landroid/widget/FrameLayout;

    const v0, 0x7f032c14

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFileIcon:Landroid/widget/ImageView;

    const v0, 0x7f032ce5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFav:Landroid/widget/ImageView;

    const v0, 0x1020001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f032c42

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mArrow:Landroid/widget/ImageView;

    const v0, 0x7f03291f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mVideoTag:Landroid/widget/ImageView;

    const v0, 0x7f032d63

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mCloudState:Landroid/widget/ImageView;

    const v0, 0x7f032d60

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cloud/widget/TransferStatusProgress;

    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    return-void
.end method

.method public setArrowVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setCheckableVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mCloudState:Landroid/widget/ImageView;

    if-eqz v0, :cond_3f

    const/4 v0, -0x1

    sget-object v1, Lcom/android/fileexplorer/view/ListItemView$1;->$SwitchMap$com$android$cloud$util$CloudFileUtils$FileCloudState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_38

    const/4 v1, 0x2

    if-eq p1, v1, :cond_29

    const/4 v1, 0x3

    if-eq p1, v1, :cond_25

    const/4 v1, 0x4

    if-eq p1, v1, :cond_21

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1d

    goto :goto_2c

    :cond_1d
    const v0, 0x7f080226

    goto :goto_2c

    :cond_21
    const v0, 0x7f080225

    goto :goto_2c

    :cond_25
    const v0, 0x7f080224

    goto :goto_2c

    :cond_29
    const v0, 0x7f080223

    :goto_2c
    iget-object p1, p0, Lcom/android/fileexplorer/view/ListItemView;->mCloudState:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/ListItemView;->mCloudState:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3f

    :cond_38
    iget-object p1, p0, Lcom/android/fileexplorer/view/ListItemView;->mCloudState:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public setFavVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFav:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setFileName(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFileName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFileSummary(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFileSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/ListItemView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public setTransState(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/CloudFileItem;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p2}, Lcom/android/cloud/bean/CloudFileItem;->getCloudLocalFileId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b7

    if-nez p1, :cond_13

    goto/16 :goto_b7

    :cond_13
    const-string v0, "status:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiDrive_LOG"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v0

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_7e

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/cloud/bean/CloudFileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/ListItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/ListItemView;->setTransStateVisibility(I)V

    goto :goto_8c

    :cond_76
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/ListItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    return-void

    :cond_7a
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/ListItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    return-void

    :cond_7e
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8c

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/ListItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    return-void

    :cond_8c
    :goto_8c
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/ListItemView;->setTransStateVisibility(I)V

    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/ListItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    return-void

    :cond_95
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/ListItemView;->setTransStateVisibility(I)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/ListItemView;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_DOWNLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/ListItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result p2

    if-ltz p2, :cond_ba

    iget-object p2, p0, Lcom/android/fileexplorer/view/ListItemView;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    goto :goto_ba

    :cond_b7
    :goto_b7
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/ListItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    :cond_ba
    :goto_ba
    return-void
.end method

.method public setTransStateVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public setVideoTagVisible(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mVideoTag:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_9

    const/4 p1, 0x0

    goto :goto_b

    :cond_9
    const/16 p1, 0x8

    :goto_b
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
