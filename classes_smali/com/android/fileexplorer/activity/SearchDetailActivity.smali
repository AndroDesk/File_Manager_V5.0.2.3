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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/activity/SearchDetailActivity$1;-><init>(Lcom/android/fileexplorer/activity/SearchDetailActivity;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mPostOperation:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;

    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/activity/SearchDetailActivity;)Lcom/android/fileexplorer/adapter/search/SearchType;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/activity/SearchDetailActivity;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/activity/SearchDetailActivity;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->appNameMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/activity/SearchDetailActivity;)Lcom/android/fileexplorer/fragment/BaseFragment;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    return-object p0
.end method

.method private appNameMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getAppName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1a

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getAppName()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    return p1
.end method

.method private createFragment(Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/BaseFragment;
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$3;->$SwitchMap$com$android$fileexplorer$activity$SearchDetailActivity$SEARCH_SHOW_STATE:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_14

    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->newInstance(I)Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_14
    if-eqz p2, :cond_3f

    .line 23
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "type"

    .line 29
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 32
    move-result v1

    .line 33
    aget-object v0, v0, v1

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 37
    const-string v0, "total"

    .line 39
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 42
    move-result p2

    .line 43
    iput p2, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailCount:I

    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result p1

    .line 49
    iget-object p2, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 51
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 54
    move-result p2

    .line 55
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mSearchText:Ljava/lang/String;

    .line 57
    iget v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailCount:I

    .line 59
    invoke-static {p1, p2, v0, v1}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->newInstance(IILjava/lang/String;I)Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_3f
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 67
    move-result p1

    .line 68
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->newInstance(I)Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method private initEmptyTrigger()V
    .registers 3

    .line 1
    const v0, 0x7f0a02ff

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;

    .line 10
    new-instance v1, Lcom/android/fileexplorer/activity/SearchDetailActivity$2;

    .line 12
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/activity/SearchDetailActivity$2;-><init>(Lcom/android/fileexplorer/activity/SearchDetailActivity;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    .line 18
    return-void
.end method

.method private isFromSelf()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "from"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "self"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method private keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1a

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    return p1
.end method

.method private setupWindowAnimations()V
    .registers 6

    .line 1
    new-instance v0, Landroid/transition/Fade;

    .line 3
    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    .line 6
    new-instance v1, Lmiuix/view/animation/SineEaseInOutInterpolator;

    .line 8
    invoke-direct {v1}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    .line 11
    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 14
    const-wide/16 v1, 0x12c

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 19
    const-wide/16 v3, 0x3c

    .line 21
    invoke-virtual {v0, v3, v4}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3, v0}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 31
    new-instance v0, Landroid/transition/Fade;

    .line 33
    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    .line 36
    new-instance v3, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 38
    invoke-direct {v3}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    .line 41
    const v4, 0x3f7d70a4  # 0.99f

    .line 44
    invoke-virtual {v3, v4}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 47
    move-result-object v3

    .line 48
    const v4, 0x3f2b851f  # 0.67f

    .line 51
    invoke-virtual {v3, v4}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0, v3}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    .line 68
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;)V
    .registers 4

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/fileexplorer/activity/SearchDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1e

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_33

    :cond_1e
    const-string v1, "from"

    const-string v2, "self"

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    .line 12
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

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/fileexplorer/activity/SearchDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "search_text"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string p2, "search_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private tagMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag1()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1a

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag1()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    return p1
.end method

