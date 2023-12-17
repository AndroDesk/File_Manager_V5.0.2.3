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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->TAG:Ljava/lang/String;

    const-string v0, "bigpic_page"

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->ANALYTICS_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mNeedRefresh:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/activity/ViewLargeActivity;Ljava/lang/String;)Landroid/util/Pair;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->checkIfRequestSD(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->onDelete()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/activity/ViewLargeActivity;Lcom/android/fileexplorer/model/FileWithExt;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->onOperationRemoveFavorite(Lcom/android/fileexplorer/model/FileWithExt;Z)V

    return-void
.end method

.method public static synthetic access$1202(Lcom/android/fileexplorer/activity/ViewLargeActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mNeedRefresh:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/activity/ViewLargeActivity;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    return p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/activity/ViewLargeActivity;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    return p1
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/activity/ViewLargeActivity;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/fileexplorer/activity/ViewLargeActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mRequestPermission:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->updateTitle()V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->encrypt()V

    return-void
.end method

.method private changeOperationVisibility()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mShowExtra:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mShowExtra:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->isShowing()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->show()V

    goto :goto_27

    :cond_16
    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mShowExtra:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->hide()V

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

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->isAndroidPAndLater()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getSDStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    if-nez v0, :cond_13

    return-object v1

    :cond_13
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->noSDWritePermission(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    return-object v1

    :cond_1a
    new-instance p1, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;

    const v0, 0x7f0a0070

    invoke-direct {p1, v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;-><init>(I)V

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->setActionCache(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeActionInterface;)V

    new-instance p1, Landroid/util/Pair;

    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private encrypt()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    iget v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getExternalPrivateRootDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encryptSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/encryption/EncryptUtil$EncryptCallback;)V

    return-void
.end method

.method private initActionBar()V
    .registers 6

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->hide()V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f042d8a

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0329be

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/a;->setDisplayShowCustomEnabled(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    new-instance v2, Landroidx/appcompat/app/a$a;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/app/a$a;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/a;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/a$a;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayShowTitleEnabled(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mTitleTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/fileexplorer/activity/ViewLargeActivity$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity$2;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4c
    return-void
.end method

.method private initList()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mRefreshTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mRefreshTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private initUI()V
    .registers 3

    const v0, 0x7f032931

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Li1/a;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/android/fileexplorer/activity/ViewLargeActivity$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity$3;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$j;)V

    return-void
.end method

.method private onDelete()V
    .registers 3

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v1, v1, v0}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    iget v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1b

    goto :goto_3e

    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    iget v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->setList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-virtual {v0}, Li1/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_3a
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->updateTitle()V

    return-void

    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private onOperationAddFavorite(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Lcom/android/fileexplorer/dao/fav/Favorite;

    invoke-direct {v0}, Lcom/android/fileexplorer/dao/fav/Favorite;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/dao/fav/Favorite;->setLocation(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Object;)J

    const v0, 0x7f11045b

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    :cond_32
    return-void
.end method

.method private onOperationDelete(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f12000d

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1102fb

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110118

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity$6;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;Ljava/lang/String;)V

    const p1, 0x7f110116

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110050

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private onOperationRemoveFavorite(Lcom/android/fileexplorer/model/FileWithExt;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/android/fileexplorer/util/FavUtil;->removeFromDbByFileWithExt(Ljava/util/List;)V

    if-nez p2, :cond_23

    const p2, 0x7f11045c

    invoke-static {p2}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    :cond_23
    iget-object p2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_30
    return-void
.end method

.method private onOperationSend(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_24

    :cond_20
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_24
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v1, 0x7f182e88

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    :try_start_38
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_55

    :catch_3c
    move-exception v0

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->TAG:Ljava/lang/String;

    const-string v2, "fail to send file: "

    const-string v3, " "

    invoke-static {v2, p1, v3}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_55
    return-void
.end method

.method private setMenuEnabled(Landroid/view/Menu;IZ)V
    .registers 4

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_9
    return-void
.end method

.method private setMenuVisible(Landroid/view/Menu;IZ)V
    .registers 4

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    return-void
.end method

.method private updateTitle()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    if-eqz v0, :cond_4b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    iget v3, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%s \u202d(%d/%d)\u202c"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_4b
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;)V
    .registers 3

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_6
    const v0, 0x7f0a0070

    invoke-virtual {p1}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager$StorageVolumeAction;->getActionId()I

    move-result p1

    if-ne v0, p1, :cond_12

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->initList()V

    :cond_12
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    if-eqz v0, :cond_45

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    if-gt v0, v1, :cond_10

    goto :goto_45

    :cond_10
    const/16 v0, 0x6a

    if-eq p1, v0, :cond_3f

    const/16 p2, 0x71

    if-eq p1, p2, :cond_19

    goto :goto_45

    :cond_19
    if-nez p3, :cond_1c

    goto :goto_45

    :cond_1c
    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_45

    const-string p2, "/FileExplorer/.safebox"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_31

    goto :goto_45

    :cond_31
    new-instance p2, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;

    invoke-direct {p2, p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity$7;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Void;

    invoke-virtual {p2, p1, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_45

    :cond_3f
    const/4 p1, -0x1

    if-ne p2, p1, :cond_45

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->encrypt()V

    :cond_45
    :goto_45
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f042dba

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFrom:Ljava/lang/String;

    if-nez v0, :cond_38

    const-string v0, ""

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFrom:Ljava/lang/String;

    :cond_38
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->initActionBar()V

    invoke-static {}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getInstance()Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getFileList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_4d
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getCurrentPos()I

    move-result v2

    iput v2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->clearFileList()V

    new-instance v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFrom:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;)V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    if-eqz p1, :cond_7b

    const-string v0, "showActionBar"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mShowExtra:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->changeOperationVisibility()V

    :cond_7b
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->initUI()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0011

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->setList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-virtual {v0}, Li1/a;->notifyDataSetChanged()V

    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mRefreshTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->getInstance()Lcom/android/fileexplorer/filemanager/StorageVolumeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeManager;->clearActionCache()V

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEncrypted()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->onDelete()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x52

    if-eq p1, v0, :cond_9

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_d

    :cond_9
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->changeOperationVisibility()V

    const/4 p1, 0x1

    :goto_d
    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 12

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v3, -0x1

    const-string v1, "groupId"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    iget v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_c2

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_37
    invoke-direct {p0, v0, v3}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->onOperationRemoveFavorite(Lcom/android/fileexplorer/model/FileWithExt;Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return v2

    :sswitch_3e
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->onOperationSend(Ljava/lang/String;)V

    return v2

    :sswitch_46
    new-instance p1, Lcom/android/fileexplorer/activity/ViewLargeActivity$5;

    invoke-direct {p1, p0, v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity$5;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;Lcom/android/fileexplorer/model/FileWithExt;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    :sswitch_53
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110212

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f110213

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/fileexplorer/activity/ViewLargeActivity$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity$4;-><init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v2

    :sswitch_7e
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    iget v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    const-string v1, ""

    invoke-static {p0, p1, v0, v1, v3}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;ILjava/lang/String;Z)V

    return v2

    :sswitch_88
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->onOperationAddFavorite(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return v2

    :sswitch_93
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    iget v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->onOperationDelete(Ljava/lang/String;)V

    return v2

    :sswitch_a5
    const p1, 0x7f1103bd

    invoke-static {p1}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    const v4, 0x7f110114

    const v5, 0x7f110112

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/model/Util;->pickFolder(Landroid/app/Activity;IIZZZZ)V

    return v2

    nop

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

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mAdapter:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 12

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_e2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_e2

    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    iget v2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_38

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/android/fileexplorer/controller/IntentBuilder;->getTmpDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_38

    :cond_36
    move v2, v1

    goto :goto_39

    :cond_38
    :goto_38
    move v2, v3

    :goto_39
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_49

    if-nez v2, :cond_49

    move v4, v3

    goto :goto_4a

    :cond_49
    move v4, v1

    :goto_4a
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/FileExplorer/.safebox"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    const v7, 0x7f0a0075

    invoke-direct {p0, p1, v7, v6}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v6, 0x7f0a005a

    xor-int/2addr v2, v3

    invoke-direct {p0, p1, v6, v2}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    iget-object v2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    if-nez v5, :cond_77

    move v2, v3

    goto :goto_78

    :cond_77
    move v2, v1

    :goto_78
    const v6, 0x7f0a005e

    invoke-direct {p0, p1, v6, v2}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v2, 0x7f0a0079

    iget-object v8, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mFavList:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_95

    if-nez v5, :cond_95

    move v8, v3

    goto :goto_96

    :cond_95
    move v8, v1

    :goto_96
    invoke-direct {p0, p1, v2, v8}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    invoke-direct {p0, p1, v6, v4}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    invoke-direct {p0, p1, v7, v4}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v2, 0x7f0a006d

    xor-int/lit8 v6, v5, 0x1

    invoke-direct {p0, p1, v2, v6}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v2, 0x7f0a0059

    invoke-direct {p0, p1, v2, v5}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v2, 0x7f0a0073

    invoke-direct {p0, p1, v2, v5}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v0

    if-eqz v0, :cond_c9

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v0

    if-eqz v0, :cond_c9

    move v0, v3

    goto :goto_ca

    :cond_c9
    move v0, v1

    :goto_ca
    const v2, 0x7f0a006e

    if-nez v0, :cond_de

    if-eqz v4, :cond_de

    if-nez v5, :cond_de

    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    move-result v0

    if-eqz v0, :cond_de

    move v1, v3

    :cond_de
    invoke-direct {p0, p1, v2, v1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    return v3

    :cond_e2
    :goto_e2
    return v1
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    invoke-static {p0}, Lcom/android/cloud/util/ColorGamutUtil;->changeWCG(Landroid/app/Activity;)V

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mRequestPermission:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mNeedRefresh:Z

    if-eqz v0, :cond_f

    goto :goto_13

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mNeedRefresh:Z

    goto :goto_16

    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->initList()V

    :goto_16
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mShowExtra:Z

    const-string v1, "showActionBar"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getInstance()Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mImageList:Ljava/util/List;

    iget v3, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity;->mIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->setViewLargeInfo(Ljava/lang/String;Ljava/util/List;I)V

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewTap(Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->changeOperationVisibility()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
