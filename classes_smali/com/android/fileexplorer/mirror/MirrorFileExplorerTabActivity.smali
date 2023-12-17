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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;-><init>()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 6
    invoke-direct {v0}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentTags:Ljava/util/HashMap;

    .line 18
    const/16 v0, 0x3e8

    .line 20
    iput v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->SPEED_INTERVAL:I

    .line 22
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    .line 3
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

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_14

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 17
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->getFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 20
    goto :goto_4

    .line 21
    :cond_14
    return-void
.end method

.method private add_stack(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->addStack(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    .line 6
    return-void
.end method

.method private getFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, v1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentTags:Ljava/util/HashMap;

    .line 19
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_65

    .line 25
    invoke-static {p0, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory;->newInstance(Landroidx/fragment/app/FragmentActivity;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_1f

    .line 31
    return-object v0

    .line 32
    :cond_1f
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentTags:Ljava/util/HashMap;

    .line 34
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v1, v3}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 40
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_5b

    .line 46
    invoke-virtual {v1, v0}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 49
    const v0, 0x7f0a0276

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v5, "_"

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    const/4 v4, 0x1

    .line 89
    invoke-virtual {v1, v0, v3, p1, v4}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 92
    :cond_5b
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->A()V

    .line 102
    :cond_65
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentTags:Ljava/util/HashMap;

    .line 104
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 110
    return-object p1
.end method

.method public static synthetic h(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->handleDropEvent(Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;)V

    return-void
.end method

.method private handleDropEvent(Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;)V
    .registers 4

    .line 1
    iget-object v0, p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;->info:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 3
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->getFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;->event:Landroid/view/DragEvent;

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 18
    :cond_11
    return-void
.end method

.method private handleForward(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_14

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->isBackEmpty()Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_25

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    .line 13
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->backForward()Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->switchFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    .line 20
    goto :goto_25

    .line 21
    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    .line 23
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->isForwardEmpty()Z

    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_25

    .line 29
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    .line 31
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->goForward()Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->switchFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    .line 38
    :cond_25
    :goto_25
    return-void
.end method

.method private handleHoverMaskEvent(Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;)V
    .registers 9

    .line 1
    const v0, 0x7f0a0276

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;->canHover()Z

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_12

    .line 17
    move v2, v3

    .line 18
    goto :goto_1d

    .line 19
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v2

    .line 23
    const v4, 0x7f0600f8

    .line 26
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 29
    move-result v2

    .line 30
    :goto_1d
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v1, "handleHoverMaskEvent: "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;->canHover()Z

    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    const-string v1, "MirrorFileExplorerTabActivity"

    .line 59
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;->canHover()Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_c2

    .line 68
    const p1, 0x7f110242

    .line 71
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    const v0, 0x7f110236

    .line 78
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    const/4 v1, 0x1

    .line 83
    new-array v1, v1, [Ljava/lang/Object;

    .line 85
    aput-object p1, v1, v3

    .line 87
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Landroid/text/SpannableString;

    .line 93
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 98
    const v4, 0x7f060115

    .line 101
    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 104
    move-result v4

    .line 105
    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 111
    move-result v4

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 115
    move-result v5

    .line 116
    sub-int/2addr v4, v5

    .line 117
    const/16 v5, 0x21

    .line 119
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 122
    new-instance v2, Landroid/text/style/TypefaceSpan;

    .line 124
    const-string v4, "mipro-normal"

    .line 126
    invoke-direct {v2, v4}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 132
    move-result v4

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 136
    move-result v6

    .line 137
    sub-int/2addr v4, v6

    .line 138
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 141
    new-instance v2, Landroid/text/style/TypefaceSpan;

    .line 143
    const-string v4, "sans-serif"

    .line 145
    invoke-direct {v2, v4}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 151
    move-result v4

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 155
    move-result v6

    .line 156
    sub-int/2addr v4, v6

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 160
    move-result v6

    .line 161
    invoke-virtual {v1, v2, v4, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 164
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 166
    const v4, 0x7f060032

    .line 169
    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 172
    move-result v4

    .line 173
    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 179
    move-result v4

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 183
    move-result p1

    .line 184
    sub-int/2addr v4, p1

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 188
    move-result p1

    .line 189
    invoke-virtual {v1, v2, v4, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 192
    invoke-static {p0, v1, v3}, Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;->show(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 195
    :cond_c2
    return-void
.end method

.method public static synthetic i(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->lambda$initAndObserveVMs$1(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    return-void
.end method

.method private initAndObserveVMs()V
    .registers 4

    .line 1
    new-instance v0, Landroidx/lifecycle/c0;

    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 6
    const-class v1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 16
    new-instance v1, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    .line 18
    invoke-direct {v1, v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;-><init>(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;)V

    .line 21
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 25
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->init_tab_model:Landroidx/lifecycle/q;

    .line 27
    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    .line 33
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 38
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->forward_model:Landroidx/lifecycle/q;

    .line 40
    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    .line 46
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 51
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->get_stack_model:Landroidx/lifecycle/q;

    .line 53
    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    .line 55
    const/4 v2, 0x2

    .line 56
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    .line 59
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 62
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 64
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->go_back_forward_model:Landroidx/lifecycle/q;

    .line 66
    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    .line 68
    const/4 v2, 0x3

    .line 69
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    .line 72
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 75
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 77
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->add_stack_model:Landroidx/lifecycle/q;

    .line 79
    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    .line 81
    const/4 v2, 0x4

    .line 82
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    .line 85
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 88
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 90
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 92
    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    .line 94
    const/4 v2, 0x5

    .line 95
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    .line 98
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 101
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 103
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->menuId:Landroidx/lifecycle/q;

    .line 105
    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    .line 107
    const/4 v2, 0x6

    .line 108
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    .line 111
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 114
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 116
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->refreshState:Landroidx/lifecycle/q;

    .line 118
    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    .line 120
    const/4 v2, 0x7

    .line 121
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    .line 124
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 127
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 129
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->hoverMaskState:Landroidx/lifecycle/q;

    .line 131
    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    .line 133
    const/16 v2, 0x8

    .line 135
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    .line 138
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 141
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 143
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->start_drop_model:Landroidx/lifecycle/q;

    .line 145
    new-instance v1, Lcom/android/fileexplorer/mirror/a;

    .line 147
    const/16 v2, 0x9

    .line 149
    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/mirror/a;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;I)V

    .line 152
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->e(Landroidx/lifecycle/m;Landroidx/lifecycle/r;)V

    .line 155
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 157
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 159
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 161
    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 164
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

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->resetCurrentFragment()V

    .line 4
    return-void
.end method

.method private synthetic lambda$initAndObserveVMs$1(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->switchFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->add_stack(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    .line 7
    return-void
.end method

.method private synthetic lambda$initAndObserveVMs$2(Ljava/lang/Integer;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 7
    new-instance v1, Lcom/android/fileexplorer/controller/FabMenuItem;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    invoke-direct {v1, p1}, Lcom/android/fileexplorer/controller/FabMenuItem;-><init>(I)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 19
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->topView:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->refreshLoadingState(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method private resetCurrentFragment()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->isBackEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentStack:Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/viewhelper/MirrorFragmentStackHelper;->getBackInfo()Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->switchFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    .line 20
    return-void
.end method

.method private setPathEnabled(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->topView:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->setPathBtnEnabled(I)V

    .line 6
    return-void
.end method

.method private switchFragment(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 7

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentTags:Ljava/util/HashMap;

    .line 6
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_20

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentTags:Ljava/util/HashMap;

    .line 18
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {p0, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFragmentFactory;->newInstance(Landroidx/fragment/app/FragmentActivity;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mFragmentTags:Ljava/util/HashMap;

    .line 35
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 45
    if-nez v0, :cond_2f

    .line 47
    return-void

    .line 48
    :cond_2f
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 50
    if-ne v1, v0, :cond_42

    .line 52
    instance-of v2, v1, Lcom/android/fileexplorer/mirror/fragments/IPathNavigation;

    .line 54
    if-eqz v2, :cond_42

    .line 56
    check-cast v1, Lcom/android/fileexplorer/mirror/fragments/IPathNavigation;

    .line 58
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getPath_key()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-interface {v1, p1}, Lcom/android/fileexplorer/mirror/fragments/IPathNavigation;->navigateTo(Ljava/lang/String;)V

    .line 65
    goto/16 :goto_ca

    .line 67
    :cond_42
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1, v1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 74
    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 77
    if-eqz v2, :cond_51

    .line 79
    invoke-virtual {v1, v2}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 82
    :cond_51
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_65

    .line 88
    instance-of v2, v0, Lcom/android/fileexplorer/mirror/fragments/IHomeNavigation;

    .line 90
    if-eqz v2, :cond_61

    .line 92
    move-object v2, v0

    .line 93
    check-cast v2, Lcom/android/fileexplorer/mirror/fragments/IHomeNavigation;

    .line 95
    invoke-interface {v2}, Lcom/android/fileexplorer/mirror/fragments/IHomeNavigation;->navigateToHome()V

    .line 98
    :cond_61
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 101
    goto :goto_94

    .line 102
    :cond_65
    const/4 v2, 0x0

    .line 103
    invoke-virtual {v1, v2}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 106
    const v2, 0x7f0a0276

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v4, "_"

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v3

    .line 145
    const/4 v4, 0x1

    .line 146
    invoke-virtual {v1, v2, v0, v3, v4}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 149
    :goto_94
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->A()V

    .line 159
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 161
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->updatePcWindowTitle(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V

    .line 164
    const-string v0, "switchFragment: "

    .line 166
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 172
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 187
    const-string v1, "MirrorFileExplorerTabActivity"

    .line 189
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->topView:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    .line 194
    if-eqz v0, :cond_ca

    .line 196
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->showMenuLayoutByPage(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 203
    :cond_ca
    :goto_ca
    return-void
.end method

.method private updatePcWindowTitle(Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->MIRROR_HOME_TAB_PAIRS:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/util/Pair;

    .line 13
    const-string v1, "MirrorFileExplorerTabActivity"

    .line 15
    if-eqz v0, :cond_21

    .line 17
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v2

    .line 21
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 23
    check-cast v0, Ljava/lang/Integer;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_40

    .line 34
    :cond_21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v0

    .line 38
    sget-object v2, Lcom/android/fileexplorer/controller/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    .line 40
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/Integer;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v2

    .line 54
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object v0
    :try_end_39
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_39} :catch_3a

    .line 58
    goto :goto_40

    .line 59
    :catch_3a
    const-string v0, "not find title in fixed pages"

    .line 61
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    .line 65
    :goto_40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_52

    .line 71
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getArgs()Landroid/os/Bundle;

    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_52

    .line 77
    const-string v0, "title"

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    :cond_52
    if-eqz v0, :cond_73

    .line 85
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    .line 88
    move-result-object p1

    .line 89
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p1, v2, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->updateTitle(Landroid/content/Context;Ljava/lang/String;)I

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const-string v2, "mirror update Title: "

    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_73
    return-void
.end method


# virtual methods
.method public calculateProgressDivider(J)D
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_1
    int-to-long v1, v0

    .line 3
    div-long v1, p1, v1

    .line 5
    const-wide/32 v3, 0xc350

    .line 8
    cmp-long v1, v1, v3

    .line 10
    if-lez v1, :cond_e

    .line 12
    mul-int/lit16 v0, v0, 0x400

    .line 14
    goto :goto_1

    .line 15
    :cond_e
    int-to-double p1, v0

    .line 16
    return-wide p1
.end method

.method public cancelProcessDialog()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->cancel()V

    .line 8
    :cond_7
    return-void
.end method

.method public checkIfNeedShowRedPoint()V
    .registers 1

    return-void
.end method

.method public dismissProgress()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->stopSpeedTimer()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 10
    if-eqz v0, :cond_24

    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_24

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 20
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->dismissCancelDialog()V

    .line 23
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_21

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 31
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 34
    :cond_21
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 37
    :cond_24
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    const-string v0, "dispatchTouchEvent: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MirrorFileExplorerTabActivity"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->topView:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    .line 25
    if-eqz v0, :cond_1d

    .line 27
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->handleFocus(Landroid/view/MotionEvent;)V

    .line 30
    :cond_1d
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public increaseProgressBy(J)V
    .registers 9

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 8
    if-eqz p1, :cond_1d

    .line 10
    iget-wide v2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mDivider:D

    .line 12
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 14
    cmpl-double p2, v2, v4

    .line 16
    if-ltz p2, :cond_1d

    .line 18
    const-wide/16 v4, 0x0

    .line 20
    cmp-long p2, v0, v4

    .line 22
    if-eqz p2, :cond_1d

    .line 24
    long-to-double v0, v0

    .line 25
    div-double/2addr v0, v2

    .line 26
    double-to-int p2, v0

    .line 27
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setProgress(I)V

    .line 30
    :cond_1d
    return-void
.end method

.method public initDragEvent(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .line 1
    if-nez p1, :cond_a

    .line 3
    const-string p1, "MirrorFileExplorerTabActivity"

    .line 5
    const-string p2, "targetView is null"

    .line 7
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$2;

    .line 13
    invoke-direct {v0, p0, p2}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$2;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 19
    return-void
.end method

.method public initView()V
    .registers 5

    .line 1
    const v0, 0x7f0d0029

    .line 4
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 7
    const v0, 0x7f0a017b

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    .line 16
    new-instance v1, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$1;

    .line 18
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$1;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;)V

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    .line 24
    const v0, 0x7f0a027b

    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    .line 33
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->topView:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    .line 35
    const v0, 0x7f0a0278

    .line 38
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;

    .line 44
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mRecyclerView:Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;

    .line 46
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->initAndObserveVMs()V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object v2

    .line 59
    const v3, 0x7f06010a

    .line 62
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 65
    move-result v2

    .line 66
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    const v0, 0x7f0a0276

    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v0

    .line 79
    const-string v1, "PAGE_MirrorFileExplorerTabActivity"

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public isProgressCancelled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->isCancelled()Z

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

.method public isProgressShowing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

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

.method public onActionModeChange(Z)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const-string v0, "MirrorFileExplorerTabActivity"

    .line 3
    const-string v1, "onCreate: mirror activity onCreate"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object v0

    .line 12
    const/16 v1, 0x400

    .line 14
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 17
    invoke-super {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 3
    const-string v1, "MirrorFileExplorerTabActivity"

    .line 5
    if-nez v0, :cond_d

    .line 7
    const-string p1, "onKeyDown return, mCurrentFragment is null"

    .line 9
    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 16
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->containsKey(I)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1f

    .line 22
    const-string v0, "onKeyDown: return, keycode is not contained"

    .line 24
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_1f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v0, p1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->handleKeyState(IZ)Z

    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_32

    .line 41
    const-string v0, "onKeyDown: return, keycode is continue pressed"

    .line 43
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 49
    move-result p1

    .line 50
    return p1

    .line 51
    :cond_32
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 53
    instance-of v1, v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$OnMainActionCallback;

    .line 55
    if-eqz v1, :cond_45

    .line 57
    check-cast v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$OnMainActionCallback;

    .line 59
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 61
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->getKey(I)I

    .line 64
    move-result p1

    .line 65
    invoke-interface {v0, p1, v2}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$OnMainActionCallback;->onKeyEvent(IZ)Z

    .line 68
    move-result p1

    .line 69
    return p1

    .line 70
    :cond_45
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 73
    move-result p1

    .line 74
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "MirrorFileExplorerTabActivity"

    .line 6
    if-nez v0, :cond_d

    .line 8
    const-string p1, "onKeyDown return, mCurrentFragment is null"

    .line 10
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return v1

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 16
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->containsKey(I)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1f

    .line 22
    const-string v0, "onKeyDown: return, keycode is not contained"

    .line 24
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_1f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 34
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->handleKeyState(IZ)Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_31

    .line 40
    const-string v0, "onKeyDown: return, keycode is continue pressed"

    .line 42
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_31
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 52
    instance-of v2, v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$OnMainActionCallback;

    .line 54
    if-eqz v2, :cond_44

    .line 56
    check-cast v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$OnMainActionCallback;

    .line 58
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mKeyInfo:Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 60
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->getKey(I)I

    .line 63
    move-result p1

    .line 64
    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$OnMainActionCallback;->onKeyEvent(IZ)Z

    .line 67
    move-result p1

    .line 68
    return p1

    .line 69
    :cond_44
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 72
    move-result p1

    .line 73
    return p1
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->onResume()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mRecyclerView:Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorSidebarRecyclerView;->initData()V

    .line 11
    :cond_a
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    const-string v0, "MirrorFileExplorerTabActivity"

    .line 3
    const-string v1, "onStop: mirror stop"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 10
    if-eqz v1, :cond_2b

    .line 12
    const-string v1, "onStop: commit hide"

    .line 14
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    new-instance v1, Landroidx/fragment/app/a;

    .line 26
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 31
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->A()V

    .line 44
    :cond_2b
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onStop()V

    .line 47
    return-void
.end method

.method public setCompressProgress(Ljava/lang/String;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setProgress(Ljava/lang/String;I)V

    .line 9
    return-void
.end method

.method public setFilesProgress(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setFileProgress(II)V

    .line 16
    :cond_f
    return-void
.end method

.method public setProgressMax(J)V
    .registers 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->calculateProgressDivider(J)D

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mDivider:D

    .line 7
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 9
    cmpg-double v0, v0, v2

    .line 11
    if-gez v0, :cond_e

    .line 13
    iput-wide v2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mDivider:D

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 17
    if-eqz v0, :cond_25

    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_25

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 27
    const-wide/16 v1, 0x1

    .line 29
    add-long/2addr v1, p1

    .line 30
    long-to-double v1, v1

    .line 31
    iget-wide v3, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mDivider:D

    .line 33
    div-double/2addr v1, v3

    .line 34
    double-to-int v1, v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setMax(I)V

    .line 38
    :cond_25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v2, "Total file size to be operated:"

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public setProgressSpeed(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setSpeed(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSingleSizeDone(J)V
    .registers 9

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    .line 3
    add-long/2addr v0, p1

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 6
    if-eqz p1, :cond_1b

    .line 8
    iget-wide v2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mDivider:D

    .line 10
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 12
    cmpl-double p2, v2, v4

    .line 14
    if-ltz p2, :cond_1b

    .line 16
    const-wide/16 v4, 0x0

    .line 18
    cmp-long p2, v0, v4

    .line 20
    if-eqz p2, :cond_1b

    .line 22
    long-to-double v0, v0

    .line 23
    div-double/2addr v0, v2

    .line 24
    double-to-int p2, v0

    .line 25
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setProgress(I)V

    .line 28
    :cond_1b
    return-void
.end method

.method public showLoadingDialog(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->showLoadingDialog(IZ)V

    return-void
.end method

.method public showLoadingDialog(IZ)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->dismissProgress()V

    .line 3
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setCancelable(Z)V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setIndeterminate(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setProgress(I)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_4a

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4a

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->show()V

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 12
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

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->showProgressDialog(IZ)V

    return-void
.end method

.method public showProgressDialog(IZ)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->dismissProgress()V

    .line 3
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setCancelable(Z)V

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setIndeterminate(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setProgressStyle(I)V

    const-wide/16 p1, 0x0

    .line 9
    iput-wide p1, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    const-wide/16 p1, 0x0

    .line 10
    iput-wide p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mDivider:D

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_52

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_52

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->show()V

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_52

    .line 14
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

    .line 15
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->dismissProgress()V

    .line 16
    new-instance p3, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-direct {p3, p0}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setCancelable(Z)V

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setIndeterminate(Z)V

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->setProgressStyle(I)V

    const-wide/16 p1, 0x0

    .line 22
    iput-wide p1, p0, Lcom/android/fileexplorer/activity/BaseActivity;->mTotalSize:J

    const-wide/16 p1, 0x0

    .line 23
    iput-wide p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mDivider:D

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_40

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_40

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->show()V

    :cond_40
    return-void
.end method

.method public startSpeedTimer()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mProgressDialog:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    .line 3
    if-eqz v0, :cond_21

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_21

    .line 11
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->stopSpeedTimer()V

    .line 14
    new-instance v1, Ljava/util/Timer;

    .line 16
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    .line 21
    new-instance v2, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {v2, p0, p0, v0}, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$SpeedTimerTask;-><init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Lcom/android/fileexplorer/activity/BaseActivity;Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$1;)V

    .line 27
    const-wide/16 v3, 0x0

    .line 29
    const-wide/16 v5, 0x3e8

    .line 31
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 34
    :cond_21
    return-void
.end method

.method public stopSpeedTimer()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    .line 10
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->mSpeedUpdateTimer:Ljava/util/Timer;

    .line 16
    :cond_f
    return-void
.end method
