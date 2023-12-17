.class public Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;,
        Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;
    }
.end annotation


# instance fields
.field private mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

.field private mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

.field private mActionMenuChangeAnimatorObject:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mTabListener:Landroidx/appcompat/app/a$e;

.field private mViewPager:Lmiuix/viewpager/widget/ViewPager;

.field private mViewPagerDecor:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;Z)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p3, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;

    .line 6
    invoke-direct {p3, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)V

    .line 9
    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mTabListener:Landroidx/appcompat/app/a$e;

    .line 11
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 13
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getActionBarOverlayLayout()Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p3

    .line 21
    sget v0, Lmiuix/appcompat/R$id;->view_pager:I

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 27
    instance-of v2, v1, Lmiuix/viewpager/widget/ViewPager;

    .line 29
    if-eqz v2, :cond_23

    .line 31
    check-cast v1, Lmiuix/viewpager/widget/ViewPager;

    .line 33
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 35
    goto :goto_62

    .line 36
    :cond_23
    new-instance v1, Lmiuix/viewpager/widget/ViewPager;

    .line 38
    invoke-direct {v1, p3}, Lmiuix/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 43
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 46
    new-instance v0, Lmiuix/springback/view/SpringBackLayout;

    .line 48
    invoke-direct {v0, p3}, Lmiuix/springback/view/SpringBackLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 53
    const/4 v1, 0x5

    .line 54
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setScrollOrientation(I)V

    .line 57
    new-instance v1, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 59
    invoke-direct {v1}, Landroidx/viewpager/widget/OriginalViewPager$g;-><init>()V

    .line 62
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 69
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 72
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 74
    invoke-virtual {v1}, Lmiuix/viewpager/widget/ViewPager;->isDraggable()Z

    .line 77
    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 81
    const v1, 0x1020002

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/view/ViewGroup;

    .line 90
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 92
    const/4 v2, -0x1

    .line 93
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    :goto_62
    new-instance p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 101
    invoke-direct {p1, p3, p2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 104
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 106
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 108
    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setAdapter(Li1/a;)V

    .line 111
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 113
    new-instance p2, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;

    .line 115
    invoke-direct {p2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)V

    .line 118
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/OriginalViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$j;)V

    .line 121
    if-eqz p4, :cond_8c

    .line 123
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_8c

    .line 129
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;

    .line 131
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 133
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 135
    invoke-direct {p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;-><init>(Lmiuix/viewpager/widget/ViewPager;Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;)V

    .line 138
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 141
    :cond_8c
    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/viewpager/widget/ViewPager;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    return-object p0
.end method


# virtual methods
.method public addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/a$d;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/appcompat/app/a$d;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .line 6
    move-object v0, p2

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mTabListener:Landroidx/appcompat/app/a$e;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setInternalTabListener(Landroidx/appcompat/app/a$e;)Landroidx/appcompat/app/a$d;

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalAddTab(Landroidx/appcompat/app/a$d;I)V

    .line 8
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->addFragment(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/a$d;Z)I

    move-result p1

    .line 9
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 10
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    :cond_2e
    return p1
.end method

.method public addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/a$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/appcompat/app/a$d;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .line 1
    move-object v0, p2

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mTabListener:Landroidx/appcompat/app/a$e;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setInternalTabListener(Landroidx/appcompat/app/a$e;)Landroidx/appcompat/app/a$d;

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalAddTab(Landroidx/appcompat/app/a$d;)V

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->addFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/a$d;Z)I

    move-result p1

    .line 4
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 5
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    :cond_2d
    return p1
.end method

.method public addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public getFragmentAt(I)Landroidx/fragment/app/Fragment;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public getFragmentTabCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getViewPagerOffscreenPageLimit()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->getOffscreenPageLimit()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public removeAllFragmentTab()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalRemoveAllTabs()V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 8
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->removeAllFragment()V

    .line 11
    return-void
.end method

.method public removeFragment(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->removeFragment(Landroidx/fragment/app/Fragment;)I

    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalRemoveTabAt(I)V

    .line 14
    :cond_d
    return-void
.end method

.method public removeFragmentAt(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->removeFragmentAt(I)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalRemoveTabAt(I)V

    .line 11
    return-void
.end method

.method public removeFragmentTab(Landroidx/appcompat/app/a$d;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->internalRemoveTab(Landroidx/appcompat/app/a$d;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->removeFragment(Landroidx/appcompat/app/a$d;)I

    return-void
.end method

.method public removeFragmentTab(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->findPositionByTag(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_b

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->removeFragmentAt(I)V

    :cond_b
    return-void
.end method

.method public removeOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_7
    return-void
.end method

.method public replaceFragmentTab(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Z)V
    .registers 14
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
            "Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateTab(I)V

    .line 6
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionBar:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 10
    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getTabAt(I)Landroidx/appcompat/app/a$d;

    .line 13
    move-result-object v6

    .line 14
    move-object v2, p1

    .line 15
    move v3, p2

    .line 16
    move-object v4, p3

    .line 17
    move-object v5, p4

    .line 18
    move v7, p5

    .line 19
    invoke-virtual/range {v1 .. v7}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->replaceFragmentAt(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/a$d;Z)V

    .line 22
    return-void
.end method

.method public setFragmentActionMenuAt(IZ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->setFragmentActionMenuAt(IZ)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 8
    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->getCurrentItem()I

    .line 11
    move-result v0

    .line 12
    if-ne p1, v0, :cond_4d

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionMenuChangeAnimatorObject:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    .line 16
    if-nez v0, :cond_43

    .line 18
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    .line 20
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)V

    .line 23
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionMenuChangeAnimatorObject:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    .line 25
    const/4 v1, 0x2

    .line 26
    new-array v1, v1, [F

    .line 28
    fill-array-data v1, :array_4e

    .line 31
    const-string v2, "Value"

    .line 33
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

    .line 39
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3e

    .line 45
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object v1

    .line 55
    const/high16 v2, 0x10e0000

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 60
    move-result v1

    .line 61
    int-to-long v1, v1

    .line 62
    goto :goto_40

    .line 63
    :cond_3e
    const-wide/16 v1, 0x0

    .line 65
    :goto_40
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 68
    :cond_43
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionMenuChangeAnimatorObject:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;

    .line 70
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->reset(IZ)V

    .line 73
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mActionMenuChangeAnimator:Landroid/animation/ObjectAnimator;

    .line 75
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 78
    :cond_4d
    return-void

    .line 79
    :array_4e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public setViewPagerDecor(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPagerDecor:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 7
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->removeView(Landroid/view/View;)V

    .line 10
    :cond_9
    if-eqz p1, :cond_1d

    .line 12
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPagerDecor:Landroid/view/View;

    .line 14
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$g;

    .line 16
    invoke-direct {p1}, Landroidx/viewpager/widget/OriginalViewPager$g;-><init>()V

    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p1, Landroidx/viewpager/widget/OriginalViewPager$g;->a:Z

    .line 22
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 24
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPagerDecor:Landroid/view/View;

    .line 26
    const/4 v2, -0x1

    .line 27
    invoke-virtual {v0, v1, v2, p1}, Landroidx/viewpager/widget/OriginalViewPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 30
    :cond_1d
    return-void
.end method

.method public setViewPagerDraggable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/viewpager/widget/ViewPager;->setDraggable(Z)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 13
    :cond_c
    return-void
.end method

.method public setViewPagerOffscreenPageLimit(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setOffscreenPageLimit(I)V

    .line 6
    return-void
.end method
