.class public Lcom/android/fileexplorer/activity/SearchDetailActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "SearchDetailActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/activity/SearchDetailActivity$GroupType;,
        Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;
    }
.end annotation


# static fields
.field private static final EXTRA_FROM:Ljava/lang/String; = "from"

.field private static final SAVED_STATE:Ljava/lang/String; = "saved_state"

.field private static final SEARCH_DETAIL_COUNT:Ljava/lang/String; = "search_detail_count"

.field private static final SEARCH_DETAIL_TYPE:Ljava/lang/String; = "search_detail_type"

.field private static final SEARCH_TEXT:Ljava/lang/String; = "search_text"

.field private static final SEARCH_TYPE:Ljava/lang/String; = "search_type"

.field private static final TAG:Ljava/lang/String; = "searchresult"


# instance fields
.field private mDetailCount:I

.field private mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

.field private mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

.field private mLastState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

.field private mManager:Landroidx/fragment/app/FragmentManager;

.field private mPostOperation:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;

.field private mSearchText:Ljava/lang/String;

.field private mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

.field private mType:Lcom/android/fileexplorer/adapter/search/SearchType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    new-instance v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/SearchDetailActivity$1;-><init>(Lcom/android/fileexplorer/activity/SearchDetailActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mPostOperation:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/SearchDetailActivity;)Lcom/android/fileexplorer/adapter/search/SearchType;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/activity/SearchDetailActivity;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/activity/SearchDetailActivity;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->appNameMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/activity/SearchDetailActivity;)Lcom/android/fileexplorer/fragment/BaseFragment;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    return-object p0
.end method

.method private appNameMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private createFragment(Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/BaseFragment;
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$3;->$SwitchMap$com$android$fileexplorer$activity$SearchDetailActivity$SEARCH_SHOW_STATE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->newInstance(I)Lcom/android/fileexplorer/fragment/SearchResultFragment;

    move-result-object p1

    return-object p1

    :cond_14
    if-eqz p2, :cond_3f

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    const-string v0, "total"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailCount:I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object p2, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mSearchText:Ljava/lang/String;

    iget v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailCount:I

    invoke-static {p1, p2, v0, v1}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->newInstance(IILjava/lang/String;I)Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    move-result-object p1

    return-object p1

    :cond_3f
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->newInstance(I)Lcom/android/fileexplorer/fragment/SearchResultFragment;

    move-result-object p1

    return-object p1
.end method

.method private initEmptyTrigger()V
    .registers 3

    const v0, 0x7f032f69

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;

    new-instance v1, Lcom/android/fileexplorer/activity/SearchDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/SearchDetailActivity$2;-><init>(Lcom/android/fileexplorer/activity/SearchDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    return-void
.end method

.method private isFromSelf()Z
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "self"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private setupWindowAnimations()V
    .registers 6

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    new-instance v1, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    const-wide/16 v3, 0x3c

    invoke-virtual {v0, v3, v4}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    new-instance v3, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    invoke-direct {v3}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    const v4, 0x3f7d70a4  # 0.99f

    invoke-virtual {v3, v4}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v3

    const v4, 0x3f2b851f  # 0.67f

    invoke-virtual {v3, v4}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/fileexplorer/activity/SearchDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_33

    :cond_1e
    const-string v1, "from"

    const-string v2, "self"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-static {p0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_33
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/fileexplorer/activity/SearchDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "search_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string p2, "search_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private tagMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private updateUI(Landroid/os/Bundle;Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/fragment/BaseFragment;

    iput-object v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-nez v1, :cond_1c

    invoke-direct {p0, p2, p1}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->createFragment(Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    :cond_1c
    const p1, 0x7f0a0101

    iget-object v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    sget-object p1, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_DETAIL:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mLastState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    sget-object v1, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_INVALID:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    const/high16 p1, 0x10b0000

    const v1, 0x10b0001

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroidx/fragment/app/b0;->l(IIII)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    :cond_47
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    iput-object p2, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mLastState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_f

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->isFromSelf()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_f
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_17
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_a
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    sget-object v1, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_DETAIL:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    if-ne v0, v1, :cond_23

    sget-object v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_RESULT:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    :cond_23
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f042dbe

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->setupWindowAnimations()V

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->initEmptyTrigger()V

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->FILE_APP_TAG:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    iget-object v2, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mPostOperation:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->register(Landroid/app/Activity;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mManager:Landroidx/fragment/app/FragmentManager;

    sget-object v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_RESULT:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    sget-object v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_INVALID:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mLastState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "search_text"

    const-string v3, "search_type"

    if-eqz p1, :cond_a0

    invoke-static {}, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->values()[Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    move-result-object v0

    const-string v4, "saved_state"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mSearchText:Ljava/lang/String;

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v0

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v0

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailCount:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailCount:I

    const-string v1, "total"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d3

    :cond_a0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_c5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_c5

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v4

    sget-object v5, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    aget-object v3, v4, v3

    iput-object v3, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mSearchText:Ljava/lang/String;

    goto :goto_cd

    :cond_c5
    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mSearchText:Ljava/lang/String;

    :goto_cd
    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    iput v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailCount:I

    :goto_d3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->updateUI(Landroid/os/Bundle;Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->unregister(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->getDocFileObserver()Lcom/android/cloud/observer/DocFileObserver;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->getDocFileObserver()Lcom/android/cloud/observer/DocFileObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cloud/observer/DocFileObserver;->stopWatching()V

    :cond_21
    return-void
.end method

.method public onFragmentInteraction(ILandroid/os/Bundle;)V
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_RESULT:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1e

    const-string p1, "search"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mSearchText:Ljava/lang/String;

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    :cond_1e
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_e
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mSearchText:Ljava/lang/String;

    const-string v1, "search_text"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "search_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "saved_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "search_detail_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailCount:I

    const-string v1, "search_detail_count"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSearchModeChange(Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    sget-object v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_DETAIL:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;->getExtra()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->updateUI(Landroid/os/Bundle;Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;)V

    return-void
.end method
