.class public Lcom/android/fileexplorer/pad/fragment/PadContentFragment;
.super Lcom/android/fileexplorer/AppLayoutBaseFragment;
.source "PadContentFragment.java"


# static fields
.field public static final ARG_CONTENT_FRAGMENT_CATEGORY:Ljava/lang/String; = "arg_content_fragment_category"

.field public static final TAG:Ljava/lang/String; = "PadContentFragment"

.field private static final UI_MODE_PC_YES:I = 0x2000


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private hideBeforeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/b0;Landroidx/fragment/app/Fragment;)V
    .registers 9

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
    if-eqz v0, :cond_39

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
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;->noHideAnimationRequired(Landroidx/fragment/app/Fragment;)Z

    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x0

    .line 43
    const v4, 0x7f01005c

    .line 46
    if-eqz v2, :cond_31

    .line 48
    move v2, v3

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v2, v4

    .line 51
    :goto_32
    invoke-virtual {p2, v1, v2, v3, v4}, Landroidx/fragment/app/b0;->l(IIII)V

    .line 54
    invoke-virtual {p2, v0}, Landroidx/fragment/app/b0;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 57
    goto :goto_c

    .line 58
    :cond_39
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadContentFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadContentFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private noHideAnimationRequired(Landroidx/fragment/app/Fragment;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_15

    .line 11
    instance-of v0, p1, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 13
    if-nez v0, :cond_15

    .line 15
    instance-of p1, p1, Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;

    .line 17
    if-eqz p1, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    :goto_15
    const/4 p1, 0x1

    .line 23
    :goto_16
    return p1
.end method

.method private showCDDTipsIfNeed()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getIsApkUpdate()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_43

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isAlreadyShowGuide()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_43

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getShowCDD()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_43

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_43

    .line 25
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    const v1, 0x7f110081

    .line 37
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 44
    const v1, 0x7f110080

    .line 47
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 50
    const v1, 0x7f110469

    .line 53
    new-instance v2, Lcom/android/fileexplorer/pad/fragment/PadContentFragment$1;

    .line 55
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/pad/fragment/PadContentFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadContentFragment;)V

    .line 58
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 68
    :cond_43
    return-void
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
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p1

    .line 9
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 11
    and-int/lit16 p1, p1, 0x2000

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eqz p1, :cond_11

    .line 16
    move p1, v0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    :goto_12
    const/4 v1, 0x0

    .line 20
    if-eqz p1, :cond_25

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_25

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 31
    move-result-object v1

    .line 32
    const-string v2, "open_path"

    .line 34
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    :cond_25
    new-instance v2, Landroid/os/Bundle;

    .line 40
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 43
    const-string v3, "phone_main"

    .line 45
    if-eqz p1, :cond_3c

    .line 47
    if-eqz v1, :cond_3c

    .line 49
    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 55
    const-string p1, "current_directory"

    .line 57
    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    goto :goto_69

    .line 61
    :cond_3c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_53

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 81
    iput-object p1, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 83
    goto :goto_59

    .line 84
    :cond_53
    invoke-static {}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->newInstance()Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 90
    :goto_59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 93
    move-result-object p1

    .line 94
    const v1, 0x7f110075

    .line 97
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    const-string v1, "bundle_key_page_title"

    .line 103
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_69
    iget-object p1, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 108
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 111
    iget-object p1, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 113
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_89

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 122
    move-result-object p1

    .line 123
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 126
    move-result-object p1

    .line 127
    const v1, 0x7f0a02fd

    .line 130
    iget-object v2, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 132
    invoke-virtual {p1, v1, v2, v3, v0}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 135
    invoke-virtual {p1}, Landroidx/fragment/app/a;->p()I

    .line 138
    :cond_89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 11
    if-nez p1, :cond_f

    .line 13
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;->showCDDTipsIfNeed()V

    .line 16
    :cond_f
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

.method public onPadContentChangeEvent(Lcom/android/fileexplorer/event/PadContentChangeEvent;)V
    .registers 9
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
    invoke-virtual {v4, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 106
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    .line 108
    if-nez v0, :cond_77

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_89

    .line 120
    :cond_77
    instance-of v0, v2, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 122
    if-eqz v0, :cond_7f

    .line 124
    const v0, 0x7f010059

    .line 127
    goto :goto_82

    .line 128
    :cond_7f
    const v0, 0x7f01005a

    .line 131
    :goto_82
    const v5, 0x7f01005c

    .line 134
    const/4 v6, 0x0

    .line 135
    invoke-virtual {v3, v0, v6, v6, v5}, Landroidx/fragment/app/b0;->l(IIII)V

    .line 138
    :cond_89
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    .line 140
    if-eqz v0, :cond_92

    .line 142
    iget-object v0, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    .line 144
    invoke-virtual {v3, v0}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 147
    :cond_92
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 150
    move-result v0

    .line 151
    const/4 v5, 0x1

    .line 152
    if-eqz v0, :cond_a7

    .line 154
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_a3

    .line 160
    invoke-virtual {v3, v4}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 163
    goto :goto_b1

    .line 164
    :cond_a3
    invoke-virtual {v4, v5}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    .line 167
    goto :goto_b1

    .line 168
    :cond_a7
    const v0, 0x7f0a02fd

    .line 171
    invoke-virtual {p1}, Lcom/android/fileexplorer/event/PadContentChangeEvent;->getTag()Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {v3, v0, v4, p1, v5}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 178
    :goto_b1
    invoke-direct {p0, v1, v3, v4}, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;->hideBeforeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/b0;Landroidx/fragment/app/Fragment;)V

    .line 181
    invoke-virtual {v3}, Landroidx/fragment/app/a;->p()I

    .line 184
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_10

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/app/a;->hide()V

    .line 17
    :cond_10
    return-void
.end method
