.class public Lcom/android/fileexplorer/activity/ViewLargeActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "ViewLargeActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;
.implements Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;
.implements Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;


# instance fields
.field private final ANALYTICS_TAG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

.field private mFavList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFrom:Ljava/lang/String;

.field private mImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mNeedRefresh:Z

.field private mRefreshTask:Landroid/os/AsyncTask;

.field private mRequestPermission:Z

.field private mShowExtra:Z

.field private mTitle:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->TAG:Ljava/lang/String;

    .line 14
    const-string v0, "bigpic_page"

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->ANALYTICS_TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mNeedRefresh:Z

    .line 21
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/activity/ViewLargeActivity;Ljava/lang/String;)Landroid/util/Pair;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->checkIfRequestSD(Ljava/lang/String;)Landroid/util/Pair;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->onDelete()V

    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/activity/ViewLargeActivity;Lcom/android/fileexplorer/model/FileWithExt;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->onOperationRemoveFavorite(Lcom/android/fileexplorer/model/FileWithExt;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$1202(Lcom/android/fileexplorer/activity/ViewLargeActivity;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mNeedRefresh:Z

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/activity/ViewLargeActivity;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 3
    return p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/activity/ViewLargeActivity;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 3
    return p1
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/activity/ViewLargeActivity;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    .line 3
    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->TAG:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/fileexplorer/activity/ViewLargeActivity;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mRequestPermission:Z

    .line 3
    return p1
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->updateTitle()V

    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->encrypt()V

    .line 4
    return-void
.end method

.method private changeOperationVisibility()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mShowExtra:Z

    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mShowExtra:Z

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->isShowing()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_16

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->show()V

    .line 22
    goto :goto_27

    .line 23
    :cond_16
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mShowExtra:Z

    .line 25
    if-nez v0, :cond_27

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 29
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->isShowing()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_27

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->hide()V

    .line 40
    :cond_27
    :goto_27
    return-void
.end method

.method private checkIfRequestSD(Ljava/lang/String;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->isAndroidPAndLater()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getSDStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    return-object v1

    .line 20
    :cond_13
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->noSDWritePermission(Ljava/lang/String;)Z

    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1a

    .line 26
    return-object v1

    .line 27
    :cond_1a
    new-instance p1, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    .line 29
    const v0, 0x7f0a0070

    .line 32
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;-><init>(I)V

    .line 35
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1, p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->setActionCache(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;)V

    .line 42
    new-instance p1, Landroid/util/Pair;

    .line 44
    const/16 v0, 0x11

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    return-object p1
.end method

.method private encrypt()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/fileexplorer/model/FileWithExt;

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getExternalPrivateRootDir()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-static {p0, v0, v1, p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encryptSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;)V

    .line 22
    return-void
.end method

.method private initActionBar()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 7
    if-eqz v0, :cond_44

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->hide()V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0d001c

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0a0428

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/TextView;

    .line 33
    iput-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 35
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/a;->setDisplayShowCustomEnabled(Z)V

    .line 41
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 43
    new-instance v2, Landroidx/appcompat/app/a$a;

    .line 45
    const/4 v3, -0x1

    .line 46
    const/4 v4, -0x2

    .line 47
    invoke-direct {v2, v3, v4}, Landroidx/appcompat/app/a$a;-><init>(II)V

    .line 50
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/a;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/a$a;)V

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayShowTitleEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 61
    new-instance v1, Lcom/android/fileexplorer/activity/ViewLargeActivity$2;

    .line 63
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity$2;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_44
    return-void
.end method

.method private initList()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mRefreshTask:Landroid/os/AsyncTask;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 6
    new-instance v0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;

    .line 8
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    .line 11
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 13
    const/4 v2, 0x0

    .line 14
    new-array v2, v2, [Ljava/lang/Void;

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mRefreshTask:Landroid/os/AsyncTask;

    .line 22
    return-void
.end method

.method private initUI()V
    .registers 3

    .line 1
    const v0, 0x7f0a04a7

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 14
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Li1/a;)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 19
    new-instance v1, Lcom/android/fileexplorer/activity/ViewLargeActivity$3;

    .line 21
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity$3;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    .line 24
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 27
    return-void
.end method

.method private onDelete()V
    .registers 3

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v1, v1, v1, v0}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_3e

    .line 17
    iget v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 19
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    move-result v1

    .line 25
    if-lt v0, v1, :cond_1b

    .line 27
    goto :goto_3e

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 30
    iget v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->setList(Ljava/util/List;)V

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 44
    invoke-virtual {v0}, Li1/a;->notifyDataSetChanged()V

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 49
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3a

    .line 55
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 58
    return-void

    .line 59
    :cond_3a
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->updateTitle()V

    .line 62
    return-void

    .line 63
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 66
    return-void
.end method

.method private onOperationAddFavorite(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_32

    .line 13
    new-instance v0, Lcom/android/fileexplorer/dao/fav/Favorite;

    .line 15
    invoke-direct {v0}, Lcom/android/fileexplorer/dao/fav/Favorite;-><init>()V

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/dao/fav/Favorite;->setLocation(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Object;)J

    .line 28
    const v0, 0x7f11045b

    .line 31
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 46
    move-result-object p1

    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 51
    :cond_32
    return-void
.end method

.method private onOperationDelete(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    const v1, 0x7f12000d

    .line 6
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 9
    const v1, 0x7f1102fb

    .line 12
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 15
    move-result-object v0

    .line 16
    const v1, 0x1010355

    .line 19
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 22
    move-result-object v0

    .line 23
    const v1, 0x7f110118

    .line 26
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    .line 32
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;Ljava/lang/String;)V

    .line 35
    const p1, 0x7f110116

    .line 38
    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 41
    move-result-object p1

    .line 42
    const v0, 0x7f110050

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 57
    return-void
.end method

.method private onOperationRemoveFavorite(Lcom/android/fileexplorer/model/FileWithExt;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_30

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-static {v0}, Lcom/android/fileexplorer/util/FavUtil;->removeFromDbByFileWithExt(Ljava/util/List;)V

    .line 28
    if-nez p2, :cond_23

    .line 30
    const p2, 0x7f11045c

    .line 33
    invoke-static {p2}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 36
    :cond_23
    iget-object p2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    .line 38
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 49
    :cond_30
    return-void
.end method

.method private onOperationSend(Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.SEND"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "image/*"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    new-instance v1, Ljava/io/File;

    .line 15
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_20

    .line 24
    invoke-static {v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    goto :goto_24

    .line 33
    :cond_20
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 36
    move-result-object v1

    .line 37
    :goto_24
    const-string v2, "android.intent.extra.STREAM"

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    const v1, 0x7f11031e

    .line 45
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 52
    move-result-object v0

    .line 53
    :try_start_34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_34 .. :try_end_37} :catch_38

    .line 56
    goto :goto_51

    .line 57
    :catch_38
    move-exception v0

    .line 58
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->TAG:Ljava/lang/String;

    .line 60
    const-string v2, "fail to send file: "

    .line 62
    const-string v3, " "

    .line 64
    invoke-static {v2, p1, v3}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_51
    return-void
.end method

.method private setMenuEnabled(Landroid/view/Menu;IZ)V
    .registers 4

    .line 1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10
    :cond_9
    return-void
.end method

.method private setMenuVisible(Landroid/view/Menu;IZ)V
    .registers 4

    .line 1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10
    :cond_9
    return-void
.end method

.method private updateTitle()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 3
    if-eqz v0, :cond_4b

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 7
    if-eqz v0, :cond_4b

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_12

    .line 15
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 21
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 29
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x3

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    const/4 v3, 0x0

    .line 37
    iget-object v4, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mTitle:Ljava/lang/String;

    .line 39
    aput-object v4, v2, v3

    .line 41
    iget v3, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 43
    const/4 v4, 0x1

    .line 44
    add-int/2addr v3, v4

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v3

    .line 49
    aput-object v3, v2, v4

    .line 51
    const/4 v3, 0x2

    .line 52
    iget-object v4, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 54
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 57
    move-result v4

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v4

    .line 62
    aput-object v4, v2, v3

    .line 64
    const-string v3, "%s \u202d(%d/%d)\u202c"

    .line 66
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 76
    :cond_4b
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;)V
    .registers 3

    .line 1
    if-nez p1, :cond_6

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 6
    return-void

    .line 7
    :cond_6
    const v0, 0x7f0a0070

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getActionId()I

    .line 13
    move-result p1

    .line 14
    if-ne v0, p1, :cond_12

    .line 16
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->initList()V

    .line 19
    :cond_12
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 6
    if-eqz v0, :cond_45

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 14
    if-gt v0, v1, :cond_10

    .line 16
    goto :goto_45

    .line 17
    :cond_10
    const/16 v0, 0x6a

    .line 19
    if-eq p1, v0, :cond_3f

    .line 21
    const/16 p2, 0x71

    .line 23
    if-eq p1, p2, :cond_19

    .line 25
    goto :goto_45

    .line 26
    :cond_19
    if-nez p3, :cond_1c

    .line 28
    goto :goto_45

    .line 29
    :cond_1c
    const-string p1, "android.intent.extra.STREAM"

    .line 31
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_45

    .line 41
    const-string p2, "/FileExplorer/.safebox"

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_31

    .line 49
    goto :goto_45

    .line 50
    :cond_31
    new-instance p2, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;

    .line 52
    invoke-direct {p2, p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;Ljava/lang/String;)V

    .line 55
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 57
    const/4 p3, 0x0

    .line 58
    new-array p3, p3, [Ljava/lang/Void;

    .line 60
    invoke-virtual {p2, p1, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    goto :goto_45

    .line 64
    :cond_3f
    const/4 p1, -0x1

    .line 65
    if-ne p2, p1, :cond_45

    .line 67
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->encrypt()V

    .line 70
    :cond_45
    :goto_45
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    move-result-object v0

    .line 8
    const/16 v1, 0x400

    .line 10
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v0

    .line 17
    const/16 v1, 0x2000

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 22
    const v0, 0x7f0d002c

    .line 25
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    .line 30
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 38
    move-result-object v0

    .line 39
    const-string v1, "from"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFrom:Ljava/lang/String;

    .line 47
    if-nez v0, :cond_34

    .line 49
    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFrom:Ljava/lang/String;

    .line 53
    :cond_34
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->initActionBar()V

    .line 56
    invoke-static {}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getInstance()Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getFileList()Ljava/util/List;

    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_49

    .line 70
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 73
    return-void

    .line 74
    :cond_49
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getTitle()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    iput-object v2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mTitle:Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getCurrentPos()I

    .line 83
    move-result v2

    .line 84
    iput v2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    .line 88
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    iput-object v2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 93
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->clearFileList()V

    .line 96
    new-instance v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 98
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFrom:Ljava/lang/String;

    .line 100
    invoke-direct {v0, p0, v1, p0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;)V

    .line 103
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 105
    if-eqz p1, :cond_77

    .line 107
    const-string v0, "showActionBar"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 112
    move-result p1

    .line 113
    xor-int/lit8 p1, p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mShowExtra:Z

    .line 117
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->changeOperationVisibility()V

    .line 120
    :cond_77
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->initUI()V

    .line 123
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0e0011

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_1b

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1b

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->setList(Ljava/util/List;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 25
    invoke-virtual {v0}, Li1/a;->notifyDataSetChanged()V

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mRefreshTask:Landroid/os/AsyncTask;

    .line 30
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 33
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->clearActionCache()V

    .line 40
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    .line 43
    return-void
.end method

.method public onEncrypted()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->onDelete()V

    .line 4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    const/16 v0, 0x52

    .line 3
    if-eq p1, v0, :cond_9

    .line 5
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 8
    move-result p1

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->changeOperationVisibility()V

    .line 13
    const/4 p1, 0x1

    .line 14
    :goto_d
    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 9
    const/4 v2, 0x1

    .line 10
    if-gt v0, v1, :cond_c

    .line 12
    return v2

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    move-result-object v0

    .line 17
    const-wide/16 v3, -0x1

    .line 19
    const-string v1, "groupId"

    .line 21
    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 24
    move-result-wide v3

    .line 25
    new-instance v0, Landroid/content/Intent;

    .line 27
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 30
    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 35
    iget v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/fileexplorer/model/FileWithExt;

    .line 43
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 46
    move-result v1

    .line 47
    const/4 v3, 0x0

    .line 48
    sparse-switch v1, :sswitch_data_c2

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :sswitch_37
    invoke-direct {p0, v0, v3}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->onOperationRemoveFavorite(Lcom/android/fileexplorer/model/FileWithExt;Z)V

    .line 59
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 62
    return v2

    .line 63
    :sswitch_3e
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->onOperationSend(Ljava/lang/String;)V

    .line 70
    return v2

    .line 71
    :sswitch_46
    new-instance p1, Lcom/android/fileexplorer/activity/ViewLargeActivity$5;

    .line 73
    invoke-direct {p1, p0, v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity$5;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;Lcom/android/fileexplorer/model/FileWithExt;)V

    .line 76
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 78
    new-array v1, v3, [Ljava/lang/Void;

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    return v2

    .line 84
    :sswitch_53
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 86
    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    const v0, 0x7f110212

    .line 92
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 95
    move-result-object p1

    .line 96
    const v1, 0x7f110213

    .line 99
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 102
    move-result-object p1

    .line 103
    new-instance v1, Lcom/android/fileexplorer/activity/ViewLargeActivity$4;

    .line 105
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity$4;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    .line 108
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 111
    move-result-object p1

    .line 112
    const/high16 v0, 0x1040000

    .line 114
    const/4 v1, 0x0

    .line 115
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 126
    return v2

    .line 127
    :sswitch_7e
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 129
    iget v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 131
    const-string v1, ""

    .line 133
    invoke-static {p0, p1, v0, v1, v3}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;Z)V

    .line 136
    return v2

    .line 137
    :sswitch_88
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->onOperationAddFavorite(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 147
    return v2

    .line 148
    :sswitch_93
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 150
    iget v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 152
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Lcom/android/fileexplorer/model/FileWithExt;

    .line 158
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->onOperationDelete(Ljava/lang/String;)V

    .line 165
    return v2

    .line 166
    :sswitch_a5
    const p1, 0x7f1103bd

    .line 169
    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 172
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 179
    const v4, 0x7f110114

    .line 182
    const v5, 0x7f110112

    .line 185
    const/4 v6, 0x0

    .line 186
    const/4 v7, 0x0

    .line 187
    const/4 v8, 0x0

    .line 188
    const/4 v9, 0x1

    .line 189
    move-object v3, p0

    .line 190
    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/model/Util;->pickFolder(Landroid/app/Activity;IIZZZZ)V

    .line 193
    return v2

    .line 194
    nop

    .line 195
    :sswitch_data_c2
    .sparse-switch
        0x7f0a0059 -> :sswitch_a5
        0x7f0a005a -> :sswitch_93
        0x7f0a005e -> :sswitch_88
        0x7f0a006d -> :sswitch_7e
        0x7f0a006e -> :sswitch_53
        0x7f0a0073 -> :sswitch_46
        0x7f0a0075 -> :sswitch_3e
        0x7f0a0079 -> :sswitch_37
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onPause()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->onPause()V

    .line 9
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 12

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_e2

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    goto/16 :goto_e2

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 19
    iget v2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/fileexplorer/model/FileWithExt;

    .line 27
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const-string v3, "smb://"

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x1

    .line 38
    if-nez v2, :cond_38

    .line 40
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-static {p0}, Lcom/android/fileexplorer/controller/IntentBuilder;->getTmpDir(Landroid/content/Context;)Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_36

    .line 54
    goto :goto_38

    .line 55
    :cond_36
    move v2, v1

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    :goto_38
    move v2, v3

    .line 58
    :goto_39
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    const-string v5, "http"

    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_49

    .line 70
    if-nez v2, :cond_49

    .line 72
    move v4, v3

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    move v4, v1

    .line 75
    :goto_4a
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    const-string v6, "/FileExplorer/.safebox"

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    move-result v5

    .line 85
    xor-int/lit8 v6, v5, 0x1

    .line 87
    const v7, 0x7f0a0075

    .line 90
    invoke-direct {p0, p1, v7, v6}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 93
    const v6, 0x7f0a005a

    .line 96
    xor-int/2addr v2, v3

    .line 97
    invoke-direct {p0, p1, v6, v2}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 100
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    .line 102
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_77

    .line 116
    if-nez v5, :cond_77

    .line 118
    move v2, v3

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    move v2, v1

    .line 121
    :goto_78
    const v6, 0x7f0a005e

    .line 124
    invoke-direct {p0, p1, v6, v2}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 127
    const v2, 0x7f0a0079

    .line 130
    iget-object v8, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    .line 132
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 135
    move-result-object v9

    .line 136
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 139
    move-result-object v9

    .line 140
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 143
    move-result v8

    .line 144
    if-eqz v8, :cond_95

    .line 146
    if-nez v5, :cond_95

    .line 148
    move v8, v3

    .line 149
    goto :goto_96

    .line 150
    :cond_95
    move v8, v1

    .line 151
    :goto_96
    invoke-direct {p0, p1, v2, v8}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 154
    invoke-direct {p0, p1, v6, v4}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 157
    invoke-direct {p0, p1, v7, v4}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 160
    const v2, 0x7f0a006d

    .line 163
    xor-int/lit8 v6, v5, 0x1

    .line 165
    invoke-direct {p0, p1, v2, v6}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 168
    const v2, 0x7f0a0059

    .line 171
    invoke-direct {p0, p1, v2, v5}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 174
    const v2, 0x7f0a0073

    .line 177
    invoke-direct {p0, p1, v2, v5}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 180
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 187
    move-result-object v0

    .line 188
    if-eqz v0, :cond_c9

    .line 190
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_c9

    .line 200
    move v0, v3

    .line 201
    goto :goto_ca

    .line 202
    :cond_c9
    move v0, v1

    .line 203
    :goto_ca
    const v2, 0x7f0a006e

    .line 206
    if-nez v0, :cond_de

    .line 208
    if-eqz v4, :cond_de

    .line 210
    if-nez v5, :cond_de

    .line 212
    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_de

    .line 222
    move v1, v3

    .line 223
    :cond_de
    invoke-direct {p0, p1, v2, v1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 226
    return v3

    .line 227
    :cond_e2
    :goto_e2
    return v1
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    .line 4
    invoke-static {p0}, Lcom/android/cloud/util/ColorGamutUtil;->changeWCG(Landroid/app/Activity;)V

    .line 7
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mRequestPermission:Z

    .line 9
    if-nez v0, :cond_13

    .line 11
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mNeedRefresh:Z

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mNeedRefresh:Z

    .line 19
    goto :goto_16

    .line 20
    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->initList()V

    .line 23
    :goto_16
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mShowExtra:Z

    .line 3
    const-string v1, "showActionBar"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getInstance()Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mTitle:Ljava/lang/String;

    .line 14
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    .line 16
    iget v3, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->setViewLargeInfo(Ljava/lang/String;Ljava/util/List;I)V

    .line 21
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 24
    return-void
.end method

.method public onViewTap(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->changeOperationVisibility()V

    .line 4
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4
    return-void
.end method
