.class public Lcom/android/fileexplorer/activity/StorageInfoActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "StorageInfoActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAes:J

.field private mAis:J

.field private mApkSize:J

.field private mApkSizeView:Landroid/widget/TextView;

.field private mAudioSize:J

.field private mAudioSizeView:Landroid/widget/TextView;

.field private mCircleBarView:Lcom/android/fileexplorer/view/CircleBarView;

.field private mCircleLayout:Landroid/widget/FrameLayout;

.field private mDataTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mDocSize:J

.field private mDocSizeView:Landroid/widget/TextView;

.field private mFreeSize:J

.field private mFreeSizeView:Landroid/widget/TextView;

.field private mImageSize:J

.field private mImageSizeView:Landroid/widget/TextView;

.field private mOtherSize:J

.field private mOtherSizeView:Landroid/widget/TextView;

.field private mPhoneStorage:Landroid/widget/TextView;

.field private mStorageUsed:Landroid/widget/TextView;

.field private mTes:J

.field private mTis:J

.field private mUsedOrLoadingView:Landroid/widget/TextView;

.field private mVideoSize:J

.field private mVideoSizeView:Landroid/widget/TextView;

.field private mZipSize:J

.field private mZipSizeView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    const-string v0, "StorageInfoActivity"

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/StorageInfoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->initData()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/activity/StorageInfoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->updateView()V

    return-void
.end method

.method private getCircleItemList()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/CircleBarView$CircleItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTis:J

    iget-wide v3, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTes:J

    add-long/2addr v1, v3

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mImageSize:J

    long-to-float v2, v2

    div-float/2addr v2, v1

    const/high16 v3, 0x43b40000  # 360.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    new-instance v4, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    const/4 v5, 0x0

    if-lez v2, :cond_1b

    add-int/lit8 v6, v2, 0x1

    goto :goto_1c

    :cond_1b
    move v6, v5

    :goto_1c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f28b8

    invoke-static {v8}, Lnp/NPFog;->d(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const/16 v8, -0x5a

    invoke-direct {v4, v8, v6, v7}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    add-int/2addr v2, v8

    iget-wide v6, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAudioSize:J

    long-to-float v6, v6

    div-float/2addr v6, v1

    mul-float/2addr v6, v3

    float-to-int v6, v6

    new-instance v7, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    if-lez v6, :cond_3e

    add-int/lit8 v8, v6, 0x1

    goto :goto_3f

    :cond_3e
    move v8, v5

    :goto_3f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f28bf

    invoke-static/range {v10 .. v10}, Lnp/NPFog;->d(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v7, v2, v8, v9}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    add-int/2addr v2, v6

    iget-wide v8, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mVideoSize:J

    long-to-float v6, v8

    div-float/2addr v6, v1

    mul-float/2addr v6, v3

    float-to-int v6, v6

    new-instance v8, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    if-lez v6, :cond_5f

    add-int/lit8 v9, v6, 0x1

    goto :goto_60

    :cond_5f
    move v9, v5

    :goto_60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f28a3

    invoke-static/range {v11 .. v11}, Lnp/NPFog;->d(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v8, v2, v9, v10}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    add-int/2addr v2, v6

    iget-wide v9, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDocSize:J

    long-to-float v6, v9

    div-float/2addr v6, v1

    mul-float/2addr v6, v3

    float-to-int v6, v6

    new-instance v9, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    if-lez v6, :cond_80

    add-int/lit8 v10, v6, 0x1

    goto :goto_81

    :cond_80
    move v10, v5

    :goto_81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f28bc

    invoke-static/range {v12 .. v12}, Lnp/NPFog;->d(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v9, v2, v10, v11}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    add-int/2addr v2, v6

    iget-wide v10, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mZipSize:J

    long-to-float v6, v10

    div-float/2addr v6, v1

    mul-float/2addr v6, v3

    float-to-int v6, v6

    new-instance v10, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    if-lez v6, :cond_a1

    add-int/lit8 v11, v6, 0x1

    goto :goto_a2

    :cond_a1
    move v11, v5

    :goto_a2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f28a0

    invoke-static/range {v13 .. v13}, Lnp/NPFog;->d(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v10, v2, v11, v12}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    add-int/2addr v2, v6

    iget-wide v11, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mApkSize:J

    long-to-float v6, v11

    div-float/2addr v6, v1

    mul-float/2addr v6, v3

    float-to-int v6, v6

    new-instance v11, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    if-lez v6, :cond_c2

    add-int/lit8 v12, v6, 0x1

    goto :goto_c3

    :cond_c2
    move v12, v5

    :goto_c3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f28be

    invoke-static/range {v14 .. v14}, Lnp/NPFog;->d(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-direct {v11, v2, v12, v13}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    add-int/2addr v2, v6

    iget-wide v12, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mOtherSize:J

    long-to-float v6, v12

    div-float/2addr v6, v1

    mul-float/2addr v6, v3

    float-to-int v1, v6

    new-instance v3, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    if-lez v1, :cond_e2

    add-int/lit8 v5, v1, 0x1

    :cond_e2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x7f0f28a4

    invoke-static/range {v12 .. v12}, Lnp/NPFog;->d(I)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v3, v2, v5, v6}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    add-int/2addr v2, v1

    rsub-int v1, v2, 0x10e

    new-instance v5, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x7f0f28ba

    invoke-static/range {v12 .. v12}, Lnp/NPFog;->d(I)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v2, v1, v6}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_127
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_152

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    iget-object v3, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    const-string v4, "item start="

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;->start:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;->size:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_127

    :cond_152
    return-object v0
