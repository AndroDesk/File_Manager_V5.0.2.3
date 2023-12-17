.class public Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;
.super Li1/a;
.source "DynamicFragmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;
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
            "Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Li1/a;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 20
    return-void
.end method

.method private removeAllFragmentFromManager()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_e
    if-ge v3, v1, :cond_1a

    .line 17
    invoke-virtual {p0, v3, v2}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v0, v4}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 26
    goto :goto_e

    .line 27
    :cond_1a
    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()I

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 32
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->A()V

    .line 35
    return-void
.end method

.method private removeFragmentFromManager(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_16

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    new-instance v1, Landroidx/fragment/app/a;

    .line 11
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 14
    invoke-virtual {v1, p1}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->A()V

    .line 23
    :cond_16
    return-void
.end method


# virtual methods
.method public addFragment(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/a$d;Z)I
    .registers 15
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
            "Z)I"
        }
    .end annotation

    .line 6
    new-instance v7, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/a$d;Z)V

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_21

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_32

    .line 10
    :cond_21
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_32

    .line 11
    :cond_2d
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 12
    :goto_32
    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    return p2
.end method

.method public addFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/a$d;Z)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroidx/appcompat/app/a$d;",
            "Z)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v9, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/a$d;Z)V

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2a

    .line 3
    :cond_19
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/a$d;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :goto_2a
    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 3
    if-nez p1, :cond_c

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 7
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 13
    :cond_c
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 15
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 17
    invoke-virtual {p1, p3}, Landroidx/fragment/app/b0;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 20
    return-void
.end method

