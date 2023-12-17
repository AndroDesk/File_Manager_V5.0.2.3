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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getFileIconView()Landroid/widget/ImageView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFileIcon:Landroid/widget/ImageView;

    .line 3
    return-object v0
.end method

.method public getFileNameView()Landroid/widget/TextView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFileName:Landroid/widget/TextView;

    .line 3
    return-object v0
.end method

.method public getStrokeView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mStroke:Landroid/widget/FrameLayout;

    .line 3
    return-object v0
.end method

.method public markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V
    .registers 2

    .line 1
    const/16 p1, 0x8

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/ListItemView;->setTransStateVisibility(I)V

    .line 6
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/ListItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 11
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a0186

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFileName:Landroid/widget/TextView;

    .line 15
    const v0, 0x7f0a018c

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFileSummary:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0a03ea

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/FrameLayout;

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mStroke:Landroid/widget/FrameLayout;

    .line 37
    const v0, 0x7f0a0182

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/ImageView;

    .line 46
    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFileIcon:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0a0173

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/ImageView;

    .line 57
    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFav:Landroid/widget/ImageView;

    .line 59
    const v0, 0x1020001

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/CheckBox;

    .line 68
    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 70
    const v0, 0x7f0a01d4

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/ImageView;

    .line 79
    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mArrow:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f0a0489

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/ImageView;

    .line 90
    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mVideoTag:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f0a00f5

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/widget/ImageView;

    .line 101
    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mCloudState:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f0a00f6

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/android/cloud/widget/TransferStatusProgress;

    .line 112
    iput-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 114
    return-void
.end method

.method public setArrowVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mArrow:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    return-void
.end method

.method public setCheckableVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 6
    return-void
.end method

.method public setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mCloudState:Landroid/widget/ImageView;

    .line 3
    if-eqz v0, :cond_3f

    .line 5
    const/4 v0, -0x1

    .line 6
    sget-object v1, Lcom/android/fileexplorer/view/ListItemView$1;->$SwitchMap$com$android$cloud$util$CloudFileUtils$FileCloudState:[I

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    move-result p1

    .line 12
    aget p1, v1, p1

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq p1, v1, :cond_38

    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq p1, v1, :cond_29

    .line 20
    const/4 v1, 0x3

    .line 21
    if-eq p1, v1, :cond_25

    .line 23
    const/4 v1, 0x4

    .line 24
    if-eq p1, v1, :cond_21

    .line 26
    const/4 v1, 0x5

    .line 27
    if-eq p1, v1, :cond_1d

    .line 29
    goto :goto_2c

    .line 30
    :cond_1d
    const v0, 0x7f080226

    .line 33
    goto :goto_2c

    .line 34
    :cond_21
    const v0, 0x7f080225

    .line 37
    goto :goto_2c

    .line 38
    :cond_25
    const v0, 0x7f080224

    .line 41
    goto :goto_2c

    .line 42
    :cond_29
    const v0, 0x7f080223

    .line 45
    :goto_2c
    iget-object p1, p0, Lcom/android/fileexplorer/view/ListItemView;->mCloudState:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    iget-object p1, p0, Lcom/android/fileexplorer/view/ListItemView;->mCloudState:Landroid/widget/ImageView;

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    goto :goto_3f

    .line 57
    :cond_38
    iget-object p1, p0, Lcom/android/fileexplorer/view/ListItemView;->mCloudState:Landroid/widget/ImageView;

    .line 59
    const/16 v0, 0x8

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    :cond_3f
    :goto_3f
    return-void
.end method

.method public setFavVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFav:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    return-void
.end method

.method public setFileName(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFileName:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public setFileSummary(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mFileSummary:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/ListItemView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 3
    return-void
.end method

.method public setTransState(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/CloudFileItem;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p2}, Lcom/android/cloud/bean/CloudFileItem;->getCloudLocalFileId()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_b7

    .line 16
    if-nez p1, :cond_13

    .line 18
    goto/16 :goto_b7

    .line 20
    :cond_13
    const-string v0, "status:"

    .line 22
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", progress:"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    const-string v1, "MiDrive_LOG"

    .line 51
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 57
    move-result-object v0

    .line 58
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_95

    .line 66
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    move-result v0

    .line 74
    const/16 v1, 0x8

    .line 76
    if-eqz v0, :cond_7e

    .line 78
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_7a

    .line 88
    new-instance v0, Ljava/io/File;

    .line 90
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_76

    .line 103
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p2, p1}, Lcom/android/cloud/bean/CloudFileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 110
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/ListItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 115
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/ListItemView;->setTransStateVisibility(I)V

    .line 118
    goto :goto_8c

    .line 119
    :cond_76
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/ListItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    .line 122
    return-void

    .line 123
    :cond_7a
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/ListItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    .line 126
    return-void

    .line 127
    :cond_7e
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_8c

    .line 137
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/ListItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    .line 140
    return-void

    .line 141
    :cond_8c
    :goto_8c
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/ListItemView;->setTransStateVisibility(I)V

    .line 144
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/ListItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 149
    return-void

    .line 150
    :cond_95
    const/4 p2, 0x0

    .line 151
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/ListItemView;->setTransStateVisibility(I)V

    .line 154
    iget-object p2, p0, Lcom/android/fileexplorer/view/ListItemView;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 156
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p2, v0}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    .line 163
    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_DOWNLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 165
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/ListItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 168
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 171
    move-result p2

    .line 172
    if-ltz p2, :cond_ba

    .line 174
    iget-object p2, p0, Lcom/android/fileexplorer/view/ListItemView;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 176
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 179
    move-result p1

    .line 180
    invoke-virtual {p2, p1}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    .line 183
    goto :goto_ba

    .line 184
    :cond_b7
    :goto_b7
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/ListItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    .line 187
    :cond_ba
    :goto_ba
    return-void
.end method

.method public setTransStateVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mProgress:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setVideoTagVisible(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ListItemView;->mVideoTag:Landroid/widget/ImageView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-eqz p1, :cond_9

    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/16 p1, 0x8

    .line 12
    :goto_b
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    return-void
.end method
