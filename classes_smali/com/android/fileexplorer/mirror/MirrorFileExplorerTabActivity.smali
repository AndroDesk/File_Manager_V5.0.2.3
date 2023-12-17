.class public Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;
.super Lcom/android/fileexplorer/FileExplorerTabBaseActivity;
.source "MirrorFileExplorerTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$OnMainActionCallback;,
        Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorFileExplorerTabActivity"


# instance fields
.field private final SPEED_INTERVAL:I

.field private mDivider:D

.field private mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

.field private mFragmentTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

.field private mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

.field private mRecyclerView:Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;

.field private mSpeedUpdateTimer:Ljava/util/Timer;

.field private mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

.field private topView:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;-><init>()V

    new-instance v0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentTags:Ljava/util/HashMap;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->SPEED_INTERVAL:I

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    return-wide v0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    return-wide v0
.end method

.method private addFragment(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->getFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    goto :goto_4

    :cond_14
    return-void
.end method

.method private add_stack(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->addStack(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    return-void
.end method

.method private getFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentTags:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    invoke-static {p0, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory;->newInstance(Landroidx/fragment/app/FragmentActivity;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    move-result-object v3

    if-nez v3, :cond_1f

    return-object v0

    :cond_1f
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentTags:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_5b

    invoke-virtual {v1, v0}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    const v0, 0x7f0a0276

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, p1, v4}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :cond_5b
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->A()V

    :cond_65
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentTags:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    return-object p1
.end method

.method public static synthetic h(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->handleDropEvent(Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;)V

    return-void
.end method

.method private handleDropEvent(Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;)V
    .registers 4

    iget-object v0, p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;->info:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->getFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;->event:Landroid/view/DragEvent;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    :cond_11
    return-void
.end method

.method private handleForward(Z)V
    .registers 2

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->isBackEmpty()Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->backForward()Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->switchFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    goto :goto_25

    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->isForwardEmpty()Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->goForward()Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->switchFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    :cond_25
    :goto_25
    return-void
.end method

.method private handleHoverMaskEvent(Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;)V
    .registers 9

    const v0, 0x7f032fe0

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;->canHover()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    move v2, v3

    goto :goto_25

    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f2d6e

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_25
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHoverMaskEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;->canHover()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorFileExplorerTabActivity"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;->canHover()Z

    move-result p1

    if-eqz p1, :cond_ca

    const p1, 0x7f110242

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f110236

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f060115

    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string v4, "mipro-normal"

    invoke-direct {v2, v4}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string v4, "sans-serif"

    invoke-direct {v2, v4}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v2, v4, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f060032

    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v4, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, v2, v4, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p0, v1, v3}, Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;->show(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    :cond_ca
    return-void
.end method

.method public static synthetic i(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->lambda$initAndObserveVMs$1(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    return-void
.end method

.method private initAndObserveVMs()V
    .registers 4

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    new-instance v1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    invoke-direct {v1, v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;-><init>(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;)V

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->init_tab_model:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->forward_model:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->get_stack_model:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->add_stack_model:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->hoverMaskState:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->start_drop_model:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->handleForward(Z)V

    return-void
.end method

.method public static synthetic k(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->add_stack(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->lambda$initAndObserveVMs$0(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initAndObserveVMs$0(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->resetCurrentFragment()V

    return-void
.end method

.method private synthetic lambda$initAndObserveVMs$1(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->switchFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->add_stack(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    return-void
.end method

.method private synthetic lambda$initAndObserveVMs$2(Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    new-instance v1, Lcom/android/fileexplorer/controller/FabMenuItem;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    :cond_12
    return-void
.end method

.method public static synthetic m(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->addFragment(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->handleHoverMaskEvent(Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->refreshLoadingState(Z)V

    return-void
.end method

.method public static synthetic p(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->setPathEnabled(I)V

    return-void
.end method

.method public static synthetic q(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->lambda$initAndObserveVMs$2(Ljava/lang/Integer;)V

    return-void
.end method

.method private refreshLoadingState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->topView:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshLoadingState(Z)V

    :cond_7
    return-void
.end method

.method private resetCurrentFragment()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->isBackEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->getBackInfo()Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->switchFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    return-void
.end method

.method private setPathEnabled(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->topView:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setPathBtnEnabled(I)V

    return-void
.end method

.method private switchFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentTags:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentTags:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory;->newInstance(Landroidx/fragment/app/FragmentActivity;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentTags:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_2f

    return-void

    :cond_2f
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-ne v1, v0, :cond_42

    instance-of v2, v1, Lcom/android/fileexplorer/mirror/fragments/IPathNavigation;

    if-eqz v2, :cond_42

    check-cast v1, Lcom/android/fileexplorer/mirror/fragments/IPathNavigation;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getPath_key()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/android/fileexplorer/mirror/fragments/IPathNavigation;->navigateTo(Ljava/lang/String;)V

    goto/16 :goto_ca

    :cond_42
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_51

    invoke-virtual {v1, v2}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    :cond_51
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_65

    instance-of v2, v0, Lcom/android/fileexplorer/mirror/fragments/IHomeNavigation;

    if-eqz v2, :cond_61

    move-object v2, v0

    check-cast v2, Lcom/android/fileexplorer/mirror/fragments/IHomeNavigation;

    invoke-interface {v2}, Lcom/android/fileexplorer/mirror/fragments/IHomeNavigation;->navigateToHome()V

    :cond_61
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_94

    :cond_65
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    const v2, 0x7f0a0276

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :goto_94
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->A()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->updatePcWindowTitle(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    const-string v0, "switchFragment: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorFileExplorerTabActivity"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->topView:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    if-eqz v0, :cond_ca

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->showMenuLayoutByPage(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    :cond_ca
    :goto_ca
    return-void
.end method

.method private updatePcWindowTitle(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 6

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->MIRROR_HOME_TAB_PAIRS:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const-string v1, "MirrorFileExplorerTabActivity"

    if-eqz v0, :cond_21

    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    :cond_21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_39
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    const-string v0, "not find title in fixed pages"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getArgs()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_52

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_52
    if-eqz v0, :cond_73

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object p1

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->updateTitle(Landroid/content/Context;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mirror update Title: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_73
    return-void
.end method


# virtual methods
.method public calculateProgressDivider(J)D
    .registers 8

    const/4 v0, 0x1

    :goto_1
    int-to-long v1, v0

    div-long v1, p1, v1

    const-wide/32 v3, 0xc350

    cmp-long v1, v1, v3

    if-lez v1, :cond_e

    mul-int/lit16 v0, v0, 0x400

    goto :goto_1

    :cond_e
    int-to-double p1, v0

    return-wide p1
.end method

.method public cancelProcessDialog()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->cancel()V

    :cond_7
    return-void
.end method

.method public checkIfNeedShowRedPoint()V
    .registers 1

    return-void
.end method

.method public dismissProgress()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->stopSpeedTimer()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->dismissCancelDialog()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    :cond_24
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "dispatchTouchEvent: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorFileExplorerTabActivity"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->topView:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->handleFocus(Landroid/view/MotionEvent;)V

    :cond_1d
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public increaseProgressBy(J)V
    .registers 9

    iget-wide v0, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    if-eqz p1, :cond_1d

    iget-wide v2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mDivider:D

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    cmpl-double p2, v2, v4

    if-ltz p2, :cond_1d

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-eqz p2, :cond_1d

    long-to-double v0, v0

    div-double/2addr v0, v2

    double-to-int p2, v0

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setProgress(I)V

    :cond_1d
    return-void
.end method

.method public initDragEvent(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_a

    const-string p1, "MirrorFileExplorerTabActivity"

    const-string p2, "targetView is null"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$2;

    invoke-direct {v0, p0, p2}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$2;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public initView()V
    .registers 5

    const v0, 0x7f042dbf

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f032ced

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    new-instance v1, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$1;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    const v0, 0x7f032fed

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->topView:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    const v0, 0x7f032fee

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mRecyclerView:Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->initAndObserveVMs()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f2c9c

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f032fe0

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "PAGE_MirrorFileExplorerTabActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public isProgressCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isProgressShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onActionModeChange(Z)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "MirrorFileExplorerTabActivity"

    const-string v1, "onCreate: mirror activity onCreate"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    const-string v1, "MirrorFileExplorerTabActivity"

    if-nez v0, :cond_d

    const-string p1, "onKeyDown return, mCurrentFragment is null"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "onKeyDown: return, keycode is not contained"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->handleKeyState(IZ)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "onKeyDown: return, keycode is continue pressed"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_32
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$OnMainActionCallback;

    if-eqz v1, :cond_45

    check-cast v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$OnMainActionCallback;

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->getKey(I)I

    move-result p1

    invoke-interface {v0, p1, v2}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$OnMainActionCallback;->onKeyEvent(IZ)Z

    move-result p1

    return p1

    :cond_45
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    const-string v2, "MirrorFileExplorerTabActivity"

    if-nez v0, :cond_d

    const-string p1, "onKeyDown return, mCurrentFragment is null"

    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "onKeyDown: return, keycode is not contained"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->handleKeyState(IZ)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "onKeyDown: return, keycode is continue pressed"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_31
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    instance-of v2, v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$OnMainActionCallback;

    if-eqz v2, :cond_44

    check-cast v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$OnMainActionCallback;

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->getKey(I)I

    move-result p1

    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$OnMainActionCallback;->onKeyEvent(IZ)Z

    move-result p1

    return p1

    :cond_44
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mRecyclerView:Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;->initData()V

    :cond_a
    return-void
.end method

.method public onStop()V
    .registers 3

    const-string v0, "MirrorFileExplorerTabActivity"

    const-string v1, "onStop: mirror stop"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_2b

    const-string v1, "onStop: commit hide"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->A()V

    :cond_2b
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onStop()V

    return-void
.end method

.method public setCompressProgress(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setProgress(Ljava/lang/String;I)V

    return-void
.end method

.method public setFilesProgress(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setFileProgress(II)V

    :cond_f
    return-void
.end method

.method public setProgressMax(J)V
    .registers 8

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->calculateProgressDivider(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mDivider:D

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_e

    iput-wide v2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mDivider:D

    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    long-to-double v1, v1

    iget-wide v3, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mDivider:D

    div-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setMax(I)V

    :cond_25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total file size to be operated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProgressSpeed(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setSpeed(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setSingleSizeDone(J)V
    .registers 9

    iget-wide v0, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    add-long/2addr v0, p1

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    if-eqz p1, :cond_1b

    iget-wide v2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mDivider:D

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    cmpl-double p2, v2, v4

    if-ltz p2, :cond_1b

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-eqz p2, :cond_1b

    long-to-double v0, v0

    div-double/2addr v0, v2

    double-to-int p2, v0

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setProgress(I)V

    :cond_1b
    return-void
.end method

.method public showLoadingDialog(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->showLoadingDialog(IZ)V

    return-void
.end method

.method public showLoadingDialog(IZ)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->dismissProgress()V

    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setIndeterminate(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setProgress(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_4a

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4a

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->show()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/Window;->setDimAmount(F)V

    :cond_4a
    return-void
.end method

.method public showProgressDialog(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->showProgressDialog(IZ)V

    return-void
.end method

.method public showProgressDialog(IZ)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->dismissProgress()V

    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setIndeterminate(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setProgressStyle(I)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mDivider:D

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_52

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_52

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->show()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_52

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/Window;->setDimAmount(F)V

    :cond_52
    return-void
.end method

.method public showProgressDialog(IZZ)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->dismissProgress()V

    new-instance p3, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-direct {p3, p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setIndeterminate(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setProgressStyle(I)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mDivider:D

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_40

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_40

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->show()V

    :cond_40
    return-void
.end method

.method public startSpeedTimer()V
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->stopSpeedTimer()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    new-instance v2, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, p0, v0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/activity/BaseActivity;Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$1;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_21
    return-void
.end method

.method public stopSpeedTimer()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    :cond_f
    return-void
.end method
