.class public Lcom/android/fileexplorer/activity/ImagePreviewActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "ImagePreviewActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;
    }
.end annotation


# static fields
.field private static final MEDIAEDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.miui.mediaeditor"


# instance fields
.field private final REQUEST_EDIT_CALLBACK:I

.field private final TAG:Ljava/lang/String;

.field private isSupportWallpaper:Z

.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private mFavList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFbAnimator:Landroid/animation/Animator;

.field private mForegroundDownloadTask:Lcom/micloud/midrive/task/ForegroundDownloadTask;

.field private mFrameLayoutBg:Landroid/view/View;

.field private mImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mMenu:Landroid/view/Menu;

.field private mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private mViewPager:Lmiuix/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->REQUEST_EDIT_CALLBACK:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Landroid/view/Menu;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mMenu:Landroid/view/Menu;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Landroid/view/Menu;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->updateMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lcom/micloud/midrive/task/ForegroundDownloadTask;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mForegroundDownloadTask:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    return p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/activity/ImagePreviewActivity;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    return p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lmiuix/viewpager/widget/ViewPager;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFrameLayoutBg:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->updateTitle()V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lmiuix/androidbasewidget/widget/ProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private downloadImage()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_43

    instance-of v0, v0, Lcom/android/cloud/bean/CloudFileInfo;

    if-nez v0, :cond_9

    goto :goto_43

    :cond_9
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x7f110123

    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mForegroundDownloadTask:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    if-eqz v1, :cond_29

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    :cond_29
    new-instance v1, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;-><init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mForegroundDownloadTask:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    const-string v0, "pic"

    const-string v1, "cloud_file_preview"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFileCache(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mForegroundDownloadTask:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_43
    :goto_43
    return-void
.end method

.method private initActionBar()V
    .registers 5

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_2a

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f2dc3

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    :cond_2a
    return-void
.end method

.method private initList()V
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$2;-><init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)V

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    invoke-static {v1, p0}, Lcom/android/fileexplorer/util/RxTransformerHelperKt;->createIO2MainObservable(Li2/e;Landroidx/lifecycle/m;)Li2/e;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/activity/ImagePreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$1;-><init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    return-void
.end method

.method private initUI()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    const v0, 0x7f032c00

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFrameLayoutBg:Landroid/view/View;

    const v0, 0x7f032931

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    const v0, 0x7f032ebf

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    new-instance v1, Lcom/android/fileexplorer/activity/ImagePreviewActivity$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$4;-><init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$j;)V

    new-instance v0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;-><init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setAdapter(Li1/a;)V

    return-void
.end method

