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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lmiuix/navigation/SplitLayout;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    iput-object p1, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

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

    invoke-direct/range {v0 .. v5}, Lmiuix/navigation/SplitFragmentManager;-><init>(Landroidx/fragment/app/FragmentManager;Lmiuix/navigation/SplitLayout;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lmiuix/navigation/SplitLayout;IIZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    iput-object p1, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

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

    instance-of v0, p1, Lmiuix/navigation/SplitFragmentManager$OnBackCallback;

    if-eqz v0, :cond_e

    check-cast p1, Lmiuix/navigation/SplitFragmentManager$OnBackCallback;

    invoke-interface {p1}, Lmiuix/navigation/SplitFragmentManager$OnBackCallback;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

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

    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-ne p3, p2, :cond_7

    invoke-virtual {p2, p1}, Lmiuix/navigation/SplitContainerFragment;->addChildFragment(Landroidx/fragment/app/Fragment;)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$addNavigationFragment$2(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 4

    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-ne p3, p2, :cond_7

    invoke-virtual {p2, p1}, Lmiuix/navigation/SplitContainerFragment;->addChildFragment(Landroidx/fragment/app/Fragment;)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$replaceContentFragment$4(Landroidx/fragment/app/Fragment;IIIILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 14

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-ne p7, v0, :cond_c

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitContainerFragment;->replaceChildFragment(Landroidx/fragment/app/Fragment;IIII)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$replaceNavigationFragment$1(Landroidx/fragment/app/Fragment;IIIILandroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 14

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-ne p7, v0, :cond_c

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitContainerFragment;->replaceChildFragment(Landroidx/fragment/app/Fragment;IIII)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$replaceRootContentFragment$3(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 4

    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-ne p3, p2, :cond_7

    invoke-virtual {p2, p1}, Lmiuix/navigation/SplitContainerFragment;->replaceRootFragment(Landroidx/fragment/app/Fragment;)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$replaceRootNavigationFragment$0(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 4

    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-ne p3, p2, :cond_7

    invoke-virtual {p2, p1}, Lmiuix/navigation/SplitContainerFragment;->replaceRootFragment(Landroidx/fragment/app/Fragment;)V

    :cond_7
    return-void
.end method

.method private popContentFragment()Z
    .registers 4

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v2

    :cond_15
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lmiuix/navigation/SplitContainerFragment;->popBackStack()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return v2

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method private popNavigationFragment()Z
    .registers 4

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v2

    :cond_15
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lmiuix/navigation/SplitContainerFragment;->popBackStack()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return v2

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addContentFragment(Landroidx/fragment/app/Fragment;)V
    .registers 8

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

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance p3, Lmiuix/navigation/b;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p4}, Lmiuix/navigation/b;-><init>(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/w;)V

    goto :goto_20

    :cond_16
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitContainerFragment;->addChildFragment(Landroidx/fragment/app/Fragment;IIII)V

    :goto_20
    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Content fragment container is not initialize, please call initContainer() before add fragment or set contentViewId in constructor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .registers 8

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

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance p3, Lmiuix/navigation/b;

    const/4 p4, 0x3

    invoke-direct {p3, p0, p1, p4}, Lmiuix/navigation/b;-><init>(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/w;)V

    goto :goto_20

    :cond_16
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitContainerFragment;->addChildFragment(Landroidx/fragment/app/Fragment;IIII)V

    :goto_20
    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Navigation fragment container is not initialize, please call initContainer() before add fragment or set navigationViewId in constructor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    return-void
.end method

.method public getContentFragmentSize()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNavigationFragmentSize()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public initContainer(II)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/navigation/SplitFragmentManager;->initContainer(IIZ)V

    return-void
.end method

.method public initContainer(IIZ)V
    .registers 8

    const-string v0, "miuix_"

    invoke-static {v0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lmiuix/navigation/SplitContainerFragment;

    iput-object v2, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v2, :cond_14

    if-nez p3, :cond_28

    :cond_14
    invoke-static {}, Lmiuix/navigation/SplitContainerFragment;->newInstance()Lmiuix/navigation/SplitContainerFragment;

    move-result-object v2

    iput-object v2, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    iget-object v2, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v2, v2}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v2

    iget-object v3, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    invoke-virtual {v2, p1, v3, v1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()I

    :cond_28
    invoke-static {v0, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiuix/navigation/SplitContainerFragment;

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_3a

    if-nez p3, :cond_4e

    :cond_3a
    invoke-static {}, Lmiuix/navigation/SplitContainerFragment;->newInstance()Lmiuix/navigation/SplitContainerFragment;

    move-result-object p3

    iput-object p3, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    iget-object p3, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {p3, p3}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p3

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    invoke-virtual {p3, p2, v0, p1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroidx/fragment/app/a;->d()I

    :cond_4e
    return-void
.end method

.method public popFragment()Z
    .registers 5

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_159

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    if-nez v0, :cond_b

    goto/16 :goto_159

    :cond_b
    invoke-virtual {v0}, Lmiuix/navigation/SplitLayout;->getSplitMode()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_5e

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    invoke-virtual {v0}, Lmiuix/navigation/SplitLayout;->isNavigationOpen()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_32

    iget-object v1, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_32

    return v2

    :cond_32
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    invoke-virtual {v0}, Lmiuix/navigation/SplitLayout;->closeNavigation()V

    return v2

    :cond_38
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_47

    invoke-direct {p0}, Lmiuix/navigation/SplitFragmentManager;->popContentFragment()Z

    move-result v0

    if-eqz v0, :cond_47

    return v2

    :cond_47
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_159

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_159

    return v2

    :cond_5e
    const/4 v3, 0x2

    if-ne v3, v0, :cond_c9

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_70

    invoke-direct {p0}, Lmiuix/navigation/SplitFragmentManager;->popContentFragment()Z

    move-result v0

    if-eqz v0, :cond_70

    return v2

    :cond_70
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_a3

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_87

    return v2

    :cond_87
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    invoke-virtual {v0}, Lmiuix/navigation/SplitLayout;->openNavigation()V

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    invoke-virtual {v0}, Lmiuix/navigation/SplitContainerFragment;->clearBackStack()Z

    move-result v0

    if-eqz v0, :cond_a3

    return v2

    :cond_a3
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_b2

    invoke-direct {p0}, Lmiuix/navigation/SplitFragmentManager;->popNavigationFragment()Z

    move-result v0

    if-eqz v0, :cond_b2

    return v2

    :cond_b2
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_159

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_159

    return v2

    :cond_c9
    if-ne v2, v0, :cond_159

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    invoke-virtual {v0}, Lmiuix/navigation/SplitLayout;->isNavigationEnable()Z

    move-result v0

    if-nez v0, :cond_ff

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ff

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_ea

    invoke-direct {p0}, Lmiuix/navigation/SplitFragmentManager;->popContentFragment()Z

    move-result v0

    if-eqz v0, :cond_ea

    return v2

    :cond_ea
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_ff

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    return v0

    :cond_ff
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mSplitLayout:Lmiuix/navigation/SplitLayout;

    invoke-virtual {v0}, Lmiuix/navigation/SplitLayout;->isContentEnable()Z

    move-result v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_133

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_11e

    invoke-direct {p0}, Lmiuix/navigation/SplitFragmentManager;->popNavigationFragment()Z

    move-result v0

    if-eqz v0, :cond_11e

    return v2

    :cond_11e
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_133

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    return v0

    :cond_133
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_142

    invoke-direct {p0}, Lmiuix/navigation/SplitFragmentManager;->popContentFragment()Z

    move-result v0

    if-eqz v0, :cond_142

    return v2

    :cond_142
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_159

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Lmiuix/navigation/SplitFragmentManager;->checkInternalBack(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_159

    return v2

    :cond_159
    :goto_159
    return v1
.end method

.method public replaceContentFragment(ILandroidx/fragment/app/Fragment;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-nez v0, :cond_19

    invoke-static {}, Lmiuix/navigation/SplitContainerFragment;->newInstance()Lmiuix/navigation/SplitContainerFragment;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    :cond_19
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitFragmentManager;->replaceContentFragment(Landroidx/fragment/app/Fragment;IIII)V

    return-void
.end method

.method public replaceContentFragment(Landroidx/fragment/app/Fragment;)V
    .registers 8

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

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1d

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

    :cond_1d
    iget-object v1, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiuix/navigation/SplitContainerFragment;->replaceChildFragment(Landroidx/fragment/app/Fragment;IIII)V

    :goto_27
    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

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

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-nez v0, :cond_19

    invoke-static {}, Lmiuix/navigation/SplitContainerFragment;->newInstance()Lmiuix/navigation/SplitContainerFragment;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    :cond_19
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lmiuix/navigation/SplitFragmentManager;->replaceNavigationFragment(Landroidx/fragment/app/Fragment;IIII)V

    return-void
.end method

.method public replaceNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .registers 8

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

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1d

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

    :cond_1d
    iget-object v1, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiuix/navigation/SplitContainerFragment;->replaceChildFragment(Landroidx/fragment/app/Fragment;IIII)V

    :goto_27
    iget-object p2, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

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

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-nez v0, :cond_19

    invoke-static {}, Lmiuix/navigation/SplitContainerFragment;->newInstance()Lmiuix/navigation/SplitContainerFragment;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    :cond_19
    invoke-virtual {p0, p2}, Lmiuix/navigation/SplitFragmentManager;->replaceRootContentFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public replaceRootContentFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v1, Lmiuix/navigation/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lmiuix/navigation/b;-><init>(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/w;)V

    goto :goto_1b

    :cond_16
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    invoke-virtual {v0, p1}, Lmiuix/navigation/SplitContainerFragment;->replaceRootFragment(Landroidx/fragment/app/Fragment;)V

    :goto_1b
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mContentFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

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

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-nez v0, :cond_19

    invoke-static {}, Lmiuix/navigation/SplitContainerFragment;->newInstance()Lmiuix/navigation/SplitContainerFragment;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    :cond_19
    invoke-virtual {p0, p2}, Lmiuix/navigation/SplitFragmentManager;->replaceRootNavigationFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public replaceRootNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v1, Lmiuix/navigation/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lmiuix/navigation/b;-><init>(Lmiuix/navigation/SplitFragmentManager;Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addFragmentOnAttachListener(Landroidx/fragment/app/w;)V

    goto :goto_1b

    :cond_16
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationContainerFragment:Lmiuix/navigation/SplitContainerFragment;

    invoke-virtual {v0, p1}, Lmiuix/navigation/SplitContainerFragment;->replaceRootFragment(Landroidx/fragment/app/Fragment;)V

    :goto_1b
    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiuix/navigation/SplitFragmentManager;->mNavigationFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Navigation fragment container is not initialize, please call initContainer() before add fragment or set navigationViewId in constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
