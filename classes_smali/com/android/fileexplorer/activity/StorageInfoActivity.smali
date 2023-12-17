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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    const-string v0, "StorageInfoActivity"

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/StorageInfoActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->initData()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/activity/StorageInfoActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->updateView()V

    .line 4
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-wide v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTis:J

    .line 8
    iget-wide v3, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTes:J

    .line 10
    add-long/2addr v1, v3

    .line 11
    long-to-float v1, v1

    .line 12
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mImageSize:J

    .line 14
    long-to-float v2, v2

    .line 15
    div-float/2addr v2, v1

    .line 16
    const/high16 v3, 0x43b40000  # 360.0f

    .line 18
    mul-float/2addr v2, v3

    .line 19
    float-to-int v2, v2

    .line 20
    new-instance v4, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    .line 22
    const/4 v5, 0x0

    .line 23
    if-lez v2, :cond_1b

    .line 25
    add-int/lit8 v6, v2, 0x1

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v6, v5

    .line 29
    :goto_1c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v7

    .line 33
    const v8, 0x7f06052e

    .line 36
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    .line 39
    move-result v7

    .line 40
    const/16 v8, -0x5a

    .line 42
    invoke-direct {v4, v8, v6, v7}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    .line 45
    add-int/2addr v2, v8

    .line 46
    iget-wide v6, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAudioSize:J

    .line 48
    long-to-float v6, v6

    .line 49
    div-float/2addr v6, v1

    .line 50
    mul-float/2addr v6, v3

    .line 51
    float-to-int v6, v6

    .line 52
    new-instance v7, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    .line 54
    if-lez v6, :cond_3a

    .line 56
    add-int/lit8 v8, v6, 0x1

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move v8, v5

    .line 60
    :goto_3b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object v9

    .line 64
    const v10, 0x7f060529

    .line 67
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    .line 70
    move-result v9

    .line 71
    invoke-direct {v7, v2, v8, v9}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    .line 74
    add-int/2addr v2, v6

    .line 75
    iget-wide v8, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mVideoSize:J

    .line 77
    long-to-float v6, v8

    .line 78
    div-float/2addr v6, v1

    .line 79
    mul-float/2addr v6, v3

    .line 80
    float-to-int v6, v6

    .line 81
    new-instance v8, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    .line 83
    if-lez v6, :cond_57

    .line 85
    add-int/lit8 v9, v6, 0x1

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move v9, v5

    .line 89
    :goto_58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    move-result-object v10

    .line 93
    const v11, 0x7f060535

    .line 96
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    .line 99
    move-result v10

    .line 100
    invoke-direct {v8, v2, v9, v10}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    .line 103
    add-int/2addr v2, v6

    .line 104
    iget-wide v9, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDocSize:J

    .line 106
    long-to-float v6, v9

    .line 107
    div-float/2addr v6, v1

    .line 108
    mul-float/2addr v6, v3

    .line 109
    float-to-int v6, v6

    .line 110
    new-instance v9, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    .line 112
    if-lez v6, :cond_74

    .line 114
    add-int/lit8 v10, v6, 0x1

    .line 116
    goto :goto_75

    .line 117
    :cond_74
    move v10, v5

    .line 118
    :goto_75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    move-result-object v11

    .line 122
    const v12, 0x7f06052a

    .line 125
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    .line 128
    move-result v11

    .line 129
    invoke-direct {v9, v2, v10, v11}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    .line 132
    add-int/2addr v2, v6

    .line 133
    iget-wide v10, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mZipSize:J

    .line 135
    long-to-float v6, v10

    .line 136
    div-float/2addr v6, v1

    .line 137
    mul-float/2addr v6, v3

    .line 138
    float-to-int v6, v6

    .line 139
    new-instance v10, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    .line 141
    if-lez v6, :cond_91

    .line 143
    add-int/lit8 v11, v6, 0x1

    .line 145
    goto :goto_92

    .line 146
    :cond_91
    move v11, v5

    .line 147
    :goto_92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 150
    move-result-object v12

    .line 151
    const v13, 0x7f060536

    .line 154
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    .line 157
    move-result v12

    .line 158
    invoke-direct {v10, v2, v11, v12}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    .line 161
    add-int/2addr v2, v6

    .line 162
    iget-wide v11, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mApkSize:J

    .line 164
    long-to-float v6, v11

    .line 165
    div-float/2addr v6, v1

    .line 166
    mul-float/2addr v6, v3

    .line 167
    float-to-int v6, v6

    .line 168
    new-instance v11, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    .line 170
    if-lez v6, :cond_ae

    .line 172
    add-int/lit8 v12, v6, 0x1

    .line 174
    goto :goto_af

    .line 175
    :cond_ae
    move v12, v5

    .line 176
    :goto_af
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    move-result-object v13

    .line 180
    const v14, 0x7f060528

    .line 183
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    .line 186
    move-result v13

    .line 187
    invoke-direct {v11, v2, v12, v13}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    .line 190
    add-int/2addr v2, v6

    .line 191
    iget-wide v12, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mOtherSize:J

    .line 193
    long-to-float v6, v12

    .line 194
    div-float/2addr v6, v1

    .line 195
    mul-float/2addr v6, v3

    .line 196
    float-to-int v1, v6

    .line 197
    new-instance v3, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    .line 199
    if-lez v1, :cond_ca

    .line 201
    add-int/lit8 v5, v1, 0x1

    .line 203
    :cond_ca
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 206
    move-result-object v6

    .line 207
    const v12, 0x7f060532

    .line 210
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getColor(I)I

    .line 213
    move-result v6

    .line 214
    invoke-direct {v3, v2, v5, v6}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    .line 217
    add-int/2addr v2, v1

    .line 218
    rsub-int v1, v2, 0x10e

    .line 220
    new-instance v5, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 225
    move-result-object v6

    .line 226
    const v12, 0x7f06052c

    .line 229
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getColor(I)I

    .line 232
    move-result v6

    .line 233
    invoke-direct {v5, v2, v1, v6}, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;-><init>(III)V

    .line 236
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 263
    move-result-object v1

    .line 264
    :goto_107
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_132

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    move-result-object v2

    .line 274
    check-cast v2, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;

    .line 276
    iget-object v3, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    .line 278
    const-string v4, "item start="

    .line 280
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    move-result-object v4

    .line 284
    iget v5, v2, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;->start:I

    .line 286
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    const-string v5, "   size="

    .line 291
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget v2, v2, Lcom/android/fileexplorer/view/CircleBarView$CircleItem;->size:I

    .line 296
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    move-result-object v2

    .line 303
    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    goto :goto_107

    .line 307
    :cond_132
    return-object v0
