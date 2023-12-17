.class public Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;
.super Lcom/android/fileexplorer/AppLayoutBaseFragment;
.source "WidgetContentFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PadContentFragment"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;-><init>()V

    .line 4
    return-void
.end method

.method private hideBeforeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/b0;Landroidx/fragment/app/Fragment;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_30

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 25
    if-eqz v0, :cond_c

    .line 27
    if-eq v0, p3, :cond_c

    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_c

    .line 35
    const v1, 0x7f010059

    .line 38
    const v2, 0x7f01005c

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p2, v1, v3, v3, v2}, Landroidx/fragment/app/b0;->l(IIII)V

    .line 45
    invoke-virtual {p2, v0}, Landroidx/fragment/app/b0;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 48
    goto :goto_c

    .line 49
    :cond_30
    return-void
.end method

.method private initActionBar()V
    .registers 6

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1c

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 18
    move-result-object v1

    .line 19
    const-string v3, "isEdit"

    .line 21
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1c

    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v1, v2

    .line 30
    :goto_1d
    if-eqz v1, :cond_23

    .line 32
    const v1, 0x7f110068

    .line 35
    goto :goto_26

    .line 36
    :cond_23
    const v1, 0x7f110485

    .line 39
    :goto_26
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 42
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 52
    move-result-object v1

    .line 53
    const v3, 0x7f0d01e5

    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    move-result-object v1

    .line 61
    const v3, 0x7f0a00a9

    .line 64
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Landroid/widget/ImageView;

    .line 70
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_4f

    .line 76
    const v4, 0x7f0802e3

    .line 79
    goto :goto_52

    .line 80
    :cond_4f
    const v4, 0x7f0802e4

    .line 83
    :goto_52
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    new-instance v3, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment$1;

    .line 88
    invoke-direct {v3, p0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;)V

    .line 91
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    .line 97
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 100
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 103
    return-void
.end method

.method private initFragment()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "isEdit"

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 22
    move-result-object v1

    .line 23
    const-string v2, "widget_choose"

    .line 25
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_3a

    .line 31
    if-eqz v0, :cond_2d

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    .line 43
    iput-object v0, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 45
    goto :goto_47

    .line 46
    :cond_2d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;

    .line 56
    iput-object v0, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 58
    goto :goto_47

    .line 59
    :cond_3a
    if-eqz v0, :cond_41

    .line 61
    invoke-static {}, Lcom/android/fileexplorer/fragment/WidgetEditFragment;->newInstance()Lcom/android/fileexplorer/fragment/WidgetEditFragment;

    .line 64
    move-result-object v0

    .line 65
    goto :goto_45

    .line 66
    :cond_41
    invoke-static {}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->newInstance()Lcom/android/fileexplorer/fragment/WidgetChooseFragment;

    .line 69
    move-result-object v0

    .line 70
    :goto_45
    iput-object v0, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 72
    :goto_47
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
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

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;->initActionBar()V

    .line 4
    new-instance p1, Landroid/os/Bundle;

    .line 6
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 9
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;->initFragment()V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 14
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_2d

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 32
    move-result-object p1

    .line 33
    const v0, 0x7f0a02fd

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 38
    const-string v2, "widget_choose"

    .line 40
    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroidx/fragment/app/a;->p()I

    .line 46
    :cond_2d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 8
    if-eq v0, v1, :cond_e

    .line 10
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 22
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public onPadContentChangeEvent(Lcom/android/fileexplorer/event/PadContentChangeEvent;)V
    .registers 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "PadContentFragment"

    .line 3
    const-string v1, "onPadContentChangeEvent: content"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    if-nez p1, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p1}, Lcom/android/fileexplorer/event/PadContentChangeEvent;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lcom/android/fileexplorer/event/PadContentChangeEvent;->getTag()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Landroidx/fragment/app/a;

    .line 32
    invoke-direct {v3, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 35
    if-nez v2, :cond_49

    .line 37
    :try_start_24
    iget-object v4, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    .line 39
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 47
    instance-of v5, v4, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 49
    if-eqz v5, :cond_35

    .line 51
    check-cast v4, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 53
    goto :goto_4c

    .line 54
    :cond_35
    new-instance p1, Ljava/lang/Exception;

    .line 56
    const-string v1, "class must be BaseFragment"

    .line 58
    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3d} :catch_3d

    .line 62
    :catch_3d
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 74
    :cond_49
    move-object v4, v2

    .line 75
    check-cast v4, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 77
    :goto_4c
    if-nez v4, :cond_4f

    .line 79
    return-void

    .line 80
    :cond_4f
    iget-object v0, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mBundle:Landroid/os/Bundle;

    .line 82
    if-nez v0, :cond_58

    .line 84
    new-instance v0, Landroid/os/Bundle;

    .line 86
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    :cond_58
    iget-object v5, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mPageTitle:Ljava/lang/String;

    .line 91
    const-string v6, "bundle_key_page_title"

    .line 93
    invoke-virtual {v0, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-boolean v5, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    .line 98
    const-string v6, "bundle_key_istobackstack"

    .line 100
    invoke-virtual {v0, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    const/4 v5, 0x1

    .line 104
    const-string v6, "bundle_key_no_need_actionbar"

    .line 106
    invoke-virtual {v0, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    invoke-virtual {v4, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    .line 114
    if-nez v0, :cond_7d

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_87

    .line 126
    :cond_7d
    const v0, 0x7f01005a

    .line 129
    const v6, 0x7f01005c

    .line 132
    const/4 v7, 0x0

    .line 133
    invoke-virtual {v3, v0, v7, v7, v6}, Landroidx/fragment/app/b0;->l(IIII)V

    .line 136
    :cond_87
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    .line 138
    if-eqz v0, :cond_90

    .line 140
    iget-object v0, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    .line 142
    invoke-virtual {v3, v0}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 145
    :cond_90
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_a4

    .line 151
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_a0

    .line 157
    invoke-virtual {v3, v4}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 160
    goto :goto_ae

    .line 161
    :cond_a0
    invoke-virtual {v4, v5}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    .line 164
    goto :goto_ae

    .line 165
    :cond_a4
    const v0, 0x7f0a02fd

    .line 168
    invoke-virtual {p1}, Lcom/android/fileexplorer/event/PadContentChangeEvent;->getTag()Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {v3, v0, v4, p1, v5}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 175
    :goto_ae
    invoke-direct {p0, v1, v3, v4}, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;->hideBeforeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/b0;Landroidx/fragment/app/Fragment;)V

    .line 178
    invoke-virtual {v3}, Landroidx/fragment/app/a;->p()I

    .line 181
    return-void
.end method
