.class public abstract Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;
.source "MirrorBaseTabCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$OnNotifyCallback;,
        Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$MyPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TAG_DOC:Ljava/lang/String; = "tag_doc"


# instance fields
.field public mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

.field private mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

.field public mRootView:Landroid/view/View;

.field private mTabCount:I

.field public mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;

    .line 3
    const-string v0, "MirrorBaseTabCategoryFragment"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object p0
.end method

.method private getParamsByPos(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_16

    const/4 v0, 0x5

    if-eq p1, v0, :cond_13

    const/4 p1, 0x0

    return-object p1

    :cond_13
    const-string p1, "others"

    return-object p1

    :cond_16
    const-string p1, "ppt"

    return-object p1

    :cond_19
    const-string p1, "pdf"

    return-object p1

    :cond_1c
    const-string p1, "excel"

    return-object p1

    :cond_1f
    const-string p1, "doc"

    return-object p1

    :cond_22
    const-string p1, "all"

    return-object p1
.end method

.method private initCategory()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_13

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 13
    move-result-object v0

    .line 14
    const-string v2, "file_category"

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 19
    move-result v1

    .line 20
    :cond_13
    invoke-static {}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->values()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 23
    move-result-object v0

    .line 24
    if-ltz v1, :cond_20

    .line 26
    array-length v2, v0

    .line 27
    if-ge v1, v2, :cond_20

    .line 29
    aget-object v0, v0, v1

    .line 31
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 33
    :cond_20
    return-void
.end method

.method private refreshNeedCheckTabs(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 7
    if-eqz v0, :cond_1a

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_1a

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 18
    iget v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mTabCount:I

    .line 20
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->getCurrentIndex()I

    .line 23
    move-result v2

    .line 24
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->refreshAllStatue(IZI)V

    .line 27
    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method

.method public abstract getFragments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLayoutResId()I
.end method

.method public initView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a0495

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/ScrollControlViewPager;->setScrollEnabled(Z)V

    .line 18
    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$MyPagerAdapter;

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->getFragments()Ljava/util/List;

    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, p0, v1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$MyPagerAdapter;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 31
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 37
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$MyPagerAdapter;->getCount()I

    .line 40
    move-result v1

    .line 41
    iput v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mTabCount:I

    .line 43
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 45
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Li1/a;)V

    .line 48
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$1;

    .line 50
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;->setPrimaryChangeListener(Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter$OnPrimaryItemChangeListener;)V

    .line 56
    return-void
.end method

.method public isEditMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

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

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 11
    :cond_a
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onBack()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onBack()Z

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    instance-of p1, p1, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 10
    if-eqz p1, :cond_13

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 20
    :cond_13
    const p1, 0x7f12032d

    .line 23
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 26
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2a

    .line 36
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 43
    :cond_2a
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->initCategory()V

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 48
    if-eqz p1, :cond_34

    .line 50
    invoke-virtual {p1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->init()V

    .line 53
    :cond_34
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    .line 4
    :try_start_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 11
    goto :goto_22

    .line 12
    :catch_b
    move-exception v0

    .line 13
    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->TAG:Ljava/lang/String;

    .line 15
    const-string v2, "onDestroy unregister eventBus error: "

    .line 17
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_22
    return-void
.end method

.method public onDocFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 3
    if-eqz v0, :cond_3c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_3c

    .line 12
    :cond_b
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    .line 14
    if-nez v0, :cond_14

    .line 16
    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    .line 18
    if-nez p1, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_31

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_21

    .line 33
    goto :goto_31

    .line 34
    :cond_21
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 36
    instance-of v0, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$OnNotifyCallback;

    .line 38
    if-eqz v0, :cond_2c

    .line 40
    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$OnNotifyCallback;

    .line 42
    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$OnNotifyCallback;->onRefreshData()V

    .line 45
    :cond_2c
    const/4 p1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->refreshNeedCheckTabs(Z)V

    .line 49
    return-void

    .line 50
    :cond_31
    :goto_31
    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->TAG:Ljava/lang/String;

    .line 52
    const-string v0, "onDocFileChange: refresh when show"

    .line 54
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 p1, 0x1

    .line 58
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->refreshNeedCheckTabs(Z)V

    .line 61
    :cond_3c
    :goto_3c
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    const-string v0, "tag_doc"

    .line 3
    const-string v1, "onImmersionMenuClick"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 10
    if-eqz v0, :cond_10

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_10
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->getLayoutResId()I

    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mRootView:Landroid/view/View;

    .line 12
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->initView()V

    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mInited:Z

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mRootView:Landroid/view/View;

    .line 20
    return-object p1
.end method

.method public onKeyEvent(IZ)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onKeyEvent(IZ)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onKeyEvent(IZ)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public onKeyShortcut(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onKeyShortcut(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onKeyShortcut(I)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public onUserInvisible(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserInvisible(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 6
    if-eqz p1, :cond_14

    .line 8
    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->TAG:Ljava/lang/String;

    .line 10
    const-string v0, "send onUserInvisible: to child"

    .line 12
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 21
    :cond_14
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 6
    if-eqz p1, :cond_b

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public setCurrentFragment(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 9
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->getParamsByPos(I)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    const-string v0, "click_doc_tab"

    .line 15
    const-string v1, "page_category"

    .line 17
    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    :cond_13
    return-void
.end method
