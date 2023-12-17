.class public Lcom/android/fileexplorer/fragment/ExportFileFragment;
.super Lcom/android/fileexplorer/fragment/FileFragment;
.source "ExportFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/ExportFileFragment$DeCompressTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ExportFileFragment"


# instance fields
.field private mSelectAllBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/FileFragment;-><init>()V

    .line 4
    return-void
.end method

.method private showBackView(Z)Z
    .registers 3

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private updateTitle()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_12e

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 16
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isActivityFinish()Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_12e

    .line 22
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->getModeType()I

    .line 25
    move-result v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v3, "updateTitle mode = "

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    const-string v3, "ExportFileFragment"

    .line 45
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->getTitle()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x2

    .line 53
    const/4 v4, 0x1

    .line 54
    const/4 v5, 0x0

    .line 55
    if-eqz v1, :cond_95

    .line 57
    if-eq v1, v4, :cond_8d

    .line 59
    if-eq v1, v3, :cond_49

    .line 61
    const/4 v0, 0x3

    .line 62
    if-eq v1, v0, :cond_44

    .line 64
    const/4 v0, 0x4

    .line 65
    if-eq v1, v0, :cond_44

    .line 67
    goto/16 :goto_12e

    .line 69
    :cond_44
    invoke-virtual {p0, v5}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateMultiChoiceModeTitle(I)V

    .line 72
    goto/16 :goto_12e

    .line 74
    :cond_49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_53

    .line 80
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    return-void

    .line 84
    :cond_53
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    .line 91
    move-result v1

    .line 92
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/ArchiveHelper;->hasArchiveToDecompress()Z

    .line 99
    move-result v2

    .line 100
    if-eqz v1, :cond_7b

    .line 102
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_73

    .line 112
    const v1, 0x7f11029a

    .line 115
    goto :goto_76

    .line 116
    :cond_73
    const v1, 0x7f1100f3

    .line 119
    :goto_76
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 122
    goto/16 :goto_12e

    .line 124
    :cond_7b
    if-eqz v2, :cond_85

    .line 126
    const v1, 0x7f110110

    .line 129
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 132
    goto/16 :goto_12e

    .line 134
    :cond_85
    const v1, 0x7f110362

    .line 137
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 140
    goto/16 :goto_12e

    .line 142
    :cond_8d
    const v1, 0x7f110361

    .line 145
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 148
    goto/16 :goto_12e

    .line 150
    :cond_95
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 153
    iget v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    .line 155
    const-string v6, " "

    .line 157
    if-eq v1, v3, :cond_db

    .line 159
    const/16 v2, 0xc

    .line 161
    if-eq v1, v2, :cond_d4

    .line 163
    const/4 v2, 0x6

    .line 164
    if-eq v1, v2, :cond_cd

    .line 166
    const/4 v2, 0x7

    .line 167
    if-eq v1, v2, :cond_aa

    .line 169
    goto/16 :goto_12e

    .line 171
    :cond_aa
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->showBackView()Z

    .line 174
    move-result v1

    .line 175
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 181
    move-result-object v1

    .line 182
    const v2, 0x7f110463

    .line 185
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isRootPath()Z

    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_c3

    .line 195
    move-object v6, v1

    .line 196
    :cond_c3
    invoke-virtual {v0, v6}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v0, v5}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 202
    invoke-virtual {v0, v5}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 205
    goto :goto_12e

    .line 206
    :cond_cd
    const v1, 0x7f11022a

    .line 209
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 212
    goto :goto_12e

    .line 213
    :cond_d4
    const v1, 0x7f11029d

    .line 216
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 219
    goto :goto_12e

    .line 220
    :cond_db
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isXspace()Z

    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_fd

    .line 226
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->showBackView()Z

    .line 229
    move-result v1

    .line 230
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isRootPath()Z

    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_fa

    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 242
    move-result-object v1

    .line 243
    const v2, 0x7f110154

    .line 246
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 249
    move-result-object v1

    .line 250
    goto :goto_fb

    .line 251
    :cond_fa
    const/4 v1, 0x0

    .line 252
    :goto_fb
    move-object v2, v1

    .line 253
    goto :goto_118

    .line 254
    :cond_fd
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 256
    if-eqz v1, :cond_118

    .line 258
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 261
    move-result-object v1

    .line 262
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 264
    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_118

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 273
    move-result-object v1

    .line 274
    const v2, 0x7f110404

    .line 277
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 280
    move-result-object v2

    .line 281
    :cond_118
    :goto_118
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_12b

    .line 287
    invoke-virtual {v0, v6}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {v0, v4}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 293
    invoke-virtual {v0, v5}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 296
    invoke-virtual {v0, v5}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 299
    goto :goto_12e

    .line 300
    :cond_12b
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 303
    :cond_12e
    :goto_12e
    return-void
