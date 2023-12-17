.class public Lcom/android/fileexplorer/pad/fragment/PadContentFragment;
.super Lcom/android/fileexplorer/AppLayoutBaseFragment;
.source "PadContentFragment.java"


# static fields
.field public static final ARG_CONTENT_FRAGMENT_CATEGORY:Ljava/lang/String; = "arg_content_fragment_category"

.field public static final TAG:Ljava/lang/String; = "PadContentFragment"

.field private static final UI_MODE_PC_YES:I


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x90d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;->UI_MODE_PC_YES:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/AppLayoutBaseFragment;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private hideBeforeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/b0;Landroidx/fragment/app/Fragment;)V
    .registers 9

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

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_c

    if-eq v0, p3, :cond_c

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_c

    const v1, 0x7f010059

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;->noHideAnimationRequired(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    const/4 v3, 0x0

    const v4, 0x7f01005c

    if-eqz v2, :cond_31

    move v2, v3

    goto :goto_32

    :cond_31
    move v2, v4

    :goto_32
    invoke-virtual {p2, v1, v2, v3, v4}, Landroidx/fragment/app/b0;->l(IIII)V

    invoke-virtual {p2, v0}, Landroidx/fragment/app/b0;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_c

    :cond_39
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadContentFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadContentFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;-><init>()V

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private noHideAnimationRequired(Landroidx/fragment/app/Fragment;)Z
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    instance-of v0, p1, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    if-nez v0, :cond_15

    instance-of p1, p1, Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method private showCDDTipsIfNeed()V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getIsApkUpdate()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->isAlreadyShowGuide()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getShowCDD()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    move-result v0

    if-eqz v0, :cond_43

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110081

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110080

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110469

    new-instance v2, Lcom/android/fileexplorer/pad/fragment/PadContentFragment$1;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/pad/fragment/PadContentFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadContentFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit16 p1, p1, 0x2000

    const/4 v0, 0x1

    if-eqz p1, :cond_11

    move p1, v0

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "open_path"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_25
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "phone_main"

    if-eqz p1, :cond_3c

    if-eqz v1, :cond_3c

    invoke-static {}, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;->newInstance()Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    const-string p1, "current_directory"

    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    :cond_3c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_53

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    iput-object p1, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    goto :goto_59

    :cond_53
    invoke-static {}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->newInstance()Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    :goto_59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f182de3

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "bundle_key_page_title"

    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6d
    iget-object p1, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_8d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p1

    const v1, 0x7f0a02fd

    iget-object v2, p0, Lcom/android/fileexplorer/AppLayoutBaseFragment;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroidx/fragment/app/a;->p()I

    :cond_8d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    if-nez p1, :cond_f

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;->showCDDTipsIfNeed()V

    :cond_f
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

.method public onPadContentChangeEvent(Lcom/android/fileexplorer/event/PadContentChangeEvent;)V
    .registers 9
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

    invoke-virtual {v4, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-boolean v0, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    if-nez v0, :cond_77

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_89

    :cond_77
    instance-of v0, v2, Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    if-eqz v0, :cond_7f

    const v0, 0x7f010059

    goto :goto_82

    :cond_7f
    const v0, 0x7f01005a

    :goto_82
    const v5, 0x7f01005c

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v6, v5}, Landroidx/fragment/app/b0;->l(IIII)V

    :cond_89
    iget-boolean v0, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->isToBackStack:Z

    if-eqz v0, :cond_92

    iget-object v0, p1, Lcom/android/fileexplorer/event/PadContentChangeEvent;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    :cond_92
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_a7

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_a3

    invoke-virtual {v3, v4}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_b1

    :cond_a3
    invoke-virtual {v4, v5}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    goto :goto_b1

    :cond_a7
    const v0, 0x7f0a02fd

    invoke-virtual {p1}, Lcom/android/fileexplorer/event/PadContentChangeEvent;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, v4, p1, v5}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :goto_b1
    invoke-direct {p0, v1, v3, v4}, Lcom/android/fileexplorer/pad/fragment/PadContentFragment;->hideBeforeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/b0;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v3}, Landroidx/fragment/app/a;->p()I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/a;->hide()V

    :cond_10
    return-void
.end method
