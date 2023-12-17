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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->REQUEST_EDIT_CALLBACK:I

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static synthetic access$002(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Landroid/view/Menu;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mMenu:Landroid/view/Menu;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Landroid/view/Menu;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->updateMenu(Landroid/view/Menu;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lcom/micloud/midrive/task/ForegroundDownloadTask;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mForegroundDownloadTask:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/activity/ImagePreviewActivity;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    .line 3
    return p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lmiuix/viewpager/widget/ViewPager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFrameLayoutBg:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic access$602(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    return-object p1
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->updateTitle()V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Lmiuix/androidbasewidget/widget/ProgressBar;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->TAG:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method private downloadImage()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-eqz v0, :cond_43

    .line 5
    instance-of v0, v0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_43

    .line 10
    :cond_9
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1a

    .line 20
    const v0, 0x7f110123

    .line 23
    invoke-static {v0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 26
    return-void

    .line 27
    :cond_1a
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 29
    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 31
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mForegroundDownloadTask:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    .line 37
    if-eqz v1, :cond_29

    .line 39
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 42
    :cond_29
    new-instance v1, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v1, p0, v2, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$5;-><init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    iput-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mForegroundDownloadTask:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    .line 53
    const-string v0, "pic"

    .line 55
    const-string v1, "cloud_file_preview"

    .line 57
    invoke-static {v0, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFileCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mForegroundDownloadTask:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    .line 62
    const/4 v1, 0x0

    .line 63
    new-array v1, v1, [Ljava/lang/Void;

    .line 65
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    :cond_43
    :goto_43
    return-void
.end method

.method private initActionBar()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 7
    if-eqz v0, :cond_26

    .line 9
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v2

    .line 15
    const v3, 0x7f060055

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 21
    move-result v2

    .line 22
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 25
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 36
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 39
    :cond_26
    return-void
.end method

.method private initList()V
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$2;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$2;-><init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)V

    .line 6
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    .line 8
    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    .line 11
    invoke-static {v1, p0}, Lcom/android/fileexplorer/util/RxTransformerHelperKt;->createIO2MainObservable(Li2/e;Landroidx/lifecycle/m;)Li2/e;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/android/fileexplorer/activity/ImagePreviewActivity$1;

    .line 17
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$1;-><init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)V

    .line 20
    invoke-virtual {v0, v1}, Li2/e;->b(Ll2/c;)Lio/reactivex/internal/observers/LambdaObserver;

    .line 23
    return-void
.end method

.method private initUI()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0196

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFrameLayoutBg:Landroid/view/View;

    .line 10
    const v0, 0x7f0a04a7

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lmiuix/viewpager/widget/ViewPager;

    .line 19
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 21
    const v0, 0x7f0a0329

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 34
    new-instance v1, Lcom/android/fileexplorer/activity/ImagePreviewActivity$4;

    .line 36
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$4;-><init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)V

    .line 39
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$j;)V

    .line 42
    new-instance v0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 50
    invoke-direct {v0, p0, v1, v2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;-><init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 53
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    .line 55
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 57
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setAdapter(Li1/a;)V

    .line 60
    return-void
.end method

.method private onOperationAddFavorite(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

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
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

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

.method private onOperationDelete(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 6

    .line 1
    new-instance p1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 3
    invoke-direct {p1, p0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 18
    instance-of v3, v2, Lcom/android/cloud/bean/CloudFileInfo;

    .line 20
    if-eqz v3, :cond_1b

    .line 22
    check-cast v2, Lcom/android/cloud/bean/CloudFileInfo;

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    goto :goto_1e

    .line 28
    :cond_1b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :goto_1e
    const/4 v2, 0x1

    .line 32
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->deleteFiles(Ljava/util/List;Ljava/util/List;Z)V

    .line 35
    return-void
.end method

.method private onOperationRemoveFavorite(Lcom/android/fileexplorer/model/FileInfo;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

    .line 3
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2c

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {v0}, Lcom/android/fileexplorer/util/FavUtil;->removeFromDbByFileInfo(Ljava/util/List;)V

    .line 26
    if-nez p2, :cond_21

    .line 28
    const p2, 0x7f11045c

    .line 31
    invoke-static {p2}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V

    .line 34
    :cond_21
    iget-object p2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

    .line 36
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 45
    :cond_2c
    return-void
.end method

.method private onOperationSend()V
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 11
    return-void
.end method

.method private openImageByEditor()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "com.miui.mediaeditor"

    .line 8
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/InstallAPKHelper;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1c

    .line 14
    const v3, 0x7f1101fa

    .line 17
    const v4, 0x7f1101f9

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const-string v5, "com.miui.mediaeditor"

    .line 24
    move-object v2, p0

    .line 25
    invoke-static/range {v2 .. v7}, Lcom/android/fileexplorer/util/InstallAPKHelper;->showInstallFromMarketDialog(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;)V

    .line 28
    return-void

    .line 29
    :cond_1c
    :try_start_1c
    new-instance v1, Landroid/content/Intent;

    .line 31
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 34
    const-string v2, "extra_photopagefragment_screen_scene_code"

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    new-instance v2, Landroid/content/ComponentName;

    .line 42
    const-string v4, "com.miui.gallery.editor.photo.app.PhotoEditor"

    .line 44
    invoke-direct {v2, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    .line 56
    move-result v0

    .line 57
    const/4 v2, 0x1

    .line 58
    if-eqz v0, :cond_4c

    .line 60
    new-instance v0, Ljava/io/File;

    .line 62
    iget-object v4, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 64
    iget-object v4, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 66
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {v0}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    goto :goto_59

    .line 77
    :cond_4c
    new-instance v0, Ljava/io/File;

    .line 79
    iget-object v4, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 81
    iget-object v4, v4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 83
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 89
    move-result-object v0

    .line 90
    :goto_59
    const-string v4, "image/*"

    .line 92
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v0, "photo_is_favorite"

    .line 97
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v1, v2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_66} :catch_67

    .line 103
    goto :goto_82

    .line 104
    :catch_67
    move-exception v0

    .line 105
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->TAG:Ljava/lang/String;

    .line 107
    const-string v2, "openImageByEditor error:"

    .line 109
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_82
    return-void
.end method

.method private openImageByGallery()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v1, Lcom/android/fileexplorer/model/FileWithExt;

    .line 13
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 15
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 17
    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {p0, v0, v1}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewImagesUsingGallery(Landroid/content/Context;Ljava/util/List;I)V

    .line 31
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

.method private setShowAsAction(Landroid/view/Menu;II)V
    .registers 4

    .line 1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 10
    :cond_9
    return-void
.end method

.method private showInfo()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 8
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 13
    const-string v2, ""

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method private toggleBgView(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFbAnimator:Landroid/animation/Animator;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFrameLayoutBg:Landroid/view/View;

    .line 10
    const/16 v1, 0xc8

    .line 12
    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/util/AnimatorFactory;->alpha(Landroid/view/View;IZ)Landroid/animation/Animator;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFbAnimator:Landroid/animation/Animator;

    .line 18
    new-instance v1, Lcom/android/fileexplorer/activity/ImagePreviewActivity$3;

    .line 20
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$3;-><init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Z)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 26
    return-void
.end method

.method private updateMenu(Landroid/view/Menu;)V
    .registers 9

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 16
    instance-of v2, v2, Lcom/android/cloud/bean/CloudFileInfo;

    .line 18
    const v3, 0x7f0a0075

    .line 21
    invoke-direct {p0, p1, v3, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 24
    const v3, 0x7f0a005d

    .line 27
    invoke-direct {p0, p1, v3, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 30
    const v3, 0x7f0a005c

    .line 33
    xor-int/lit8 v4, v0, 0x1

    .line 35
    invoke-direct {p0, p1, v3, v4}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 38
    const v3, 0x7f0a004f

    .line 41
    xor-int/lit8 v4, v0, 0x1

    .line 43
    invoke-direct {p0, p1, v3, v4}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 46
    const v3, 0x7f0a005e

    .line 49
    const/4 v4, 0x0

    .line 50
    if-nez v2, :cond_45

    .line 52
    iget-object v5, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

    .line 54
    iget-object v6, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 56
    iget-object v6, v6, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 58
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_45

    .line 68
    move v5, v1

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v5, v4

    .line 71
    :goto_46
    invoke-direct {p0, p1, v3, v5}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 74
    const v3, 0x7f0a0079

    .line 77
    if-nez v2, :cond_60

    .line 79
    iget-object v5, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

    .line 81
    iget-object v6, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 83
    iget-object v6, v6, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 85
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_60

    .line 95
    move v5, v1

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    move v5, v4

    .line 98
    :goto_61
    invoke-direct {p0, p1, v3, v5}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 101
    const v3, 0x7f0a007a

    .line 104
    if-eqz v0, :cond_6e

    .line 106
    iget-boolean v5, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->isSupportWallpaper:Z

    .line 108
    if-eqz v5, :cond_6e

    .line 110
    move v4, v1

    .line 111
    :cond_6e
    invoke-direct {p0, p1, v3, v4}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 114
    const v3, 0x7f0a005f

    .line 117
    xor-int/2addr v1, v2

    .line 118
    invoke-direct {p0, p1, v3, v1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 121
    const v1, 0x7f0a006d

    .line 124
    invoke-direct {p0, p1, v1, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 127
    const v1, 0x7f0a0061

    .line 130
    invoke-direct {p0, p1, v1, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 133
    return-void
.end method

.method private updateMenuEnabled(Landroid/view/Menu;Z)V
    .registers 4

    .line 1
    const v0, 0x7f0a0075

    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 7
    const v0, 0x7f0a005d

    .line 10
    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 13
    const v0, 0x7f0a005c

    .line 16
    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 19
    const v0, 0x7f0a004f

    .line 22
    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 25
    const v0, 0x7f0a005e

    .line 28
    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 31
    const v0, 0x7f0a0079

    .line 34
    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 37
    const v0, 0x7f0a007a

    .line 40
    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 43
    const v0, 0x7f0a005f

    .line 46
    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 49
    const v0, 0x7f0a006d

    .line 52
    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 55
    const v0, 0x7f0a0061

    .line 58
    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 61
    const v0, 0x7f0a005a

    .line 64
    invoke-direct {p0, p1, v0, p2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 67
    return-void
.end method

.method private updateTitle()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    instance-of v1, v0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 8
    if-eqz v1, :cond_1e

    .line 10
    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 12
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCreateTime()Ljava/lang/Long;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1e

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 20
    check-cast v0, Lcom/android/cloud/bean/CloudFileInfo;

    .line 22
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCreateTime()Ljava/lang/Long;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 29
    move-result-wide v0

    .line 30
    goto :goto_24

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 33
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileInfo;->getDate()J

    .line 36
    move-result-wide v0

    .line 37
    :goto_24
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 39
    if-eqz v2, :cond_38

    .line 41
    invoke-static {p0, v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->formatDateTime(Landroid/content/Context;J)Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 50
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->formatSecondTime(J)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/a;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 57
    :cond_38
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mMenu:Landroid/view/Menu;

    .line 59
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->updateMenu(Landroid/view/Menu;)V

    .line 62
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

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 p2, 0x1

    .line 5
    if-ne p1, p2, :cond_80

    .line 7
    if-eqz p3, :cond_80

    .line 9
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_80

    .line 15
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_80

    .line 29
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 40
    move-result p3

    .line 41
    const/4 v0, 0x4

    .line 42
    if-ge p3, v0, :cond_2c

    .line 44
    goto :goto_80

    .line 45
    :cond_2c
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    iget-object p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v1, "onActivityResult path:"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-static {p3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_4d

    .line 77
    return-void

    .line 78
    :cond_4d
    iget-object p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 80
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 83
    iget-object p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 85
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    .line 90
    invoke-virtual {p3}, Li1/a;->notifyDataSetChanged()V

    .line 93
    iget-object p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    .line 95
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 97
    invoke-virtual {p3, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->setData(Ljava/util/List;)V

    .line 100
    iget-object p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 102
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    .line 104
    invoke-virtual {p3, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setAdapter(Li1/a;)V

    .line 107
    const/4 p3, 0x0

    .line 108
    iput p3, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    .line 110
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 112
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 114
    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    .line 117
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mMenu:Landroid/view/Menu;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->updateMenu(Landroid/view/Menu;)V

    .line 122
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 125
    move-result-object p1

    .line 126
    invoke-static {p2, p2, p2, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 129
    :cond_80
    :goto_80
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Landroid/app/Activity;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->TAG:Ljava/lang/String;

    .line 13
    const-string v1, "onBackPressed: 返回"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/android/cloud/util/ColorGamutUtil;->changeWCG(Landroid/app/Activity;)V

    .line 4
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/4 v0, 0x1

    .line 7
    const/16 v1, 0x1c

    .line 9
    if-lt p1, v1, :cond_14

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 18
    move-result-object p1

    .line 19
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 21
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    move-result-object p1

    .line 25
    const/high16 v1, 0x8000000

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 30
    const p1, 0x7f0d002a

    .line 33
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 36
    new-instance p1, Ljava/util/HashSet;

    .line 38
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFavList:Ljava/util/HashSet;

    .line 43
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/DisplayUtil;->toggleLayoutFullscreen(Landroid/app/Activity;Z)V

    .line 46
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/DisplayUtil;->toggleSupportChangeSystemBarBg(Landroid/app/Activity;Z)V

    .line 49
    invoke-static {}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getInstance()Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getPreviewImageList()Ljava/util/List;

    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_42

    .line 63
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 66
    return-void

    .line 67
    :cond_42
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getCurrentPos()I

    .line 70
    move-result v2

    .line 71
    iput v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    .line 75
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    iput-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 80
    iget v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    .line 82
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 85
    move-result v2

    .line 86
    sub-int/2addr v2, v0

    .line 87
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 90
    move-result v0

    .line 91
    iput v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    .line 93
    const/4 v1, -0x1

    .line 94
    if-ne v0, v1, :cond_62

    .line 96
    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    .line 99
    :cond_62
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 101
    iget v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 109
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 111
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->clearFileList()V

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/android/fileexplorer/util/WallpaperUtils;->supported(Landroid/content/Context;)Z

    .line 121
    move-result p1

    .line 122
    iput-boolean p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->isSupportWallpaper:Z

    .line 124
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->initUI()V

    .line 127
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->initList()V

    .line 130
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->initActionBar()V

    .line 133
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0e000e

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mMenu:Landroid/view/Menu;

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public onDelete()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v1, v1, v1, v0}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 9
    iget v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    .line 11
    if-ltz v0, :cond_6c

    .line 13
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 18
    move-result v2

    .line 19
    if-lt v0, v2, :cond_15

    .line 21
    goto :goto_6c

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 24
    iget v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    .line 31
    invoke-virtual {v0}, Li1/a;->notifyDataSetChanged()V

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2d

    .line 42
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 45
    return-void

    .line 46
    :cond_2d
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    .line 48
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 50
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->setData(Ljava/util/List;)V

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 55
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    .line 57
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setAdapter(Li1/a;)V

    .line 60
    iget v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    .line 62
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 67
    move-result v2

    .line 68
    sub-int/2addr v2, v1

    .line 69
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    .line 75
    iget-object v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 77
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 83
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 85
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 87
    iget v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    .line 89
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    .line 92
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 94
    invoke-virtual {v0, v1}, Lmiuix/viewpager/widget/ViewPager;->setDraggable(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 99
    const/16 v1, 0x8

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mMenu:Landroid/view/Menu;

    .line 106
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->updateMenu(Landroid/view/Menu;)V

    .line 109
    :cond_6c
    :goto_6c
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_1b

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1b

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;->setData(Ljava/util/List;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mAdapter:Lcom/android/fileexplorer/activity/ImagePreviewActivity$ImagPreviewAdapter;

    .line 25
    invoke-virtual {v0}, Li1/a;->notifyDataSetChanged()V

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mForegroundDownloadTask:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    .line 30
    if-eqz v0, :cond_25

    .line 32
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mForegroundDownloadTask:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFbAnimator:Landroid/animation/Animator;

    .line 40
    if-eqz v0, :cond_31

    .line 42
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mFbAnimator:Landroid/animation/Animator;

    .line 47
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 50
    :cond_31
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 52
    if-eqz v0, :cond_38

    .line 54
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 57
    :cond_38
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    .line 60
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
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x1

    .line 11
    :goto_a
    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v2, -0x1

    .line 13
    const-string v4, "groupId"

    .line 15
    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 18
    move-result-wide v2

    .line 19
    new-instance v0, Landroid/content/Intent;

    .line 21
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 24
    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 27
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x0

    .line 32
    sparse-switch v0, :sswitch_data_7e

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    :sswitch_27
    new-instance p1, Ljava/io/File;

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 44
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 46
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/WallpaperUtils;->setWallPapers(Landroid/content/Context;Ljava/io/File;)V

    .line 52
    return v1

    .line 53
    :sswitch_34
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 55
    invoke-direct {p0, p1, v2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->onOperationRemoveFavorite(Lcom/android/fileexplorer/model/FileInfo;Z)V

    .line 58
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 61
    return v1

    .line 62
    :sswitch_3d
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->onOperationSend()V

    .line 65
    return v1

    .line 66
    :sswitch_41
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 68
    const-string v0, ""

    .line 70
    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationOpenByOtherApp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 73
    return v1

    .line 74
    :sswitch_49
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->showInfo()V

    .line 77
    return v1

    .line 78
    :sswitch_4d
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->openImageByGallery()V

    .line 81
    return v1

    .line 82
    :sswitch_51
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 84
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->onOperationAddFavorite(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 92
    return v1

    .line 93
    :sswitch_5c
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->openImageByEditor()V

    .line 96
    return v1

    .line 97
    :sswitch_60
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_6b

    .line 105
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->downloadImage()V

    .line 108
    :cond_6b
    return v1

    .line 109
    :sswitch_6c
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->onOperationDelete(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 114
    return v1

    .line 115
    :sswitch_72
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->showInfo()V

    .line 118
    return v1

    .line 119
    :sswitch_76
    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Landroid/app/Activity;)V

    .line 126
    return v2

    .line 127
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

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mMenu:Landroid/view/Menu;

    .line 6
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->updateMenu(Landroid/view/Menu;)V

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1
.end method

.method public onResume()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->updateTitle()V

    .line 7
    invoke-static {p0}, Lcom/android/cloud/util/ColorGamutUtil;->changeWCG(Landroid/app/Activity;)V

    .line 10
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->getInstance()Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mImageList:Ljava/util/List;

    .line 7
    iget v2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mIndex:I

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->setPreviewImageList(Ljava/util/List;I)V

    .line 12
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 15
    return-void
.end method

.method public onViewTap(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4
    return-void
.end method

.method public toggleChangeActionBarView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->isShowing()Z

    .line 18
    move-result v0

    .line 19
    const/high16 v1, -0x1000000

    .line 21
    if-eqz v0, :cond_30

    .line 23
    new-instance v0, Landroid/os/CancellationSignal;

    .line 25
    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {p0, v2, v0}, Lcom/android/fileexplorer/util/DisplayUtil;->toggleStatusBarVisibility(Landroid/app/Activity;ZLandroid/os/CancellationSignal;)V

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 36
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->hide()V

    .line 39
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->hideBottomMenu()V

    .line 42
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->toggleBgView(Z)V

    .line 45
    invoke-static {p0, v1}, Lcom/android/fileexplorer/util/DisplayUtil;->toggleChangeNaviBg(Landroid/app/Activity;I)V

    .line 48
    goto :goto_4c

    .line 49
    :cond_30
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-static {p0, v2, v0}, Lcom/android/fileexplorer/util/DisplayUtil;->toggleStatusBarVisibility(Landroid/app/Activity;ZLandroid/os/CancellationSignal;)V

    .line 55
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3d

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    const/4 v1, -0x1

    .line 63
    :goto_3e
    invoke-static {p0, v1}, Lcom/android/fileexplorer/util/DisplayUtil;->toggleChangeNaviBg(Landroid/app/Activity;I)V

    .line 66
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 68
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->show()V

    .line 71
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->showBottomMenu()V

    .line 74
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->toggleBgView(Z)V

    .line 77
    :goto_4c
    return-void
.end method