.method private updateUI(Landroid/os/Bundle;Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 19
    iput-object v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 21
    if-nez v1, :cond_1c

    .line 23
    invoke-direct {p0, p2, p1}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->createFragment(Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 29
    :cond_1c
    const p1, 0x7f0a0101

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 34
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 41
    sget-object p1, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_DETAIL:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_47

    .line 49
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mLastState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 51
    sget-object v1, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_INVALID:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_47

    .line 59
    const/high16 p1, 0x10b0000

    .line 61
    const v1, 0x10b0001

    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, p1, v1, v2, v2}, Landroidx/fragment/app/b0;->l(IIII)V

    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-virtual {v0, p1}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 72
    :cond_47
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    .line 75
    iput-object p2, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mLastState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 77
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/16 v1, 0x1a

    .line 8
    if-eq v0, v1, :cond_f

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->isFromSelf()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_17

    .line 16
    :cond_f
    const/high16 v0, 0x10a0000

    .line 18
    const v1, 0x10a0001

    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 24
    :cond_17
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 11
    :cond_a
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 14
    sget-object v1, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_DETAIL:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 16
    if-ne v0, v1, :cond_23

    .line 18
    sget-object v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_RESULT:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 22
    iget-object v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 34
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 36
    :cond_23
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 39
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0xd

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    move-result-object v0

    .line 24
    const/16 v1, 0xc

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 29
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0d0028

    .line 35
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->setupWindowAnimations()V

    .line 41
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->initEmptyTrigger()V

    .line 44
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->FILE_APP_TAG:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 50
    iget-object v2, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mPostOperation:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;

    .line 52
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->register(Landroid/app/Activity;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;)V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 61
    sget-object v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_RESULT:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 63
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 65
    sget-object v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_INVALID:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 67
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mLastState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 69
    const/4 v0, 0x0

    .line 70
    const/4 v1, 0x0

    .line 71
    const-string v2, "search_text"

    .line 73
    const-string v3, "search_type"

    .line 75
    if-eqz p1, :cond_9c

    .line 77
    invoke-static {}, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->values()[Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 80
    move-result-object v0

    .line 81
    const-string v4, "saved_state"

    .line 83
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 86
    move-result v4

    .line 87
    aget-object v0, v0, v4

    .line 89
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 91
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mSearchText:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 104
    move-result v2

    .line 105
    aget-object v0, v0, v2

    .line 107
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 109
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 112
    move-result-object v0

    .line 113
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 115
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 118
    move-result v2

    .line 119
    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 122
    move-result v2

    .line 123
    aget-object v0, v0, v2

    .line 125
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 127
    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 130
    move-result p1

    .line 131
    iput p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailCount:I

    .line 133
    new-instance v0, Landroid/os/Bundle;

    .line 135
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 140
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 143
    move-result p1

    .line 144
    const-string v1, "type"

    .line 146
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 149
    iget p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailCount:I

    .line 151
    const-string v1, "total"

    .line 153
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 156
    goto :goto_cf

    .line 157
    :cond_9c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 160
    move-result-object p1

    .line 161
    if-eqz p1, :cond_c1

    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 166
    move-result-object v4

    .line 167
    if-eqz v4, :cond_c1

    .line 169
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 172
    move-result-object v4

    .line 173
    sget-object v5, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 175
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 178
    move-result v5

    .line 179
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 182
    move-result v3

    .line 183
    aget-object v3, v4, v3

    .line 185
    iput-object v3, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 187
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 191
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mSearchText:Ljava/lang/String;

    .line 193
    goto :goto_c9

    .line 194
    :cond_c1
    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 196
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 198
    const-string p1, ""

    .line 200
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mSearchText:Ljava/lang/String;

    .line 202
    :goto_c9
    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 204
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 206
    iput v1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailCount:I

    .line 208
    :goto_cf
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 215
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 217
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->updateUI(Landroid/os/Bundle;Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;)V

    .line 220
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->unregister(Landroid/app/Activity;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->getDocFileObserver()Lcom/android/cloud/observer/DocFileObserver;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_21

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->getDocFileObserver()Lcom/android/cloud/observer/DocFileObserver;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/android/cloud/observer/DocFileObserver;->stopWatching()V

    .line 34
    :cond_21
    return-void
.end method

.method public onFragmentInteraction(ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_RESULT:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_1e

    .line 9
    const-string p1, "search"

    .line 11
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mSearchText:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 20
    move-result-object p1

    .line 21
    const-string v0, "type"

    .line 23
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 26
    move-result p2

    .line 27
    aget-object p1, p1, p2

    .line 29
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 31
    :cond_1e
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
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_e
    invoke-virtual {p0}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->onBackPressed()V

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mSearchText:Ljava/lang/String;

    .line 6
    const-string v1, "search_text"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v0

    .line 17
    const-string v1, "search_type"

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result v0

    .line 28
    const-string v1, "saved_state"

    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v0

    .line 39
    const-string v1, "search_detail_type"

    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    iget v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mDetailCount:I

    .line 46
    const-string v1, "search_detail_count"

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public onSearchModeChange(Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_DETAIL:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 3
    iput-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;->getExtra()Landroid/os/Bundle;

    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity;->mState:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->updateUI(Landroid/os/Bundle;Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;)V

    .line 14
    return-void
.end method
