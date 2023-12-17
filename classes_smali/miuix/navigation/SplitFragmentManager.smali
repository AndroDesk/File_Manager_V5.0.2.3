.class public Lmiuix/navigation/SplitFragmentManager;
.super Ljava/lang/Object;
.source "SplitFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigation/SplitFragmentManager$OnBackCallback;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG_PREFIX:Ljava/lang/String; = "miuix_"


# instance fields
.field private mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

.field private final mContentFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

.field private final mNavigationFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitLayout:Lmiuix/navigation/SplitLayout;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lmiuix/navigation/SplitLayout;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    iput-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lmiuix/navigation/SplitLayout;II)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 6
    invoke-direct/range {v0 .. v5}, Lmiuix/navigation/SplitFragmentManager;-><init>(Landroidx/fragment/app/FragmentManager;Lmiuix/navigation/SplitLayout;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lmiuix/navigation/SplitLayout;IIZ)V
    .registers 7

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 10
    iput-object p1, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 11
    iput-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    .line 12
    invoke-virtual {p0, p3, p4, p5}, Lmiuix/navigation/SplitFragmentManager;->initContainer(IIZ)V

    return-void
.end method

.method public static synthetic a(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigation/SplitFragmentManager;->lambda$replaceRootNavigationFragment$0(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic b(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigation/SplitFragmentManager;->lambda$addNavigationFragment$2(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic c(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;IIIILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lmiuix/navigation/SplitFragmentManager;->lambda$replaceContentFragment$4(Landroidx/fragment/app/Fragment;IIIILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private checkInternalBack(Landroidx/fragment/app/Fragment;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/navigation/SplitFragmentManager$OnBackCallback;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    check-cast p1, Lmiuix/navigation/SplitFragmentManager$OnBackCallback;

    .line 7
    invoke-interface {p1}, Lmiuix/navigation/SplitFragmentManager$OnBackCallback;->onBackPressed()Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    return p1
.end method

.method public static synthetic d(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;IIIILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lmiuix/navigation/SplitFragmentManager;->lambda$replaceNavigationFragment$1(Landroidx/fragment/app/Fragment;IIIILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic e(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigation/SplitFragmentManager;->lambda$addContentFragment$5(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic f(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigation/SplitFragmentManager;->lambda$replaceRootContentFragment$3(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private synthetic lambda$addContentFragment$5(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 3
    if-ne p3, p2, :cond_7

    .line 5
    invoke-virtual {p2, p1}, Lmiuix/navigation/SplitContainerFragment;->addChildFragment(Landroidx/fragment/app/Fragment;)V

    .line 8
    :cond_7
    return-void
.end method

.method private synthetic lambda$addNavigationFragment$2(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 3
    if-ne p3, p2, :cond_7

    .line 5
    invoke-virtual {p2, p1}, Lmiuix/navigation/SplitContainerFragment;->addChildFragment(Landroidx/fragment/app/Fragment;)V

    .line 8
    :cond_7
    return-void
.end method

.method private synthetic lambda$replaceContentFragment$4(Landroidx/fragment/app/Fragment;IIIILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 14

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 3
    if-ne p7, v0, :cond_c

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitContainerFragment;->replaceChildFragment(Landroidx/fragment/app/Fragment;IIII)V

    .line 13
    :cond_c
    return-void
.end method

.method private synthetic lambda$replaceNavigationFragment$1(Landroidx/fragment/app/Fragment;IIIILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 14

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 3
    if-ne p7, v0, :cond_c

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitContainerFragment;->replaceChildFragment(Landroidx/fragment/app/Fragment;IIII)V

    .line 13
    :cond_c
    return-void
.end method

.method private synthetic lambda$replaceRootContentFragment$3(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 3
    if-ne p3, p2, :cond_7

    .line 5
    invoke-virtual {p2, p1}, Lmiuix/navigation/SplitContainerFragment;->replaceRootFragment(Landroidx/fragment/app/Fragment;)V

    .line 8
    :cond_7
    return-void
.end method

.method private synthetic lambda$replaceRootNavigationFragment$0(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 3
    if-ne p3, p2, :cond_7

    .line 5
    invoke-virtual {p2, p1}, Lmiuix/navigation/SplitContainerFragment;->replaceRootFragment(Landroidx/fragment/app/Fragment;)V

    .line 8
    :cond_7
    return-void
.end method

.method private popContentFragment()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 15
    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_15

    .line 21
    return v2

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 24
    if-eqz v0, :cond_2a

    .line 26
    invoke-virtual {v0}, Lmiuix/navigation/SplitContainerFragment;->popBackStack()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2a

    .line 32
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    move-result v1

    .line 38
    sub-int/2addr v1, v2

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 42
    return v2

    .line 43
    :cond_2a
    const/4 v0, 0x0

    .line 44
    return v0
.end method

.method private popNavigationFragment()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 15
    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_15

    .line 21
    return v2

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 24
    if-eqz v0, :cond_2a

    .line 26
    invoke-virtual {v0}, Lmiuix/navigation/SplitContainerFragment;->popBackStack()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2a

    .line 32
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    move-result v1

    .line 38
    sub-int/2addr v1, v2

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 42
    return v2

    .line 43
    :cond_2a
    const/4 v0, 0x0

    .line 44
    return v0
.end method


# virtual methods
.method public addContentFragment(Landroidx/fragment/app/Fragment;)V
    .registers 8

    .line 7
    sget v2, Lmiuix/navigation/R$anim;->slide_in_right:I

    sget v3, Lmiuix/navigation/R$anim;->slide_out_left:I

    sget v4, Lmiuix/navigation/R$anim;->slide_in_left:I

    sget v5, Lmiuix/navigation/R$anim;->slide_out_right:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitFragmentManager;->addContentFragment(Landroidx/fragment/app/Fragment;IIII)V

    return-void
.end method

.method public addContentFragment(Landroidx/fragment/app/Fragment;IIII)V
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_26

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3
    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance p3, Lmiuix/navigation/b;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p4}, Lmiuix/navigation/b;-><init>(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/w;)V

    goto :goto_20

    .line 4
    :cond_16
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitContainerFragment;->addChildFragment(Landroidx/fragment/app/Fragment;IIII)V

    .line 5
    :goto_20
    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Content fragment container is not initialize, please call initContainer() before add fragment or set contentViewId in constructor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .registers 8

    .line 7
    sget v2, Lmiuix/navigation/R$anim;->slide_in_right:I

    sget v3, Lmiuix/navigation/R$anim;->slide_out_left:I

    sget v4, Lmiuix/navigation/R$anim;->slide_in_left:I

    sget v5, Lmiuix/navigation/R$anim;->slide_out_right:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitFragmentManager;->addNavigationFragment(Landroidx/fragment/app/Fragment;IIII)V

    return-void
.end method

.method public addNavigationFragment(Landroidx/fragment/app/Fragment;IIII)V
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_26

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3
    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance p3, Lmiuix/navigation/b;

    const/4 p4, 0x3

    invoke-direct {p3, p0, p1, p4}, Lmiuix/navigation/b;-><init>(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/w;)V

    goto :goto_20

    .line 4
    :cond_16
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitContainerFragment;->addChildFragment(Landroidx/fragment/app/Fragment;IIII)V

    .line 5
    :goto_20
    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Navigation fragment container is not initialize, please call initContainer() before add fragment or set navigationViewId in constructor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 14
    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    .line 16
    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 18
    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 20
    return-void
.end method

.method public getContentFragmentSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getNavigationFragmentSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public initContainer(II)V
    .registers 4

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/navigation/SplitFragmentManager;->initContainer(IIZ)V

    return-void
.end method

.method public initContainer(IIZ)V
    .registers 8

    const-string v0, "miuix_"

    .line 1
    invoke-static {v0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lmiuix/navigation/SplitContainerFragment;

    iput-object v2, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v2, :cond_14

    if-nez p3, :cond_28

    .line 3
    :cond_14
    invoke-static {}, Lmiuix/navigation/SplitContainerFragment;->newInstance()Lmiuix/navigation/SplitContainerFragment;

    move-result-object v2

    iput-object v2, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 4
    iget-object v2, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    invoke-static {v2, v2}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 7
    invoke-virtual {v2, p1, v3, v1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()I

    .line 9
    :cond_28
    invoke-static {v0, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiuix/navigation/SplitContainerFragment;

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_3a

    if-nez p3, :cond_4e

    .line 11
    :cond_3a
    invoke-static {}, Lmiuix/navigation/SplitContainerFragment;->newInstance()Lmiuix/navigation/SplitContainerFragment;

    move-result-object p3

    iput-object p3, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 12
    iget-object p3, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 13
    invoke-static {p3, p3}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p3

    .line 14
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 15
    invoke-virtual {p3, p2, v0, p1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p3}, Landroidx/fragment/app/a;->d()I

    :cond_4e
    return-void
.end method

.method public popFragment()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_159

    .line 6
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    .line 8
    if-nez v0, :cond_b

    .line 10
    goto/16 :goto_159

    .line 12
    :cond_b
    invoke-virtual {v0}, Lmiuix/navigation/SplitLayout;->getSplitMode()I

    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_5e

    .line 19
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    .line 21
    invoke-virtual {v0}, Lmiuix/navigation/SplitLayout;->isNavigationOpen()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_38

    .line 27
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_32

    .line 35
    iget-object v1, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 37
    sub-int/2addr v0, v2

    .line 38
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 44
    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_32

    .line 50
    return v2

    .line 51
    :cond_32
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    .line 53
    invoke-virtual {v0}, Lmiuix/navigation/SplitLayout;->closeNavigation()V

    .line 56
    return v2

    .line 57
    :cond_38
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 62
    move-result v0

    .line 63
    if-le v0, v2, :cond_47

    .line 65
    invoke-direct {p0}, Lmiuix/navigation/SplitFragmentManager;->popContentFragment()Z

    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_47

    .line 71
    return v2

    .line 72
    :cond_47
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 77
    move-result v0

    .line 78
    if-ne v0, v2, :cond_159

    .line 80
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 88
    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_159

    .line 94
    return v2

    .line 95
    :cond_5e
    const/4 v3, 0x2

    .line 96
    if-ne v3, v0, :cond_c9

    .line 98
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 103
    move-result v0

    .line 104
    if-le v0, v2, :cond_70

    .line 106
    invoke-direct {p0}, Lmiuix/navigation/SplitFragmentManager;->popContentFragment()Z

    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_70

    .line 112
    return v2

    .line 113
    :cond_70
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 118
    move-result v0

    .line 119
    if-ne v0, v2, :cond_a3

    .line 121
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 129
    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_87

    .line 135
    return v2

    .line 136
    :cond_87
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    .line 138
    invoke-virtual {v0}, Lmiuix/navigation/SplitLayout;->openNavigation()V

    .line 141
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 149
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_a3

    .line 155
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 157
    invoke-virtual {v0}, Lmiuix/navigation/SplitContainerFragment;->clearBackStack()Z

    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_a3

    .line 163
    return v2

    .line 164
    :cond_a3
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 169
    move-result v0

    .line 170
    if-le v0, v2, :cond_b2

    .line 172
    invoke-direct {p0}, Lmiuix/navigation/SplitFragmentManager;->popNavigationFragment()Z

    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_b2

    .line 178
    return v2

    .line 179
    :cond_b2
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 181
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 184
    move-result v0

    .line 185
    if-ne v0, v2, :cond_159

    .line 187
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 189
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 195
    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_159

    .line 201
    return v2

    .line 202
    :cond_c9
    if-ne v2, v0, :cond_159

    .line 204
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    .line 206
    invoke-virtual {v0}, Lmiuix/navigation/SplitLayout;->isNavigationEnable()Z

    .line 209
    move-result v0

    .line 210
    if-nez v0, :cond_ff

    .line 212
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 217
    move-result v0

    .line 218
    if-lez v0, :cond_ff

    .line 220
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 222
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 225
    move-result v0

    .line 226
    if-le v0, v2, :cond_ea

    .line 228
    invoke-direct {p0}, Lmiuix/navigation/SplitFragmentManager;->popContentFragment()Z

    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_ea

    .line 234
    return v2

    .line 235
    :cond_ea
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 240
    move-result v0

    .line 241
    if-ne v0, v2, :cond_ff

    .line 243
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 245
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 251
    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    .line 254
    move-result v0

    .line 255
    return v0

    .line 256
    :cond_ff
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    .line 258
    invoke-virtual {v0}, Lmiuix/navigation/SplitLayout;->isContentEnable()Z

    .line 261
    move-result v0

    .line 262
    if-nez v0, :cond_133

    .line 264
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 269
    move-result v0

    .line 270
    if-lez v0, :cond_133

    .line 272
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 274
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 277
    move-result v0

    .line 278
    if-le v0, v2, :cond_11e

    .line 280
    invoke-direct {p0}, Lmiuix/navigation/SplitFragmentManager;->popNavigationFragment()Z

    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_11e

    .line 286
    return v2

    .line 287
    :cond_11e
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 289
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 292
    move-result v0

    .line 293
    if-ne v0, v2, :cond_133

    .line 295
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    .line 297
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 300
    move-result-object v0

    .line 301
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 303
    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    .line 306
    move-result v0

    .line 307
    return v0

    .line 308
    :cond_133
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 310
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 313
    move-result v0

    .line 314
    if-le v0, v2, :cond_142

    .line 316
    invoke-direct {p0}, Lmiuix/navigation/SplitFragmentManager;->popContentFragment()Z

    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_142

    .line 322
    return v2

    .line 323
    :cond_142
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 325
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 328
    move-result v0

    .line 329
    if-ne v0, v2, :cond_159

    .line 331
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    .line 333
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 339
    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_159

    .line 345
    return v2

    .line 346
    :cond_159
    :goto_159
    return v1
.end method

.method public replaceContentFragment(ILandroidx/fragment/app/Fragment;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    sget v3, Lmiuix/navigation/R$anim;->slide_in_right:I

    sget v4, Lmiuix/navigation/R$anim;->slide_out_left:I

    sget v5, Lmiuix/navigation/R$anim;->slide_in_left:I

    sget v6, Lmiuix/navigation/R$anim;->slide_out_right:I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lmiuix/navigation/SplitFragmentManager;->replaceContentFragment(ILandroidx/fragment/app/Fragment;IIII)V

    return-void
.end method

.method public replaceContentFragment(ILandroidx/fragment/app/Fragment;IIII)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-nez v0, :cond_19

    .line 2
    invoke-static {}, Lmiuix/navigation/SplitContainerFragment;->newInstance()Lmiuix/navigation/SplitContainerFragment;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 3
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 4
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    :cond_19
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 8
    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitFragmentManager;->replaceContentFragment(Landroidx/fragment/app/Fragment;IIII)V

    return-void
.end method

.method public replaceContentFragment(Landroidx/fragment/app/Fragment;)V
    .registers 8

    .line 19
    sget v2, Lmiuix/navigation/R$anim;->slide_in_right:I

    sget v3, Lmiuix/navigation/R$anim;->slide_out_left:I

    sget v4, Lmiuix/navigation/R$anim;->slide_in_left:I

    sget v5, Lmiuix/navigation/R$anim;->slide_out_right:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitFragmentManager;->replaceContentFragment(Landroidx/fragment/app/Fragment;IIII)V

    return-void
.end method

.method public replaceContentFragment(Landroidx/fragment/app/Fragment;IIII)V
    .registers 16

    .line 12
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_2d

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 14
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v9, Lmiuix/navigation/a;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lmiuix/navigation/a;-><init>(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;IIIII)V

    invoke-virtual {v0, v9}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/w;)V

    goto :goto_27

    .line 15
    :cond_1d
    iget-object v1, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiuix/navigation/SplitContainerFragment;->replaceChildFragment(Landroidx/fragment/app/Fragment;IIII)V

    .line 16
    :goto_27
    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 17
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Content fragment container is not initialize, please call initContainer() before add fragment or set contentViewId in constructor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceNavigationFragment(ILandroidx/fragment/app/Fragment;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    sget v3, Lmiuix/navigation/R$anim;->slide_in_right:I

    sget v4, Lmiuix/navigation/R$anim;->slide_out_left:I

    sget v5, Lmiuix/navigation/R$anim;->slide_in_left:I

    sget v6, Lmiuix/navigation/R$anim;->slide_out_right:I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lmiuix/navigation/SplitFragmentManager;->replaceNavigationFragment(ILandroidx/fragment/app/Fragment;IIII)V

    return-void
.end method

.method public replaceNavigationFragment(ILandroidx/fragment/app/Fragment;IIII)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-nez v0, :cond_19

    .line 2
    invoke-static {}, Lmiuix/navigation/SplitContainerFragment;->newInstance()Lmiuix/navigation/SplitContainerFragment;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 3
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 4
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    :cond_19
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 8
    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitFragmentManager;->replaceNavigationFragment(Landroidx/fragment/app/Fragment;IIII)V

    return-void
.end method

.method public replaceNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .registers 8

    .line 19
    sget v2, Lmiuix/navigation/R$anim;->slide_in_right:I

    sget v3, Lmiuix/navigation/R$anim;->slide_out_left:I

    sget v4, Lmiuix/navigation/R$anim;->slide_in_left:I

    sget v5, Lmiuix/navigation/R$anim;->slide_out_right:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitFragmentManager;->replaceNavigationFragment(Landroidx/fragment/app/Fragment;IIII)V

    return-void
.end method

.method public replaceNavigationFragment(Landroidx/fragment/app/Fragment;IIII)V
    .registers 16

    .line 12
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_2d

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 14
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v9, Lmiuix/navigation/a;

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lmiuix/navigation/a;-><init>(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;IIIII)V

    invoke-virtual {v0, v9}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/w;)V

    goto :goto_27

    .line 15
    :cond_1d
    iget-object v1, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiuix/navigation/SplitContainerFragment;->replaceChildFragment(Landroidx/fragment/app/Fragment;IIII)V

    .line 16
    :goto_27
    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 17
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Navigation fragment container is not initialize, please call initContainer() before add fragment or set navigationViewId in constructor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceRootContentFragment(ILandroidx/fragment/app/Fragment;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-nez v0, :cond_19

    .line 2
    invoke-static {}, Lmiuix/navigation/SplitContainerFragment;->newInstance()Lmiuix/navigation/SplitContainerFragment;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 3
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 4
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    .line 8
    :cond_19
    invoke-virtual {p0, p2}, Lmiuix/navigation/SplitFragmentManager;->replaceRootContentFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public replaceRootContentFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 12
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_26

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_16

    .line 14
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v1, Lmiuix/navigation/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lmiuix/navigation/b;-><init>(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/w;)V

    goto :goto_1b

    .line 15
    :cond_16
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    invoke-virtual {v0, p1}, Lmiuix/navigation/SplitContainerFragment;->replaceRootFragment(Landroidx/fragment/app/Fragment;)V

    .line 16
    :goto_1b
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 18
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Content fragment container is not initialize, please call initContainer() before add fragment or set contentViewId in constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceRootNavigationFragment(ILandroidx/fragment/app/Fragment;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-nez v0, :cond_19

    .line 2
    invoke-static {}, Lmiuix/navigation/SplitContainerFragment;->newInstance()Lmiuix/navigation/SplitContainerFragment;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    .line 3
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 4
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    .line 8
    :cond_19
    invoke-virtual {p0, p2}, Lmiuix/navigation/SplitFragmentManager;->replaceRootNavigationFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public replaceRootNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 12
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_26

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_16

    .line 14
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v1, Lmiuix/navigation/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lmiuix/navigation/b;-><init>(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/w;)V

    goto :goto_1b

    .line 15
    :cond_16
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    invoke-virtual {v0, p1}, Lmiuix/navigation/SplitContainerFragment;->replaceRootFragment(Landroidx/fragment/app/Fragment;)V

    .line 16
    :goto_1b
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 18
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Navigation fragment container is not initialize, please call initContainer() before add fragment or set navigationViewId in constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