.end method


# virtual methods
.method public backToViewMode()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->backToViewMode()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->initActionBar()V

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isShowFab()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->isViewMode()Z

    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->checkIfShowFabMenuLayout(Z)V

    .line 20
    :cond_13
    return-void
.end method

.method public cancelOperation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 12
    :cond_b
    return-void
.end method

.method public getCheckedPaths()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->getChoiceList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_e

    .line 10
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :goto_e
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->isPickFolderMode()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2b

    .line 21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2b

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 29
    invoke-virtual {v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 32
    move-result-object v1

    .line 33
    iget-object v1, v1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 35
    invoke-static {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_2b

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_2b
    return-object v0
.end method

.method public getCurrentCategoryKey()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00a9

    return v0
.end method

.method public getScrollView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a02d8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "title"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public handleActionBar()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->hasActionBar()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_20

    .line 14
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->isNotInternalVolume()Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_19

    .line 20
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isXspace()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_20

    .line 26
    :cond_19
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->showBackView()Z

    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    :cond_20
    return-void
.end method

.method public initActionBar()V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setImmersionMenuEnabled(Z)V

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 16
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->isPickMultipleMode()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_70

    .line 22
    new-instance v2, Landroid/widget/ImageButton;

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 31
    const v3, 0x7f0801dd

    .line 34
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 37
    new-instance v3, Lcom/android/fileexplorer/fragment/ExportFileFragment$1;

    .line 39
    invoke-direct {v3, p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment$1;-><init>(Lcom/android/fileexplorer/fragment/ExportFileFragment;)V

    .line 42
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v3

    .line 49
    const v4, 0x7f1102e9

    .line 52
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v3, Landroid/widget/ImageButton;

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v4

    .line 65
    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 68
    iput-object v3, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    .line 70
    const v4, 0x7f0801de

    .line 73
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 76
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    .line 78
    new-instance v4, Lcom/android/fileexplorer/fragment/ExportFileFragment$2;

    .line 80
    invoke-direct {v4, p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment$2;-><init>(Lcom/android/fileexplorer/fragment/ExportFileFragment;)V

    .line 83
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object v4

    .line 92
    const v5, 0x7f11001f

    .line 95
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 105
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    .line 110
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 113
    :cond_70
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    .line 116
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->initView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->initActionBar()V

    .line 7
    new-instance p1, Lcom/android/fileexplorer/util/NestedHeaderHelper;

    .line 9
    invoke-direct {p1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;-><init>()V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 14
    const v1, 0x7f0a02d8

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 23
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/util/NestedHeaderHelper;->registerNestedHeaderChangedListener(Lmiuix/nestedheader/widget/NestedHeaderLayout;Lmiuix/appcompat/app/ActionBar;)V

    .line 30
    return-void
.end method

.method public isNotInternalVolume()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public isPickFolderMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickFolderMode(Landroid/app/Activity;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isSupportOneHopShare()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->getModeType()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 7
    iget v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_d

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    return v0
.end method

.method public onBack()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    .line 9
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->onBack()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f12011f

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_17

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    move-result-object v0

    .line 19
    const/high16 v1, 0x8000000

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 24
    :cond_17
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getMenuInflater()Landroid/view/MenuInflater;

    .line 27
    move-result-object v0

    .line 28
    const v1, 0x7f0e0004

    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 34
    const v0, 0x7f0a03ad

    .line 37
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-interface {v0, v1, v2, v2}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 50
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 52
    invoke-static {v1}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 59
    move-result v1

    .line 60
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    .line 63
    move-result v3

    .line 64
    if-ge v1, v3, :cond_48

    .line 66
    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 73
    :cond_48
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 75
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 82
    move-result-object v0

    .line 83
    const-string v1, "pick_button_name"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_68

    .line 95
    const v1, 0x7f0a0319

    .line 98
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 105
    :cond_68
    return v2
.end method

.method public onDestroyOptionsMenu()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1a

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    move-result-object v0

    .line 22
    const/high16 v1, 0x8000000

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 27
    :cond_1a
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    sparse-switch v0, :sswitch_data_9e

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :sswitch_15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->getCheckedPaths()Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onPickFiles(Ljava/util/List;)V

    .line 31
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    .line 34
    return v2

    .line 35
    :sswitch_22
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 39
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->doPickCancel(Landroid/app/Activity;)V

    .line 46
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    .line 49
    return v2

    .line 50
    :sswitch_31
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_61

    .line 60
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->getCheckedPaths()Ljava/util/List;

    .line 63
    move-result-object p1

    .line 64
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->getPasteFileInfos()Ljava/util/ArrayList;

    .line 71
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_5b

    .line 77
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 79
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 85
    invoke-static {p1, v1}, Lcom/android/fileexplorer/filemanager/FileTransferUtils;->createParams(Lcom/android/fileexplorer/model/FileInfo;I)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->copyOrMoveFiles(Lcom/android/fileexplorer/filemanager/FileTransferParams;)V

    .line 92
    :cond_5b
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->backToViewMode()V

    .line 95
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    .line 98
    :cond_61
    return v2

    .line 99
    :sswitch_62
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 106
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->cancelOperation()V

    .line 109
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    .line 112
    return v2

    .line 113
    :sswitch_70
    new-instance p1, Lcom/android/fileexplorer/fragment/ExportFileFragment$DeCompressTask;

    .line 115
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment$DeCompressTask;-><init>(Lcom/android/fileexplorer/fragment/ExportFileFragment;)V

    .line 118
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getCPUExecutor()Ljava/util/concurrent/ExecutorService;

    .line 121
    move-result-object v0

    .line 122
    new-array v1, v1, [Ljava/lang/Void;

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    .line 130
    return v2

    .line 131
    :sswitch_82
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 134
    move-result-object p1

    .line 135
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->cancelOperation()V

    .line 142
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    .line 145
    return v2

    .line 146
    :sswitch_91
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 148
    if-eqz p1, :cond_9c

    .line 150
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 157
    :cond_9c
    return v2

    .line 158
    nop

    .line 159
    :sswitch_data_9e
    .sparse-switch
        0x102002c -> :sswitch_91
        0x7f0a0124 -> :sswitch_82
        0x7f0a0125 -> :sswitch_70
        0x7f0a0306 -> :sswitch_62
        0x7f0a0307 -> :sswitch_31
        0x7f0a0318 -> :sswitch_22
        0x7f0a0319 -> :sswitch_15
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 16

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    const-string v0, "ExportFileFragment"

    .line 6
    const-string v1, "onPrepare option menu."

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    .line 14
    move-result v0

    .line 15
    if-gtz v0, :cond_13

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 20
    :cond_13
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_117

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 28
    if-eqz v0, :cond_117

    .line 30
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->isPickFolderMode()Z

    .line 33
    move-result v0

    .line 34
    const v1, 0x7f0a02dc

    .line 37
    const v2, 0x7f0a03ad

    .line 40
    const v3, 0x7f0a01f1

    .line 43
    const v4, 0x7f0a0318

    .line 46
    const v5, 0x7f0a0124

    .line 49
    const v6, 0x7f0a0125

    .line 52
    const v7, 0x7f0a0306

    .line 55
    const v8, 0x7f0a0319

    .line 58
    const v9, 0x7f0a0307

    .line 61
    const/4 v10, 0x1

    .line 62
    const/4 v11, 0x0

    .line 63
    if-eqz v0, :cond_a8

    .line 65
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    .line 72
    move-result v0

    .line 73
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 76
    move-result-object v12

    .line 77
    invoke-virtual {v12}, Lcom/android/fileexplorer/model/ArchiveHelper;->hasArchiveToDecompress()Z

    .line 80
    move-result v12

    .line 81
    invoke-static {p1, v9, v0, v7, v0}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 84
    if-eqz v0, :cond_73

    .line 86
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v7}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_73

    .line 96
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 99
    move-result-object v7

    .line 100
    const v13, 0x7f11030c

    .line 103
    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 106
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 109
    move-result-object v7

    .line 110
    const v9, 0x7f08024e

    .line 113
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 116
    :cond_73
    invoke-static {p1, v6, v12, v5, v12}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 119
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 122
    move-result-object v5

    .line 123
    if-nez v0, :cond_80

    .line 125
    if-nez v12, :cond_80

    .line 127
    move v6, v10

    .line 128
    goto :goto_81

    .line 129
    :cond_80
    move v6, v11

    .line 130
    :goto_81
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 133
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 136
    move-result-object v4

    .line 137
    if-nez v0, :cond_8e

    .line 139
    if-nez v12, :cond_8e

    .line 141
    move v0, v10

    .line 142
    goto :goto_8f

    .line 143
    :cond_8e
    move v0, v11

    .line 144
    :goto_8f
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 147
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 150
    move-result-object v0

    .line 151
    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 154
    invoke-static {p1, v2, v11, v1, v11}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 157
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 168
    goto :goto_d6

    .line 169
    :cond_a8
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->isViewMode()Z

    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_cd

    .line 175
    invoke-static {p1, v9, v11, v7, v11}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 178
    invoke-static {p1, v6, v11, v5, v11}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 181
    invoke-static {p1, v8, v11, v4, v11}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 184
    invoke-static {p1, v3, v11, v2, v11}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 187
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 190
    move-result-object v0

    .line 191
    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 194
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getEndView()Landroid/view/View;

    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 205
    goto :goto_d6

    .line 206
    :cond_cd
    invoke-static {p1, v9, v11, v7, v11}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 209
    invoke-static {p1, v6, v11, v5, v11}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 212
    invoke-static {p1, v8, v10, v4, v10}, La/a;->s(Landroid/view/Menu;IZIZ)V

    .line 215
    :goto_d6
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 218
    move-result-object v0

    .line 219
    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getViewMode()I

    .line 222
    move-result v1

    .line 223
    if-ne v1, v10, :cond_e4

    .line 225
    const v1, 0x7f110209

    .line 228
    goto :goto_e7

    .line 229
    :cond_e4
    const v1, 0x7f1101d3

    .line 232
    :goto_e7
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 235
    const v0, 0x7f0a039c

    .line 238
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 241
    move-result-object v0

    .line 242
    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 245
    const v0, 0x7f0a039d

    .line 248
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 251
    move-result-object v0

    .line 252
    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->getCheckedPaths()Ljava/util/List;

    .line 262
    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_114

    .line 269
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->isPickFolderMode()Z

    .line 272
    move-result v0

    .line 273
    if-eqz v0, :cond_113

    .line 275
    goto :goto_114

    .line 276
    :cond_113
    move v10, v11

    .line 277
    :cond_114
    :goto_114
    invoke-interface {p1, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 280
    :cond_117
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/FoldScreenFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    if-eqz p1, :cond_23

    .line 8
    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    if-eqz p1, :cond_23

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->gridDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    if-eqz p1, :cond_23

    .line 16
    check-cast p1, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 18
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 27
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 29
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 32
    move-result p2

    .line 33
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 36
    :cond_23
    invoke-static {}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getsInstance()Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 39
    move-result-object p1

    .line 40
    const p2, 0x7f0d006c

    .line 43
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->onDestroy(I)V

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 48
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 50
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->initDecoration()V

    .line 56
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->onResume()V

    .line 4
    return-void
.end method

.method public setAdapter(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/FileFragment;->setAdapter(Z)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateTitle()V

    .line 10
    return-void
.end method

.method public showBackView()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isXspace()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->isNotInternalVolume()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_c
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/FileFragment;->isRootPath()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->showBackView(Z)Z

    move-result v0

    return v0
.end method

.method public updateChoiceItems()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->getChoiceList()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/ExportFileFragment;->updateMultiChoiceModeTitle(I)V

    .line 17
    return-void
.end method

.method public updateMultiChoiceModeTitle(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleNoFolderMode(Landroid/app/Activity;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_18

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 15
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleMode(Landroid/app/Activity;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_6f

    .line 25
    :cond_18
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1f

    .line 31
    return-void

    .line 32
    :cond_1f
    const v1, 0x7f0801de

    .line 35
    if-nez p1, :cond_36

    .line 37
    const p1, 0x7f11025d

    .line 40
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    .line 49
    if-eqz p1, :cond_6f

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    goto :goto_6f

    .line 55
    :cond_36
    const v2, 0x7f0f0021

    .line 58
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;

    .line 67
    if-eqz p1, :cond_4c

    .line 69
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/fileitem/NewFileListRecycleAdapter;->isCheckedAll()Z

    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4c

    .line 75
    const/4 p1, 0x1

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    const/4 p1, 0x0

    .line 78
    :goto_4d
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object v2

    .line 84
    if-eqz p1, :cond_59

    .line 86
    const v3, 0x7f11001e

    .line 89
    goto :goto_5c

    .line 90
    :cond_59
    const v3, 0x7f11001f

    .line 93
    :goto_5c
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    .line 102
    if-eqz v0, :cond_6f

    .line 104
    if-eqz p1, :cond_6c

    .line 106
    const v1, 0x7f0801e8

    .line 109
    :cond_6c
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    :cond_6f
    :goto_6f
    return-void
.end method
