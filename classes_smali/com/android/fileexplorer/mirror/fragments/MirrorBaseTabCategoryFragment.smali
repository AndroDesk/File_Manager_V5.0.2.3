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

    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;

    const-string v0, "MirrorBaseTabCategoryFragment"

    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "file_category"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_13
    invoke-static {}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->values()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    if-ltz v1, :cond_20

    array-length v2, v0

    if-ge v1, v2, :cond_20

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    :cond_20
    return-void
.end method

.method private refreshNeedCheckTabs(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1a

    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    iget v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mTabCount:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->refreshAllStatue(IZI)V

    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032903

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/ScrollControlViewPager;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/ScrollControlViewPager;->setScrollEnabled(Z)V

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$MyPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$MyPagerAdapter;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$MyPagerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mTabCount:I

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Li1/a;)V

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$1;-><init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;->setPrimaryChangeListener(Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter$OnPrimaryItemChangeListener;)V

    return-void
.end method

.method public isEditMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_a
    return-void
.end method

.method public onBack()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$OnMainActionCallback;->onBack()Z

    move-result v0

    return v0

    :cond_9
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onBack()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    :cond_13
    const p1, 0x7f12032d

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_2a
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->initCategory()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->init()V

    :cond_34
    return-void
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    :try_start_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_22

    :catch_b
    move-exception v0

    sget-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy unregister eventBus error: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    return-void
.end method

.method public onDocFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3c

    :cond_b
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshFile:Z

    if-nez v0, :cond_14

    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    if-nez p1, :cond_14

    return-void

    :cond_14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_31

    :cond_21
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    instance-of v0, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$OnNotifyCallback;

    if-eqz v0, :cond_2c

    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$OnNotifyCallback;

    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$OnNotifyCallback;->onRefreshData()V

    :cond_2c
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->refreshNeedCheckTabs(Z)V

    return-void

    :cond_31
    :goto_31
    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->TAG:Ljava/lang/String;

    const-string v0, "onDocFileChange: refresh when show"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->refreshNeedCheckTabs(Z)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    const-string v0, "tag_doc"

    const-string v1, "onImmersionMenuClick"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_10
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->getLayoutResId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->initView()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mInited:Z

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onKeyEvent(IZ)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onKeyEvent(IZ)Z

    move-result p1

    return p1

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onKeyEvent(IZ)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onKeyShortcut(I)Z

    move-result p1

    return p1

    :cond_9
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onKeyShortcut(I)Z

    move-result p1

    return p1
.end method

.method public onUserInvisible(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserInvisible(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-eqz p1, :cond_14

    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->TAG:Ljava/lang/String;

    const-string v0, "send onUserInvisible: to child"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_14
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mCurrentFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_b
    return-void
.end method

.method public setCurrentFragment(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->mViewPager:Lcom/android/fileexplorer/view/ScrollControlViewPager;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->getParamsByPos(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "click_doc_tab"

    const-string v1, "page_category"

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    return-void
.end method