.end method

.method private getStorageText(IJ)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initActionBar()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_10

    const v1, 0x7f110354

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    :cond_10
    return-void
.end method

.method private initData()V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getAvailableInternalStorageSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAis:J

    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getTotalInternalStorageSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTis:J

    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getAvailableExternalStorageSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAes:J

    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getTotalExternalStorageSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTes:J

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "mAis="

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAis:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "mTis="

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTis:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "mAes="

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAes:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "mTes="

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTes:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Picture:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getStorageCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;

    move-result-object v0

    if-eqz v0, :cond_84

    iget-wide v0, v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;->size:J

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mImageSize:J

    :cond_84
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "mImageSize="

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mImageSize:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Video:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getStorageCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;

    move-result-object v0

    if-eqz v0, :cond_a8

    iget-wide v0, v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;->size:J

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mVideoSize:J

    :cond_a8
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "mVideoSize="

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mVideoSize:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Zip:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getStorageCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;

    move-result-object v0

    if-eqz v0, :cond_cc

    iget-wide v0, v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;->size:J

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mZipSize:J

    :cond_cc
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "mZipSize="

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mZipSize:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Music:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getStorageCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;

    move-result-object v0

    if-eqz v0, :cond_f0

    iget-wide v0, v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;->size:J

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAudioSize:J

    :cond_f0
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "mAudioSize="

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAudioSize:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Doc:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getStorageCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;

    move-result-object v0

    if-eqz v0, :cond_114

    iget-wide v0, v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;->size:J

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDocSize:J

    :cond_114
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "mDocSize="

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDocSize:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Apk:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getStorageCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;

    move-result-object v0

    if-eqz v0, :cond_138

    iget-wide v0, v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;->size:J

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mApkSize:J

    :cond_138
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "mApkSize="

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mApkSize:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAis:J

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mFreeSize:J

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "mFreeSize="

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mFreeSize:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTis:J

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTes:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mImageSize:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mVideoSize:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mZipSize:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAudioSize:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDocSize:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mApkSize:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mFreeSize:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mOtherSize:J

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    const-string v1, "mOtherSize="

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mOtherSize:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .registers 6

    const v0, 0x7f032e7e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mStorageUsed:Landroid/widget/TextView;

    const v0, 0x7f032d74

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f032e87

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mPhoneStorage:Landroid/widget/TextView;

    const v0, 0x7f032c72

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mImageSizeView:Landroid/widget/TextView;

    const v0, 0x7f03291e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mVideoSizeView:Landroid/widget/TextView;

    const v0, 0x7f032928

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mZipSizeView:Landroid/widget/TextView;

    const v0, 0x7f032f61

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mOtherSizeView:Landroid/widget/TextView;

    const v0, 0x7f032d09

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAudioSizeView:Landroid/widget/TextView;

    const v0, 0x7f032cd7

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDocSizeView:Landroid/widget/TextView;

    const v0, 0x7f032d00

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mApkSizeView:Landroid/widget/TextView;

    const v0, 0x7f032c35

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mFreeSizeView:Landroid/widget/TextView;

    const v0, 0x7f0329e9

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mUsedOrLoadingView:Landroid/widget/TextView;

    const v1, 0x7f110357

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/android/fileexplorer/view/CircleBarView;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/view/CircleBarView;-><init>(Landroid/content/Context;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/CircleBarView;->setmItemList(Ljava/util/List;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x433e0000  # 190.0f

    invoke-static {v2}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v3

    invoke-static {v2}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v2

    const/16 v4, 0x11

    invoke-direct {v1, v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f032d7c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/activity/StorageInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/StorageInfoActivity$1;-><init>(Lcom/android/fileexplorer/activity/StorageInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateView()V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mUsedOrLoadingView:Landroid/widget/TextView;

    const v1, 0x7f110468

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAis:J

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAes:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTis:J

    iget-wide v4, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTes:J

    add-long/2addr v2, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    rsub-int/lit8 v0, v0, 0x64

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mStorageUsed:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v0, "%d%%"

    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleBarView:Lcom/android/fileexplorer/view/CircleBarView;

    if-eqz v0, :cond_45

    iget-object v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleBarView:Lcom/android/fileexplorer/view/CircleBarView;

    :cond_45
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getCircleItemList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/view/CircleBarView;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/CircleBarView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleBarView:Lcom/android/fileexplorer/view/CircleBarView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/view/CircleBarView;->setmItemList(Ljava/util/List;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x433e0000  # 190.0f

    invoke-static {v1}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v2

    invoke-static {v1}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v1

    const/16 v4, 0x11

    invoke-direct {v0, v2, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleBarView:Lcom/android/fileexplorer/view/CircleBarView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleBarView:Lcom/android/fileexplorer/view/CircleBarView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTis:J

    iget-wide v6, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTes:J

    add-long/2addr v0, v6

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mFreeSize:J

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mPhoneStorage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f182eca

    invoke-static {v6}, Lnp/NPFog;->d(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v0, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mImageSizeView:Landroid/widget/TextView;

    const v1, 0x7f11035b

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mImageSize:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mVideoSizeView:Landroid/widget/TextView;

    const v1, 0x7f11035f

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mVideoSize:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mZipSizeView:Landroid/widget/TextView;

    const v1, 0x7f110360

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mZipSize:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mOtherSizeView:Landroid/widget/TextView;

    const v1, 0x7f11035d

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mOtherSize:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAudioSizeView:Landroid/widget/TextView;

    const v1, 0x7f110356

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAudioSize:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDocSizeView:Landroid/widget/TextView;

    const v1, 0x7f110359

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDocSize:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mApkSizeView:Landroid/widget/TextView;

    const v1, 0x7f110355

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mApkSize:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mFreeSizeView:Landroid/widget/TextView;

    const v1, 0x7f11035a

    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mFreeSize:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_8
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f042dbd

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->initActionBar()V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDataTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDataTask:Landroid/os/AsyncTask;

    :cond_e
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDataTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_b
    new-instance v0, Lcom/android/fileexplorer/activity/StorageInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/StorageInfoActivity$2;-><init>(Lcom/android/fileexplorer/activity/StorageInfoActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDataTask:Landroid/os/AsyncTask;

    return-void
.end method