.method public findPositionByTag(Ljava/lang/String;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_21

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 18
    iget-object v2, v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1e

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_7

    .line 34
    :cond_21
    const/4 p1, -0x1

    .line 35
    return p1
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 3
    if-eqz p1, :cond_f

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/b0;->d()I

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->A()V

    .line 16
    :cond_f
    return-void
.end method

.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getFragment(IZ)Landroidx/fragment/app/Fragment;
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->getFragment(IZZ)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragment(IZZ)Landroidx/fragment/app/Fragment;
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    if-eqz p3, :cond_10

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result p1

    .line 4
    :cond_10
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p1, p3, :cond_19

    const/4 p1, 0x0

    .line 5
    :cond_19
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 6
    iget-object p3, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-nez p3, :cond_49

    .line 7
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v0, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    iput-object p3, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-nez p3, :cond_49

    if-eqz p2, :cond_49

    .line 8
    iget-object p2, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->clazz:Ljava/lang/Class;

    if-eqz p2, :cond_49

    .line 9
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->args:Landroid/os/Bundle;

    invoke-static {p3, p2, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    iput-object p2, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 10
    iput-object v1, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->clazz:Ljava/lang/Class;

    .line 11
    iput-object v1, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->args:Landroid/os/Bundle;

    .line 12
    :cond_49
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getFragmentIndex(Ljava/lang/String;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_41

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_41

    .line 12
    move v0, v1

    .line 13
    :goto_c
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v2

    .line 19
    if-ge v0, v2, :cond_41

    .line 21
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 29
    invoke-virtual {v2}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->getFragment()Landroidx/fragment/app/Fragment;

    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_23

    .line 35
    goto :goto_3e

    .line 36
    :cond_23
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 44
    invoke-virtual {v2}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->getFragment()Landroidx/fragment/app/Fragment;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3e

    .line 62
    return v0

    .line 63
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    .line 65
    goto :goto_c

    .line 66
    :cond_41
    return v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_19

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 18
    iget-object v2, v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 20
    if-ne p1, v2, :cond_16

    .line 22
    return v1

    .line 23
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_7

    .line 26
    :cond_19
    const/4 p1, -0x2

    .line 27
    return p1
.end method

.method public getTabAt(I)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 9
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->tab:Landroidx/appcompat/app/a$d;

    .line 11
    return-object p1
.end method

.method public hasActionMenu(I)Z
    .registers 3

    .line 1
    if-ltz p1, :cond_15

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_15

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 19
    iget-boolean p1, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    :goto_16
    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 7
    invoke-static {v0, v0}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 13
    :cond_c
    const/4 v0, 0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->getFragment(IZZ)Landroidx/fragment/app/Fragment;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_27

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance p2, Landroidx/fragment/app/b0$a;

    .line 32
    const/4 v0, 0x7

    .line 33
    invoke-direct {p2, v0, v2}, Landroidx/fragment/app/b0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 36
    invoke-virtual {p1, p2}, Landroidx/fragment/app/b0;->b(Landroidx/fragment/app/b0$a;)V

    .line 39
    goto :goto_3a

    .line 40
    :cond_27
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/b0;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 45
    move-result p1

    .line 46
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 54
    iget-object p2, p2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    .line 56
    invoke-virtual {v3, p1, v2, p2, v0}, Landroidx/fragment/app/b0;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 59
    :goto_3a
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 61
    if-eq v2, p1, :cond_44

    .line 63
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 66
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 69
    :cond_44
    return-object v2
.end method

.method public isRTL()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_12

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v1, 0x0

    .line 20
    :goto_13
    return v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    .line 1
    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 6
    move-result-object p2

    .line 7
    if-ne p2, p1, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    return p1
.end method

.method public removeAllFragment()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->removeAllFragmentFromManager()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 12
    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    .line 15
    return-void
.end method

.method public removeFragment(Landroidx/appcompat/app/a$d;)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_33

    .line 2
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 3
    iget-object v3, v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->tab:Landroidx/appcompat/app/a$d;

    if-ne v3, p1, :cond_30

    .line 4
    iget-object p1, v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroidx/fragment/app/Fragment;)V

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    iget-object v0, v2, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-ne p1, v0, :cond_28

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 8
    :cond_28
    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

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

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2a

    .line 11
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->getFragment(IZZ)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-ne v3, p1, :cond_27

    .line 12
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroidx/fragment/app/Fragment;)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-ne v0, p1, :cond_1f

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 16
    :cond_1f
    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    .line 17
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

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

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    .line 5
    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroidx/fragment/app/Fragment;)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    .line 14
    move-result p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    .line 21
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

    .line 1
    move-object v7, p0

    .line 2
    move v8, p2

    .line 3
    const/4 v9, 0x0

    .line 4
    invoke-virtual {p0, p2, v9}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroidx/fragment/app/Fragment;)V

    .line 11
    iget-object v0, v7, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 20
    new-instance v10, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 22
    move-object v0, v10

    .line 23
    move-object v1, p0

    .line 24
    move-object v2, p1

    .line 25
    move-object v3, p3

    .line 26
    move-object v4, p4

    .line 27
    move-object/from16 v5, p5

    .line 29
    move/from16 v6, p6

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/a$d;Z)V

    .line 34
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->isRTL()Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_41

    .line 40
    iget-object v0, v7, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    move-result v0

    .line 46
    if-lt v8, v0, :cond_35

    .line 48
    iget-object v0, v7, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v0, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 53
    goto :goto_46

    .line 54
    :cond_35
    iget-object v0, v7, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    .line 59
    move-result v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 62
    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 65
    goto :goto_46

    .line 66
    :cond_41
    iget-object v0, v7, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v0, p2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 71
    :goto_46
    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    .line 74
    return-void
.end method

.method public setFragmentActionMenuAt(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 13
    iget-boolean v0, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    .line 15
    if-eq v0, p2, :cond_15

    .line 17
    iput-boolean p2, p1, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    .line 19
    invoke-virtual {p0}, Li1/a;->notifyDataSetChanged()V

    .line 22
    :cond_15
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 5
    if-eq p3, p1, :cond_1c

    .line 7
    if-eqz p1, :cond_11

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 15
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 18
    :cond_11
    if-eqz p3, :cond_1a

    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 24
    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 27
    :cond_1a
    iput-object p3, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 29
    :cond_1c
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method public toIndexForRTL(I)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->isRTL()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return p1

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    if-le v0, p1, :cond_13

    .line 18
    sub-int/2addr v0, p1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    return v0
.end method