.end method

.method private getStorageText(IJ)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method private initActionBar()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    const v1, 0x7f110354

    .line 10
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 17
    :cond_10
    return-void
.end method

.method private initData()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getAvailableInternalStorageSize()J

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAis:J

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getTotalInternalStorageSize()J

    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTis:J

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getAvailableExternalStorageSize()J

    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAes:J

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getTotalExternalStorageSize()J

    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTes:J

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    .line 27
    const-string v1, "mAis="

    .line 29
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v1

    .line 33
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAis:J

    .line 35
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    .line 51
    const-string v1, "mTis="

    .line 53
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object v1

    .line 57
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTis:J

    .line 59
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    .line 75
    const-string v1, "mAes="

    .line 77
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    move-result-object v1

    .line 81
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAes:J

    .line 83
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    .line 99
    const-string v1, "mTes="

    .line 101
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    move-result-object v1

    .line 105
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTes:J

    .line 107
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Picture:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    .line 123
    invoke-static {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getStorageCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;

    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_84

    .line 129
    iget-wide v0, v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;->size:J

    .line 131
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mImageSize:J

    .line 133
    :cond_84
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    .line 135
    const-string v1, "mImageSize="

    .line 137
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    move-result-object v1

    .line 141
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mImageSize:J

    .line 143
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v1

    .line 154
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Video:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    .line 159
    invoke-static {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getStorageCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;

    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_a8

    .line 165
    iget-wide v0, v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;->size:J

    .line 167
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mVideoSize:J

    .line 169
    :cond_a8
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    .line 171
    const-string v1, "mVideoSize="

    .line 173
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    move-result-object v1

    .line 177
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mVideoSize:J

    .line 179
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Zip:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    .line 195
    invoke-static {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getStorageCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;

    .line 198
    move-result-object v0

    .line 199
    if-eqz v0, :cond_cc

    .line 201
    iget-wide v0, v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;->size:J

    .line 203
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mZipSize:J

    .line 205
    :cond_cc
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    .line 207
    const-string v1, "mZipSize="

    .line 209
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    move-result-object v1

    .line 213
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mZipSize:J

    .line 215
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v1

    .line 226
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Music:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    .line 231
    invoke-static {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getStorageCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;

    .line 234
    move-result-object v0

    .line 235
    if-eqz v0, :cond_f0

    .line 237
    iget-wide v0, v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;->size:J

    .line 239
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAudioSize:J

    .line 241
    :cond_f0
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    .line 243
    const-string v1, "mAudioSize="

    .line 245
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    move-result-object v1

    .line 249
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAudioSize:J

    .line 251
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object v1

    .line 262
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Doc:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    .line 267
    invoke-static {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getStorageCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;

    .line 270
    move-result-object v0

    .line 271
    if-eqz v0, :cond_114

    .line 273
    iget-wide v0, v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;->size:J

    .line 275
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDocSize:J

    .line 277
    :cond_114
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    .line 279
    const-string v1, "mDocSize="

    .line 281
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    move-result-object v1

    .line 285
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDocSize:J

    .line 287
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v1

    .line 298
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Apk:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    .line 303
    invoke-static {v0}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getStorageCategoryInfo(Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;)Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;

    .line 306
    move-result-object v0

    .line 307
    if-eqz v0, :cond_138

    .line 309
    iget-wide v0, v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategoryInfo;->size:J

    .line 311
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mApkSize:J

    .line 313
    :cond_138
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    .line 315
    const-string v1, "mApkSize="

    .line 317
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    move-result-object v1

    .line 321
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mApkSize:J

    .line 323
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    move-result-object v1

    .line 334
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAis:J

    .line 339
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAes:J

    .line 341
    add-long/2addr v0, v2

    .line 342
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mFreeSize:J

    .line 344
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    .line 346
    const-string v1, "mFreeSize="

    .line 348
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    move-result-object v1

    .line 352
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mFreeSize:J

    .line 354
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    move-result-object v1

    .line 365
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTis:J

    .line 370
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTes:J

    .line 372
    add-long/2addr v0, v2

    .line 373
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mImageSize:J

    .line 375
    sub-long/2addr v0, v2

    .line 376
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mVideoSize:J

    .line 378
    sub-long/2addr v0, v2

    .line 379
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mZipSize:J

    .line 381
    sub-long/2addr v0, v2

    .line 382
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAudioSize:J

    .line 384
    sub-long/2addr v0, v2

    .line 385
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDocSize:J

    .line 387
    sub-long/2addr v0, v2

    .line 388
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mApkSize:J

    .line 390
    sub-long/2addr v0, v2

    .line 391
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mFreeSize:J

    .line 393
    sub-long/2addr v0, v2

    .line 394
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mOtherSize:J

    .line 396
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->TAG:Ljava/lang/String;

    .line 398
    const-string v1, "mOtherSize="

    .line 400
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    move-result-object v1

    .line 404
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mOtherSize:J

    .line 406
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    move-result-object v1

    .line 417
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private initView()V
    .registers 6

    .line 1
    const v0, 0x7f0a03e8

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mStorageUsed:Landroid/widget/TextView;

    .line 12
    const v0, 0x7f0a00e2

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/FrameLayout;

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleLayout:Landroid/widget/FrameLayout;

    .line 23
    const v0, 0x7f0a0311

    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mPhoneStorage:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f0a01e4

    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mImageSizeView:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0a0488

    .line 48
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mVideoSizeView:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0a04be

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mZipSizeView:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0a02f7

    .line 70
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 76
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mOtherSizeView:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0a009f

    .line 81
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/TextView;

    .line 87
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAudioSizeView:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0a0141

    .line 92
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/TextView;

    .line 98
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDocSizeView:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0a0096

    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/TextView;

    .line 109
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mApkSizeView:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0a01a3

    .line 114
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/TextView;

    .line 120
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mFreeSizeView:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0a047f

    .line 125
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/TextView;

    .line 131
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mUsedOrLoadingView:Landroid/widget/TextView;

    .line 133
    const v1, 0x7f110357

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    new-instance v0, Lcom/android/fileexplorer/view/CircleBarView;

    .line 141
    const/4 v1, 0x1

    .line 142
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/view/CircleBarView;-><init>(Landroid/content/Context;Z)V

    .line 145
    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/CircleBarView;->setmItemList(Ljava/util/List;)V

    .line 149
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 151
    const/high16 v2, 0x433e0000  # 190.0f

    .line 153
    invoke-static {v2}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    .line 156
    move-result v3

    .line 157
    invoke-static {v2}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    .line 160
    move-result v2

    .line 161
    const/16 v4, 0x11

    .line 163
    invoke-direct {v1, v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleLayout:Landroid/widget/FrameLayout;

    .line 171
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    const v0, 0x7f0a00ea

    .line 177
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 180
    move-result-object v0

    .line 181
    new-instance v1, Lcom/android/fileexplorer/activity/StorageInfoActivity$1;

    .line 183
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/StorageInfoActivity$1;-><init>(Lcom/android/fileexplorer/activity/StorageInfoActivity;)V

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method private updateView()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mUsedOrLoadingView:Landroid/widget/TextView;

    .line 3
    const v1, 0x7f110468

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 9
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAis:J

    .line 11
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAes:J

    .line 13
    add-long/2addr v0, v2

    .line 14
    const-wide/16 v2, 0x64

    .line 16
    mul-long/2addr v0, v2

    .line 17
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTis:J

    .line 19
    iget-wide v4, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTes:J

    .line 21
    add-long/2addr v2, v4

    .line 22
    div-long/2addr v0, v2

    .line 23
    long-to-int v0, v0

    .line 24
    rsub-int/lit8 v0, v0, 0x64

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 33
    iget-object v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mStorageUsed:Landroid/widget/TextView;

    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x1

    .line 40
    new-array v4, v3, [Ljava/lang/Object;

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v0

    .line 46
    const/4 v5, 0x0

    .line 47
    aput-object v0, v4, v5

    .line 49
    const-string v0, "%d%%"

    .line 51
    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleBarView:Lcom/android/fileexplorer/view/CircleBarView;

    .line 60
    if-eqz v0, :cond_45

    .line 62
    iget-object v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleLayout:Landroid/widget/FrameLayout;

    .line 64
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 67
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleBarView:Lcom/android/fileexplorer/view/CircleBarView;

    .line 70
    :cond_45
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getCircleItemList()Ljava/util/List;

    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lcom/android/fileexplorer/view/CircleBarView;

    .line 76
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/CircleBarView;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleBarView:Lcom/android/fileexplorer/view/CircleBarView;

    .line 81
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/view/CircleBarView;->setmItemList(Ljava/util/List;)V

    .line 84
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    const/high16 v1, 0x433e0000  # 190.0f

    .line 88
    invoke-static {v1}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    .line 91
    move-result v2

    .line 92
    invoke-static {v1}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    .line 95
    move-result v1

    .line 96
    const/16 v4, 0x11

    .line 98
    invoke-direct {v0, v2, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 101
    iget-object v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleBarView:Lcom/android/fileexplorer/view/CircleBarView;

    .line 103
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleLayout:Landroid/widget/FrameLayout;

    .line 108
    iget-object v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mCircleBarView:Lcom/android/fileexplorer/view/CircleBarView;

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTis:J

    .line 115
    iget-wide v6, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mTes:J

    .line 117
    add-long/2addr v0, v6

    .line 118
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    iget-wide v1, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mFreeSize:J

    .line 124
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mPhoneStorage:Landroid/widget/TextView;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    move-result-object v4

    .line 134
    const v6, 0x7f11035c

    .line 137
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 140
    move-result-object v4

    .line 141
    const/4 v6, 0x2

    .line 142
    new-array v6, v6, [Ljava/lang/Object;

    .line 144
    aput-object v1, v6, v5

    .line 146
    aput-object v0, v6, v3

    .line 148
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mImageSizeView:Landroid/widget/TextView;

    .line 157
    const v1, 0x7f11035b

    .line 160
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mImageSize:J

    .line 162
    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mVideoSizeView:Landroid/widget/TextView;

    .line 171
    const v1, 0x7f11035f

    .line 174
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mVideoSize:J

    .line 176
    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mZipSizeView:Landroid/widget/TextView;

    .line 185
    const v1, 0x7f110360

    .line 188
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mZipSize:J

    .line 190
    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mOtherSizeView:Landroid/widget/TextView;

    .line 199
    const v1, 0x7f11035d

    .line 202
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mOtherSize:J

    .line 204
    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAudioSizeView:Landroid/widget/TextView;

    .line 213
    const v1, 0x7f110356

    .line 216
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mAudioSize:J

    .line 218
    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDocSizeView:Landroid/widget/TextView;

    .line 227
    const v1, 0x7f110359

    .line 230
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDocSize:J

    .line 232
    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mApkSizeView:Landroid/widget/TextView;

    .line 241
    const v1, 0x7f110355

    .line 244
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mApkSize:J

    .line 246
    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mFreeSizeView:Landroid/widget/TextView;

    .line 255
    const v1, 0x7f11035a

    .line 258
    iget-wide v2, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mFreeSize:J

    .line 260
    invoke-direct {p0, v1, v2, v3}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->getStorageText(IJ)Ljava/lang/String;

    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 9
    :cond_8
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const p1, 0x7f0d002b

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 18
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->initActionBar()V

    .line 21
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/StorageInfoActivity;->initView()V

    .line 24
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDataTask:Landroid/os/AsyncTask;

    .line 6
    if-eqz v0, :cond_e

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDataTask:Landroid/os/AsyncTask;

    .line 15
    :cond_e
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDataTask:Landroid/os/AsyncTask;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 12
    :cond_b
    new-instance v0, Lcom/android/fileexplorer/activity/StorageInfoActivity$2;

    .line 14
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/StorageInfoActivity$2;-><init>(Lcom/android/fileexplorer/activity/StorageInfoActivity;)V

    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v1, v1, [Ljava/lang/Void;

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/activity/StorageInfoActivity;->mDataTask:Landroid/os/AsyncTask;

    .line 26
    return-void
.end method
