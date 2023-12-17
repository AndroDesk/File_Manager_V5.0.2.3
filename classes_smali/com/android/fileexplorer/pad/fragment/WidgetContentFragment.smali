.class public Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;
.super Lcom/android/fileexplorer/AppLayoutBaseFragment;
.source "WidgetContentFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PadContentFragment"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;-><init>()V

    return-void
.end method

.method private hideBeforeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/b0;Landroidx/fragment/app/Fragment;)V
    .registers 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_c

    if-eq v0, p3, :cond_c

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_c

    const v1, 0x7f010059

    const v2, 0x7f01005c

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v3, v2}, Landroidx/fragment/app/b0;->l(IIII)V

    invoke-virtual {p2, v0}, Landroidx/fragment/app/b0;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_c

    :cond_30
    return-void
.end method

.method private initActionBar()V
    .registers 6

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "isEdit"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    if-eqz v1, :cond_23

    const v1, 0x7f110068

    goto :goto_26

    :cond_23
    const v1, 0x7f110485

    :goto_26
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f042c73

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f032d3f

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    move-result v4

    if-eqz v4, :cond_57

    const v4, 0x7f0802e3

    goto :goto_5a

    :cond_57
    const v4, 0x7f0802e4

    :goto_5a
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v3, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment$1;

    invoke-direct {v3, p0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    return-void
.end method

.method private initFragment()V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isEdit"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "widget_choose"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3a

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    iput-object v0, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    goto :goto_47

    :cond_2d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;

    iput-object v0, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    goto :goto_47

    :cond_3a
    if-eqz v0, :cond_41

    invoke-static {}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->newInstance()Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    move-result-object v0

    goto :goto_45

    :cond_41
    invoke-static {}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->newInstance()Lcom/android/fileexplorer/fragment/WidgetChooseFragment;

    move-result-object v0

    :goto_45
    iput-object v0, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    :goto_47
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;-><init>()V

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d007a

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    const-string v0, "PadContentFragment"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;->initActionBar()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;->initFragment()V

    iget-object v0, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p1

    const v0, 0x7f0a02fd

    iget-object v1, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    const-string v2, "widget_choose"

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/a;->p()I

    :cond_2d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPadContentChangeEvent(Lcom/android/fileexplorer/event/PadContentChangeEvent;)V
    .registers 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "PadContentFragment"

    const-string v1, "onPadContentChangeEvent: content"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Lcom/android/fileexplorer/event/PadContentChangeEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/fileexplorer/event/PadContentChangeEvent;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    new-instance v3, Landroidx/fragment/app/a;

    invoke-direct {v3, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    if-nez v2, :cond_49

    :try_start_24
    iget-object v4, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v5, :cond_35

    check-cast v4, Lcom/android/fileexplorer/fragment/BaseFragment;

    goto :goto_4c

    :cond_35
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "class must be BaseFragment"

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_49
    move-object v4, v2

    check-cast v4, Lcom/android/fileexplorer/fragment/BaseFragment;

    :goto_4c
    if-nez v4, :cond_4f

    return-void

    :cond_4f
    iget-object v0, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_58

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_58
    iget-object v5, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mPageTitle:Ljava/lang/String;

    const-string v6, "bundle_key_page_title"

    invoke-virtual {v0, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    const-string v6, "bundle_key_istobackstack"

    invoke-virtual {v0, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v5, 0x1

    const-string v6, "bundle_key_no_need_actionbar"

    invoke-virtual {v0, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v4, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-boolean v0, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    if-nez v0, :cond_7d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_87

    :cond_7d
    const v0, 0x7f01005a

    const v6, 0x7f01005c

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v7, v6}, Landroidx/fragment/app/b0;->l(IIII)V

    :cond_87
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    if-eqz v0, :cond_90

    iget-object v0, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    :cond_90
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_a0

    invoke-virtual {v3, v4}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_ae

    :cond_a0
    invoke-virtual {v4, v5}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    goto :goto_ae

    :cond_a4
    const v0, 0x7f0a02fd

    invoke-virtual {p1}, Lcom/android/fileexplorer/event/PadContentChangeEvent;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, v4, p1, v5}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :goto_ae
    invoke-direct {p0, v1, v3, v4}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;->hideBeforeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/b0;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v3}, Landroidx/fragment/app/a;->p()I

    return-void
.end method
