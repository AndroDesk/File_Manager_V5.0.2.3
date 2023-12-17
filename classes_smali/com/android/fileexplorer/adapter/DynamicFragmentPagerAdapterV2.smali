.class public Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;
.super Li1/a;
.source "DynamicFragmentPagerAdapterV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurTransaction:Landroidx/fragment/app/b0;

.field private mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

.field private mFragmentInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .registers 4

    invoke-direct {p0}, Li1/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurTransaction:Landroidx/fragment/app/b0;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private removeAllFragmentFromManager()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_1a

    invoke-virtual {p0, v3, v2}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1a
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->A()V

    return-void
.end method

.method private removeFragmentFromManager(Landroidx/fragment/app/Fragment;)V
    .registers 4

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, p1}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->A()V

    :cond_16
    return-void
.end method


# virtual methods
.method public addFragment(Ljava/lang/String;ILjava/lang/Class;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    new-instance v7, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;-><init>(Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/a$d;Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_21

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_32

    :cond_21
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->toIndexForRTL(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_32

    :cond_2d
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_32
    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    return p2
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurTransaction:Landroidx/fragment/app/b0;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurTransaction:Landroidx/fragment/app/b0;

    :cond_c
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurTransaction:Landroidx/fragment/app/b0;

    check-cast p3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/b0;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    return-void
.end method

.method public findPositionByTag(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;

    iget-object v2, v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->toIndexForRTL(I)I

    move-result p1

    return p1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    const/4 p1, -0x1

    return p1
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurTransaction:Landroidx/fragment/app/b0;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroidx/fragment/app/b0;->d()I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurTransaction:Landroidx/fragment/app/b0;

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->A()V

    :cond_f
    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFragment(I)Landroidx/fragment/app/Fragment;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->getFragment(IZZ)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragment(IZ)Landroidx/fragment/app/Fragment;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->getFragment(IZZ)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragment(IZZ)Landroidx/fragment/app/Fragment;
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    if-eqz p3, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->toIndexForRTL(I)I

    move-result p1

    :cond_10
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p1, p3, :cond_19

    const/4 p1, 0x0

    :cond_19
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;

    iget-object p3, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-nez p3, :cond_49

    iget-object p3, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v0, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    iput-object p3, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-nez p3, :cond_49

    if-eqz p2, :cond_49

    iget-object p2, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->clazz:Ljava/lang/Class;

    if-eqz p2, :cond_49

    iget-object p3, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->args:Landroid/os/Bundle;

    invoke-static {p3, p2, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    iput-object p2, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    iput-object v1, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->clazz:Ljava/lang/Class;

    iput-object v1, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->args:Landroid/os/Bundle;

    :cond_49
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getFragmentIndex(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    move v0, v1

    :goto_c
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_41

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;

    invoke-virtual {v2}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_23

    goto :goto_3e

    :cond_23
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;

    invoke-virtual {v2}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    return v0

    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_41
    return v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;

    iget-object v2, v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-ne p1, v2, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p1, -0x2

    return p1
.end method

.method public hasActionMenu(I)Z
    .registers 3

    if-ltz p1, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;

    iget-boolean p1, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->hasActionMenu:Z

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurTransaction:Landroidx/fragment/app/b0;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurTransaction:Landroidx/fragment/app/b0;

    :cond_c
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->getFragment(IZZ)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    if-eqz v3, :cond_27

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurTransaction:Landroidx/fragment/app/b0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/fragment/app/b0$a;

    const/4 v0, 0x7

    invoke-direct {p2, v0, v2}, Landroidx/fragment/app/b0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/b0;->b(Landroidx/fragment/app/b0$a;)V

    goto :goto_3a

    :cond_27
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurTransaction:Landroidx/fragment/app/b0;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;

    iget-object p2, p2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1, v2, p2, v0}, Landroidx/fragment/app/b0;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :goto_3a
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq v2, p1, :cond_44

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_44
    return-object v2
.end method

.method public isRTL()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public removeAllFragment()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->removeAllFragmentFromManager()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    return-void
.end method

.method public removeFragment(Landroidx/appcompat/app/a$d;)I
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_33

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;

    iget-object v3, v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->tab:Landroidx/appcompat/app/a$d;

    if-ne v3, p1, :cond_30

    iget-object p1, v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->removeFragmentFromManager(Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    iget-object v0, v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-ne p1, v0, :cond_28

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_28
    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->toIndexForRTL(I)I

    move-result p1

    return p1

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_33
    const/4 p1, -0x1

    return p1
.end method

.method public removeFragment(Landroidx/fragment/app/Fragment;)I
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2a

    invoke-virtual {p0, v2, v1, v1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->getFragment(IZZ)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-ne v3, p1, :cond_27

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->removeFragmentFromManager(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-ne v0, p1, :cond_1f

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_1f
    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->toIndexForRTL(I)I

    move-result p1

    return p1

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2a
    const/4 p1, -0x1

    return p1
.end method

.method public removeFragmentAt(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->removeFragmentFromManager(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->toIndexForRTL(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    return-void
.end method

.method public replaceFragmentAt(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/a$d;Z)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroidx/appcompat/app/a$d;",
            "Z)V"
        }
    .end annotation

    move-object v7, p0

    move v8, p2

    const/4 v9, 0x0

    invoke-virtual {p0, p2, v9}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->removeFragmentFromManager(Landroidx/fragment/app/Fragment;)V

    iget-object v0, v7, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->toIndexForRTL(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v10, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;-><init>(Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/a$d;Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, v7, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_35

    iget-object v0, v7, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_46

    :cond_35
    iget-object v0, v7, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->toIndexForRTL(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_46

    :cond_41
    iget-object v0, v7, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_46
    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    return-void
.end method

.method public setFragmentActionMenuAt(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->toIndexForRTL(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;

    iget-boolean v0, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->hasActionMenu:Z

    if-eq v0, p2, :cond_15

    iput-boolean p2, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2$FragmentInfo;->hasActionMenu:Z

    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    :cond_15
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    check-cast p3, Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq p3, p1, :cond_1c

    if-eqz p1, :cond_11

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_11
    if-eqz p3, :cond_1a

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_1a
    iput-object p3, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_1c
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method public toIndexForRTL(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->isRTL()Z

    move-result v0

    if-nez v0, :cond_7

    return p1

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapterV2;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v0, p1, :cond_13

    sub-int/2addr v0, p1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method