.method private onOperationAddFavorite(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

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

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

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

.method private onOperationDelete(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 6

    new-instance p1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-direct {p1, p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    instance-of v3, v2, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v3, :cond_1b

    check-cast v2, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_1b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1e
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->deleteFiles(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method private onOperationRemoveFavorite(Lcom/android/fileexplorer/model/FileInfo;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/android/fileexplorer/util/FavUtil;->removeFromDbByFileInfo(Ljava/util/List;)V

    if-nez p2, :cond_21

    const p2, 0x7f11045c

    invoke-static {p2}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    :cond_21
    iget-object p2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_2c
    return-void
.end method

.method private onOperationSend()V
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Lcom/android/fileexplorer/model/FileInfo;)V

    return-void
.end method

.method private openImageByEditor()V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "com.miui.mediaeditor"

    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/InstallAPKHelper;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const v3, 0x7f1101fa

    const v4, 0x7f1101f9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "com.miui.mediaeditor"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/fileexplorer/util/InstallAPKHelper;->showInstallFromMarketDialog(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;)V

    return-void

    :cond_1c
    :try_start_1c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "extra_photopagefragment_screen_scene_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.miui.gallery.editor.photo.app.PhotoEditor"

    invoke-direct {v2, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4c

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v4, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_59

    :cond_4c
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v4, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_59
    const-string v4, "image/*"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "photo_is_favorite"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_66} :catch_67

    goto :goto_82

    :catch_67
    move-exception v0

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->TAG:Ljava/lang/String;

    const-string v2, "openImageByEditor error:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    return-void
.end method

.method private openImageByGallery()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/fileexplorer/model/FileWithExt;

    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewImagesUsingGallery(Landroid/content/Context;Ljava/util/List;I)V

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

.method private setShowAsAction(Landroid/view/Menu;II)V
    .registers 4

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_9
    return-void
.end method

.method private showInfo()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    return-void
.end method

.method private toggleBgView(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFbAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFrameLayoutBg:Landroid/view/View;

    const/16 v1, 0xc8

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/util/AnimatorFactory;->alpha(Landroid/view/View;IZ)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFbAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/android/fileexplorer/activity/ImagePreviewActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$3;-><init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private updateMenu(Landroid/view/Menu;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    instance-of v2, v2, Lcom/android/cloud/bean/CloudFileInfo;

    const v3, 0x7f0a0075

    invoke-direct {p0, p1, v3, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a005d

    invoke-direct {p0, p1, v3, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a005c

    xor-int/lit8 v4, v0, 0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a004f

    xor-int/lit8 v4, v0, 0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a005e

    const/4 v4, 0x0

    if-nez v2, :cond_45

    iget-object v5, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v6, v6, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    move v5, v1

    goto :goto_46

    :cond_45
    move v5, v4

    :goto_46
    invoke-direct {p0, p1, v3, v5}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0079

    if-nez v2, :cond_60

    iget-object v5, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v6, v6, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    move v5, v1

    goto :goto_61

    :cond_60
    move v5, v4

    :goto_61
    invoke-direct {p0, p1, v3, v5}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a007a

    if-eqz v0, :cond_6e

    iget-boolean v5, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->isSupportWallpaper:Z

    if-eqz v5, :cond_6e

    move v4, v1

    :cond_6e
    invoke-direct {p0, p1, v3, v4}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a005f

    xor-int/2addr v1, v2

    invoke-direct {p0, p1, v3, v1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v1, 0x7f0a006d

    invoke-direct {p0, p1, v1, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v1, 0x7f0a0061

    invoke-direct {p0, p1, v1, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    return-void
.end method

.method private updateMenuEnabled(Landroid/view/Menu;Z)V
    .registers 4

    const v0, 0x7f0a0075

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a005d

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a005c

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a004f

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a005e

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0079

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a007a

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a005f

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a006d

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0061

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a005a

    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    return-void
.end method

.method private updateTitle()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-nez v0, :cond_5

    return-void

    :cond_5
    instance-of v1, v0, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v1, :cond_1e

    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCreateTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCreateTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_24

    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileInfo;->getDate()J

    move-result-wide v0

    :goto_24
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v2, :cond_38

    invoke-static {p0, v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->formatDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->formatSecondTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/a;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_38
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->updateMenu(Landroid/view/Menu;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_80

    if-eqz p3, :cond_80

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_80

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x4

    if-ge p3, v0, :cond_2c

    goto :goto_80

    :cond_2c
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    if-nez p1, :cond_4d

    return-void

    :cond_4d
    iget-object p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    iget-object p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    invoke-virtual {p3}, Li1/a;->notifyDataSetChanged()V

    iget-object p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    invoke-virtual {p3, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->setData(Ljava/util/List;)V

    iget-object p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    invoke-virtual {p3, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setAdapter(Li1/a;)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->updateMenu(Landroid/view/Menu;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {p2, p2, p2, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    :cond_80
    :goto_80
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed: 返回"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-static {p0}, Lcom/android/cloud/util/ColorGamutUtil;->changeWCG(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_14

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    const p1, 0x7f042dbc

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/DisplayUtil;->toggleLayoutFullscreen(Landroid/app/Activity;Z)V

    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/DisplayUtil;->toggleSupportChangeSystemBarBg(Landroid/app/Activity;Z)V

    invoke-static {}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getInstance()Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getPreviewImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_46
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getCurrentPos()I

    move-result v2

    iput v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    iget v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_66

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    :cond_66
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    iget v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->clearFileList()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/WallpaperUtils;->supported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->isSupportWallpaper:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->initUI()V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->initList()V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->initActionBar()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mMenu:Landroid/view/Menu;

    const/4 p1, 0x1

    return p1
.end method

.method public onDelete()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v1, v1, v0}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    iget v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    if-ltz v0, :cond_6c

    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_15

    goto :goto_6c

    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    iget v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    invoke-virtual {v0}, Li1/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_2d
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setAdapter(Li1/a;)V

    iget v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    iget v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lmiuix/viewpager/widget/ViewPager;->setDraggable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->updateMenu(Landroid/view/Menu;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    invoke-virtual {v0}, Li1/a;->notifyDataSetChanged()V

    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mForegroundDownloadTask:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    if-eqz v0, :cond_25

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mForegroundDownloadTask:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFbAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFbAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_31
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_38
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x52

    if-eq p1, v0, :cond_9

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x1

    :goto_a
    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v2, -0x1

    const-string v4, "groupId"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_7e

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_27
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/WallpaperUtils;->setWallPapers(Landroid/content/Context;Ljava/io/File;)V

    return v1

    :sswitch_34
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->onOperationRemoveFavorite(Lcom/android/fileexplorer/model/FileInfo;Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return v1

    :sswitch_3d
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->onOperationSend()V

    return v1

    :sswitch_41
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationOpenByOtherApp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    return v1

    :sswitch_49
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->showInfo()V

    return v1

    :sswitch_4d
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->openImageByGallery()V

    return v1

    :sswitch_51
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->onOperationAddFavorite(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return v1

    :sswitch_5c
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->openImageByEditor()V

    return v1

    :sswitch_60
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6b

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->downloadImage()V

    :cond_6b
    return v1

    :sswitch_6c
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->onOperationDelete(Lcom/android/fileexplorer/model/FileInfo;)V

    return v1

    :sswitch_72
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->showInfo()V

    return v1

    :sswitch_76
    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Landroid/app/Activity;)V

    return v2

    :sswitch_data_7e
    .sparse-switch
        0x102002c -> :sswitch_76
        0x7f0a004f -> :sswitch_72
        0x7f0a005a -> :sswitch_6c
        0x7f0a005c -> :sswitch_60
        0x7f0a005d -> :sswitch_5c
        0x7f0a005e -> :sswitch_51
        0x7f0a005f -> :sswitch_4d
        0x7f0a0061 -> :sswitch_49
        0x7f0a006d -> :sswitch_41
        0x7f0a0075 -> :sswitch_3d
        0x7f0a0079 -> :sswitch_34
        0x7f0a007a -> :sswitch_27
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->updateMenu(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->updateTitle()V

    invoke-static {p0}, Lcom/android/cloud/util/ColorGamutUtil;->changeWCG(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getInstance()Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    iget v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->setPreviewImageList(Ljava/util/List;I)V

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewTap(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public toggleChangeActionBarView()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->isShowing()Z

    move-result v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_30

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/android/fileexplorer/util/DisplayUtil;->toggleStatusBarVisibility(Landroid/app/Activity;ZLandroid/os/CancellationSignal;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->hide()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->hideBottomMenu()V

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->toggleBgView(Z)V

    invoke-static {p0, v1}, Lcom/android/fileexplorer/util/DisplayUtil;->toggleChangeNaviBg(Landroid/app/Activity;I)V

    goto :goto_4c

    :cond_30
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v2, 0x1

    invoke-static {p0, v2, v0}, Lcom/android/fileexplorer/util/DisplayUtil;->toggleStatusBarVisibility(Landroid/app/Activity;ZLandroid/os/CancellationSignal;)V

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v1, -0x1

    :goto_3e
    invoke-static {p0, v1}, Lcom/android/fileexplorer/util/DisplayUtil;->toggleChangeNaviBg(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->show()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->showBottomMenu()V

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->toggleBgView(Z)V

    :goto_4c
    return-void
.end method
