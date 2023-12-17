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

    .line 1
    const-class v0, Lcom/android/fileexplorer/view/GridItemView;

    .line 3
    const-string v0, "GridItemView"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/view/GridItemView;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/GridItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/GridItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 5
    :cond_a
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mIsNightMode:Z

    return-void
.end method

.method private setBottomText(Ljava/lang/String;Ljava/lang/String;Lcom/android/cloud/bean/CloudFileItem;Z)V
    .registers 7

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 13
    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    move-result v1

    .line 19
    if-eq v0, v1, :cond_3b

    .line 21
    if-eqz p4, :cond_17

    .line 23
    goto :goto_3b

    .line 24
    :cond_17
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mSize:Landroid/widget/TextView;

    .line 26
    invoke-virtual {p3}, Lcom/android/cloud/bean/CloudFileItem;->getModifyTime()Ljava/lang/Long;

    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 33
    move-result-wide v0

    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-static {v0, v1, p2}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileSource:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p3}, Lcom/android/cloud/bean/CloudFileItem;->getFileSize()Ljava/lang/Long;

    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 51
    move-result-wide p2

    .line 52
    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    goto :goto_45

    .line 60
    :cond_3b
    :goto_3b
    iget-object p3, p0, Lcom/android/fileexplorer/view/GridItemView;->mSize:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileSource:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_45
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 3
    if-nez v0, :cond_21

    .line 5
    const v0, 0x7f0a03eb

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/ViewStub;

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    const v1, 0x1020001

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/CheckBox;

    .line 27
    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCheckBox:Landroid/widget/CheckBox;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 29
    goto :goto_21

    .line 30
    :catch_1d
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 36
    return-object v0
.end method

.method public getFileIconView()Landroid/widget/ImageView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileIcon:Landroid/widget/ImageView;

    .line 3
    return-object v0
.end method

.method public getFileNameView()Landroid/widget/TextView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileName:Landroid/widget/TextView;

    .line 3
    return-object v0
.end method

.method public getStrokeView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileIcon:Landroid/widget/ImageView;

    .line 3
    return-object v0
.end method

.method public markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V
    .registers 5

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/GridItemView;->setTransStateVisibility(I)V

    .line 6
    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/GridItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 11
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileItem;->getFileSize()Ljava/lang/Long;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const v1, 0x7f110065

    .line 26
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/fileexplorer/view/GridItemView;->setBottomText(Ljava/lang/String;Ljava/lang/String;Lcom/android/cloud/bean/CloudFileItem;Z)V

    .line 34
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 13
    const v0, 0x7f0a0186

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileName:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f0a018b

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileSource:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0a0182

    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/ImageView;

    .line 44
    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileIcon:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f0a0173

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/ImageView;

    .line 55
    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFav:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f0a018a

    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    .line 66
    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mSize:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0a0178

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/ImageView;

    .line 77
    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCloudState:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0a018d

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/android/cloud/widget/TransferStatusProgress;

    .line 88
    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mTransState:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 90
    const v0, 0x7f0a01d3

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/widget/ImageView;

    .line 99
    iput-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mVideoTag:Landroid/widget/ImageView;

    .line 101
    return-void
.end method

