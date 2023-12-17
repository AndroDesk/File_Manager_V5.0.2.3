.class public Lcom/android/fileexplorer/view/GridItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "GridItemView.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field public mCloudState:Landroid/widget/ImageView;

.field public mFav:Landroid/widget/ImageView;

.field public mFileIcon:Landroid/widget/ImageView;

.field public mFileName:Landroid/widget/TextView;

.field public mFileSource:Landroid/widget/TextView;

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public mIsNightMode:Z

.field public mSize:Landroid/widget/TextView;

.field public mTransState:Lcom/android/cloud/widget/TransferStatusProgress;

.field public mVideoTag:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/fileexplorer/view/GridItemView;

    const-string v0, "GridItemView"

    sput-object v0, Lcom/android/fileexplorer/view/GridItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/GridItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/GridItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mIsNightMode:Z

    return-void
.end method

.method private setBottomText(Ljava/lang/String;Ljava/lang/String;Lcom/android/cloud/bean/CloudFileItem;Z)V
    .registers 7

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_3b

    if-eqz p4, :cond_17

    goto :goto_3b

    :cond_17
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mSize:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/cloud/bean/CloudFileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p2, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileSource:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/cloud/bean/CloudFileItem;->getFileSize()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_45

    :cond_3b
    :goto_3b
    iget-object p3, p0, Lcom/android/fileexplorer/view/GridItemView;->mSize:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileSource:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_45
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_25

    const v0, 0x7f032e7d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCheckBox:Landroid/widget/CheckBox;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getFileIconView()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getFileNameView()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStrokeView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V
    .registers 5

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/GridItemView;->setTransStateVisibility(I)V

    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/GridItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileItem;->getFileSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110065

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/fileexplorer/view/GridItemView;->setBottomText(Ljava/lang/String;Ljava/lang/String;Lcom/android/cloud/bean/CloudFileItem;Z)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_9
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f032c10

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileName:Landroid/widget/TextView;

    const v0, 0x7f032c1d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileSource:Landroid/widget/TextView;

    const v0, 0x7f032c14

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileIcon:Landroid/widget/ImageView;

    const v0, 0x7f032ce5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFav:Landroid/widget/ImageView;

    const v0, 0x7f032c1c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mSize:Landroid/widget/TextView;

    const v0, 0x7f032cee

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCloudState:Landroid/widget/ImageView;

    const v0, 0x7f032c1b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/cloud/widget/TransferStatusProgress;

    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mTransState:Lcom/android/cloud/widget/TransferStatusProgress;

    const v0, 0x7f032c45

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mVideoTag:Landroid/widget/ImageView;

    return-void
.end method

.method public setCheckableVisibility(I)V
    .registers 3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/GridItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/GridItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_b
    return-void
.end method

.method public setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCloudState:Landroid/widget/ImageView;

    if-eqz v0, :cond_3f

    const/4 v0, -0x1

    sget-object v1, Lcom/android/fileexplorer/view/GridItemView$1;->$SwitchMap$com$android$cloud$util$CloudFileUtils$FileCloudState:[I

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
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mCloudState:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mCloudState:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3f

    :cond_38
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mCloudState:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public setFavVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFav:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setFileName(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileName:Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mIsNightMode:Z

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f28ef

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3c

    :cond_24
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f2da4

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public setFileSource(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileSource:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mIsNightMode:Z

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileSource:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f28e5

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3a

    :cond_22
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileSource:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f2d2f

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3a
    return-void
.end method

.method public setFileSourceVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileSource:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mSize:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public setSizeViewVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mSize:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public setTransState(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/CloudFileItem;)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mTransState:Lcom/android/cloud/widget/TransferStatusProgress;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p2}, Lcom/android/cloud/bean/CloudFileItem;->getCloudLocalFileId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e2

    if-nez p1, :cond_13

    goto/16 :goto_e2

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

    const/4 v1, 0x0

    if-eqz v0, :cond_a9

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/cloud/bean/CloudFileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/GridItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    goto :goto_88

    :cond_72
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/GridItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    return-void

    :cond_76
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/GridItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    return-void

    :cond_7a
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_88

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/GridItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    return-void

    :cond_88
    :goto_88
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/GridItemView;->setTransStateVisibility(I)V

    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/GridItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    invoke-virtual {p2}, Lcom/android/cloud/bean/CloudFileItem;->getFileSize()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f110065

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/fileexplorer/view/GridItemView;->setBottomText(Ljava/lang/String;Ljava/lang/String;Lcom/android/cloud/bean/CloudFileItem;Z)V

    return-void

    :cond_a9
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/GridItemView;->setTransStateVisibility(I)V

    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_DOWNLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/GridItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mTransState:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cloud/util/TransferUtil;->getTransStateDescription(Lcom/android/cloud/bean/TransferState$Status;)I

    move-result v1

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/android/fileexplorer/view/GridItemView;->setBottomText(Ljava/lang/String;Ljava/lang/String;Lcom/android/cloud/bean/CloudFileItem;Z)V

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result p2

    if-ltz p2, :cond_e5

    iget-object p2, p0, Lcom/android/fileexplorer/view/GridItemView;->mTransState:Lcom/android/cloud/widget/TransferStatusProgress;

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    goto :goto_e5

    :cond_e2
    :goto_e2
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/GridItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    :cond_e5
    :goto_e5
    return-void
.end method

.method public setTransStateVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mTransState:Lcom/android/cloud/widget/TransferStatusProgress;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public setVideoTagVisible(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mVideoTag:Landroid/widget/ImageView;

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
