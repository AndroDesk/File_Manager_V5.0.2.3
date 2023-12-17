.class public Lcom/android/fileexplorer/fragment/SearchContentFragment;
.super Lcom/android/fileexplorer/FoldScreenFragment;
.source "SearchContentFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/SearchResultFragment$OnFragmentInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;,
        Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;
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
.field public extra:Landroid/os/Bundle;

.field private mDetailCount:I

.field private mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

.field private mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

.field private mLastState:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

.field private mManager:Landroidx/fragment/app/FragmentManager;

.field private mPostOperation:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;

.field private mSearchText:Ljava/lang/String;

.field private mState:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

.field private mType:Lcom/android/fileexplorer/adapter/search/SearchType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/FoldScreenFragment;-><init>()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment$1;-><init>(Lcom/android/fileexplorer/fragment/SearchContentFragment;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mPostOperation:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;

    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/SearchContentFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/SearchContentFragment;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/SearchContentFragment;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->appNameMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/SearchContentFragment;)Lcom/android/fileexplorer/fragment/BaseFragment;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

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

.method private createFragment(Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/BaseFragment;
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$3;->$SwitchMap$com$android$fileexplorer$fragment$SearchContentFragment$SEARCH_SHOW_STATE:[I

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
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 37
    const-string v0, "total"

    .line 39
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 42
    move-result p2

    .line 43
    iput p2, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mDetailCount:I

    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result p1

    .line 49
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 51
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 54
    move-result p2

    .line 55
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mSearchText:Ljava/lang/String;

    .line 57
    iget v1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mDetailCount:I

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a02ff

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;

    .line 12
    new-instance v1, Lcom/android/fileexplorer/fragment/SearchContentFragment$2;

    .line 14
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment$2;-><init>(Lcom/android/fileexplorer/fragment/SearchContentFragment;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerFrameLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    .line 20
    return-void
.end method

.method private isFromSelf()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "from"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

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

.method public static navigator2SearchFragment(Landroid/app/Activity;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V
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

.method public static navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 6
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bundle_key_istobackstack"

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "NAVIGATOR_FRAGMENT_WONT_SWITCH_ANIMATIONS"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object p0

    new-instance v1, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    const/16 v2, 0x3f8

    const-class v3, Lcom/android/fileexplorer/fragment/SearchContentFragment;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    :cond_26
    return-void
.end method

.method private setupWindowAnimations()V
    .registers 1

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

.method private updateUI(Landroid/os/Bundle;Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mManager:Landroidx/fragment/app/FragmentManager;

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
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 21
    if-nez v1, :cond_1c

    .line 23
    invoke-direct {p0, p2, p1}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->createFragment(Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 29
    :cond_1c
    const p1, 0x7f0a0101

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 34
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 41
    sget-object p1, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->SEARCH_DETAIL:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_47

    .line 49
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mLastState:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 51
    sget-object v1, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->SEARCH_INVALID:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

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
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mLastState:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 77
    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d0028

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_e

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->initEmptyTrigger()V

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->extra:Landroid/os/Bundle;

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mState:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->updateUI(Landroid/os/Bundle;Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;)V

    .line 25
    return-void
.end method

.method public interceptBackPress()Z
    .registers 4

    .line 1
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v1, :cond_11

    .line 14
    invoke-static {p0, v2}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 17
    goto :goto_1e

    .line 18
    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1e

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 31
    :cond_1e
    :goto_1e
    return v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 11
    :cond_a
    return-void
.end method

.method public onBack()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mState:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 15
    sget-object v1, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->SEARCH_DETAIL:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 17
    if-ne v0, v1, :cond_24

    .line 19
    sget-object v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->SEARCH_RESULT:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mState:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 23
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 37
    :cond_24
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onBack()Z

    .line 40
    move-result v0

    .line 41
    return v0
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 9
    move-result v1

    .line 10
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 12
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 17
    move-result v3

    .line 18
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 20
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 23
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_11

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    .line 17
    return-void

    .line 18
    :cond_11
    const v0, 0x7f120121

    .line 21
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 24
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->setupWindowAnimations()V

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;->FILE_APP_TAG:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 37
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mPostOperation:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->register(Landroid/app/Activity;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;)V

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 48
    sget-object v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->SEARCH_RESULT:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 50
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mState:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 52
    sget-object v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->SEARCH_INVALID:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 54
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mLastState:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 56
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->extra:Landroid/os/Bundle;

    .line 59
    const/4 v0, 0x0

    .line 60
    const-string v1, "search_text"

    .line 62
    const-string v2, "search_type"

    .line 64
    if-eqz p1, :cond_95

    .line 66
    invoke-static {}, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->values()[Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 69
    move-result-object v3

    .line 70
    const-string v4, "saved_state"

    .line 72
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 75
    move-result v4

    .line 76
    aget-object v3, v3, v4

    .line 78
    iput-object v3, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mState:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 80
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mSearchText:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 93
    move-result v3

    .line 94
    aget-object v1, v1, v3

    .line 96
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 98
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 101
    move-result-object v1

    .line 102
    sget-object v3, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 104
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 107
    move-result v3

    .line 108
    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 111
    move-result v3

    .line 112
    aget-object v1, v1, v3

    .line 114
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 116
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 119
    move-result p1

    .line 120
    iput p1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mDetailCount:I

    .line 122
    new-instance p1, Landroid/os/Bundle;

    .line 124
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->extra:Landroid/os/Bundle;

    .line 129
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 131
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 134
    move-result v0

    .line 135
    const-string v1, "type"

    .line 137
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 140
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->extra:Landroid/os/Bundle;

    .line 142
    iget v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mDetailCount:I

    .line 144
    const-string v1, "total"

    .line 146
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 149
    goto :goto_c2

    .line 150
    :cond_95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 153
    move-result-object p1

    .line 154
    if-eqz p1, :cond_b4

    .line 156
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 159
    move-result-object v3

    .line 160
    sget-object v4, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 162
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 165
    move-result v4

    .line 166
    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 169
    move-result v2

    .line 170
    aget-object v2, v3, v2

    .line 172
    iput-object v2, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 174
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object p1

    .line 178
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mSearchText:Ljava/lang/String;

    .line 180
    goto :goto_bc

    .line 181
    :cond_b4
    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 183
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 185
    const-string p1, ""

    .line 187
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mSearchText:Ljava/lang/String;

    .line 189
    :goto_bc
    sget-object p1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 191
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 193
    iput v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mDetailCount:I

    .line 195
    :goto_c2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->unregister(Landroid/app/Activity;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mFragment:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 25
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->getDocFileObserver()Lcom/android/cloud/observer/DocFileObserver;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_25

    .line 31
    invoke-static {}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->getDocFileObserver()Lcom/android/cloud/observer/DocFileObserver;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/android/cloud/observer/DocFileObserver;->stopWatching()V

    .line 38
    :cond_25
    return-void
.end method

.method public onFragmentInteraction(ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->SEARCH_RESULT:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

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
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mSearchText:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

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
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_e
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->onBack()Z

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mSearchText:Ljava/lang/String;

    .line 6
    const-string v1, "search_text"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v0

    .line 17
    const-string v1, "search_type"

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mState:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result v0

    .line 28
    const-string v1, "saved_state"

    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v0

    .line 39
    const-string v1, "search_detail_type"

    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    iget v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mDetailCount:I

    .line 46
    const-string v1, "search_detail_count"

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public onSearchModeChange(Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->SEARCH_DETAIL:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 3
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mState:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;->getExtra()Landroid/os/Bundle;

    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mState:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v0

    .line 15
    const-string v1, "id"

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mSearchText:Ljava/lang/String;

    .line 22
    const-string v1, "search"

    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mDetailType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 32
    move-result v0

    .line 33
    const-string v1, "type"

    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    iget v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment;->mDetailCount:I

    .line 40
    const-string v1, "total"

    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v0, "NAVIGATOR_FRAGMENT_WONT_REFRESH_NAVIGATION"

    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    const-string v0, "NAVIGATOR_FRAGMENT_WONT_REMOVE_OTHER_FRAGMENTS"

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 62
    const-class v2, Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 64
    const/16 v3, 0x3f8

    .line 66
    invoke-direct {v1, v3, v2, p1}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {v0, v1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 72
    return-void
.end method