.method public setCheckableVisibility(I)V
    .registers 3

    .line 1
    const/16 v0, 0x8

    .line 3
    if-eq p1, v0, :cond_7

    .line 5
    const/4 v0, 0x4

    .line 6
    if-ne p1, v0, :cond_c

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 10
    if-nez v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/GridItemView;->getCheckBox()Landroid/widget/CheckBox;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_17

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_17
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/GridItemView;->getCheckBox()Landroid/widget/CheckBox;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mCloudState:Landroid/widget/ImageView;

    .line 3
    if-eqz v0, :cond_3f

    .line 5
    const/4 v0, -0x1

    .line 6
    sget-object v1, Lcom/android/fileexplorer/view/GridItemView$1;->$SwitchMap$com$android$cloud$util$CloudFileUtils$FileCloudState:[I

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
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mCloudState:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mCloudState:Landroid/widget/ImageView;

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    goto :goto_3f

    .line 57
    :cond_38
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mCloudState:Landroid/widget/ImageView;

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
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFav:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    return-void
.end method

.method public setFileName(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileName:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_34

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mIsNightMode:Z

    .line 10
    if-eqz p1, :cond_20

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileName:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v0

    .line 22
    const v1, 0x7f060579

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    goto :goto_34

    .line 33
    :cond_20
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileName:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v0

    .line 43
    const v1, 0x7f060032

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 49
    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    :cond_34
    :goto_34
    return-void
.end method

.method public setFileSource(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileSource:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mIsNightMode:Z

    .line 8
    if-eqz p1, :cond_1e

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileSource:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v0

    .line 20
    const v1, 0x7f060573

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    goto :goto_32

    .line 31
    :cond_1e
    iget-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileSource:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v0

    .line 41
    const v1, 0x7f0600b9

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    :goto_32
    return-void
.end method

.method public setFileSourceVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mFileSource:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 3
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mSize:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSizeViewVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mSize:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setTransState(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/CloudFileItem;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mTransState:Lcom/android/cloud/widget/TransferStatusProgress;

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
    if-nez v0, :cond_e2

    .line 16
    if-nez p1, :cond_13

    .line 18
    goto/16 :goto_e2

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
    const/4 v1, 0x0

    .line 65
    if-eqz v0, :cond_a9

    .line 67
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_7a

    .line 77
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_76

    .line 87
    new-instance v0, Ljava/io/File;

    .line 89
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_72

    .line 102
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p2, p1}, Lcom/android/cloud/bean/CloudFileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 109
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/GridItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 114
    goto :goto_88

    .line 115
    :cond_72
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/GridItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    .line 118
    return-void

    .line 119
    :cond_76
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/GridItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    .line 122
    return-void

    .line 123
    :cond_7a
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getFilePath()Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_88

    .line 133
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/GridItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    .line 136
    return-void

    .line 137
    :cond_88
    :goto_88
    const/16 p1, 0x8

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/GridItemView;->setTransStateVisibility(I)V

    .line 142
    sget-object p1, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/GridItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 147
    invoke-virtual {p2}, Lcom/android/cloud/bean/CloudFileItem;->getFileSize()Ljava/lang/Long;

    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 154
    move-result-wide v2

    .line 155
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 158
    move-result-object p1

    .line 159
    const v0, 0x7f110065

    .line 162
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/fileexplorer/view/GridItemView;->setBottomText(Ljava/lang/String;Ljava/lang/String;Lcom/android/cloud/bean/CloudFileItem;Z)V

    .line 169
    return-void

    .line 170
    :cond_a9
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/GridItemView;->setTransStateVisibility(I)V

    .line 173
    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_DOWNLOADING:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/GridItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 178
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mTransState:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 180
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/cloud/widget/TransferStatusProgress;->setStatus(Lcom/android/cloud/bean/TransferState$Status;)V

    .line 187
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    .line 190
    move-result-wide v0

    .line 191
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 198
    move-result-object v1

    .line 199
    invoke-static {v1}, Lcom/android/cloud/util/TransferUtil;->getTransStateDescription(Lcom/android/cloud/bean/TransferState$Status;)I

    .line 202
    move-result v1

    .line 203
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 207
    const/4 v2, 0x1

    .line 208
    invoke-direct {p0, v0, v1, p2, v2}, Lcom/android/fileexplorer/view/GridItemView;->setBottomText(Ljava/lang/String;Ljava/lang/String;Lcom/android/cloud/bean/CloudFileItem;Z)V

    .line 211
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 214
    move-result p2

    .line 215
    if-ltz p2, :cond_e5

    .line 217
    iget-object p2, p0, Lcom/android/fileexplorer/view/GridItemView;->mTransState:Lcom/android/cloud/widget/TransferStatusProgress;

    .line 219
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getProgress()I

    .line 222
    move-result p1

    .line 223
    invoke-virtual {p2, p1}, Lcom/android/cloud/widget/TransferStatusProgress;->setProgress(I)V

    .line 226
    goto :goto_e5

    .line 227
    :cond_e2
    :goto_e2
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/GridItemView;->markOnlyCloudFile(Lcom/android/cloud/bean/CloudFileItem;)V

    .line 230
    :cond_e5
    :goto_e5
    return-void
.end method

.method public setTransStateVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mTransState:Lcom/android/cloud/widget/TransferStatusProgress;

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
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridItemView;->mVideoTag:Landroid/widget/ImageView;

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
