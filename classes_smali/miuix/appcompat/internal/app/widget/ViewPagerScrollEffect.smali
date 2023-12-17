.class Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"

# interfaces
.implements Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;


# instance fields
.field public mBaseItem:I

.field public mBaseItemUpdated:Z

.field public mIncomingPosition:I

.field public mListView:Landroid/view/ViewGroup;

.field public mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

.field public mScrollBasePosition:I

.field public mViewPager:Lmiuix/viewpager/widget/ViewPager;

.field public sList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public sRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lmiuix/viewpager/widget/ViewPager;Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sRect:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItem:I

    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 24
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mScrollBasePosition:I

    .line 26
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mIncomingPosition:I

    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    .line 31
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 33
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 35
    return-void
.end method


# virtual methods
.method public clearTranslation(Landroid/view/ViewGroup;)V
    .registers 4

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->fillList(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_24

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_13

    :cond_24
    return-void
.end method

.method public clearTranslation(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    :cond_24
    return-void
.end method

.method public computOffset(IIIF)I
    .registers 6

    .line 1
    if-ge p1, p3, :cond_5

    .line 3
    mul-int/2addr p1, p2

    .line 4
    div-int/2addr p1, p3

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    move p1, p2

    .line 7
    :goto_6
    mul-float/2addr p4, p4

    .line 8
    int-to-float p1, p1

    .line 9
    const p3, 0x3dcccccd  # 0.1f

    .line 12
    const v0, 0x3f666666  # 0.9f

    .line 15
    div-float/2addr p4, v0

    .line 16
    sub-float/2addr p3, p4

    .line 17
    int-to-float p2, p2

    .line 18
    mul-float/2addr p3, p2

    .line 19
    add-float/2addr p3, p1

    .line 20
    const/4 p1, 0x0

    .line 21
    cmpl-float p1, p3, p1

    .line 23
    if-lez p1, :cond_1a

    .line 25
    float-to-int p1, p3

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    return p1
.end method

.method public fillList(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->clearTranslation(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    .line 4
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sRect:Landroid/graphics/Rect;

    .line 9
    invoke-static {p1, v0}, Lmiuix/internal/util/ViewUtils;->getContentRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sRect:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_19
    if-ge v1, v0, :cond_33

    .line 28
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 35
    move-result v3

    .line 36
    const/16 v4, 0x8

    .line 38
    if-ne v3, v4, :cond_2d

    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 43
    move-result v3

    .line 44
    if-lez v3, :cond_30

    .line 46
    :cond_2d
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_30
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_19

    .line 52
    :cond_33
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    .line 1
    if-nez p1, :cond_14

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    .line 5
    invoke-virtual {p1}, Landroidx/viewpager/widget/OriginalViewPager;->getCurrentItem()I

    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItem:I

    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    .line 16
    if-eqz p1, :cond_14

    .line 18
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->clearTranslation(Landroid/view/ViewGroup;)V

    .line 21
    :cond_14
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .registers 12

    .line 1
    const/4 p3, 0x0

    .line 2
    cmpl-float p3, p2, p3

    .line 4
    const/4 p4, 0x1

    .line 5
    if-nez p3, :cond_11

    .line 7
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItem:I

    .line 9
    iput-boolean p4, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->clearTranslation(Landroid/view/ViewGroup;)V

    .line 18
    :cond_11
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mScrollBasePosition:I

    .line 20
    if-eq v0, p1, :cond_2d

    .line 22
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItem:I

    .line 24
    if-ge v0, p1, :cond_1c

    .line 26
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItem:I

    .line 28
    goto :goto_22

    .line 29
    :cond_1c
    add-int/lit8 v1, p1, 0x1

    .line 31
    if-le v0, v1, :cond_22

    .line 33
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItem:I

    .line 35
    :cond_22
    :goto_22
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mScrollBasePosition:I

    .line 37
    iput-boolean p4, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 39
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    .line 41
    if-eqz v0, :cond_2d

    .line 43
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->clearTranslation(Landroid/view/ViewGroup;)V

    .line 46
    :cond_2d
    if-lez p3, :cond_92

    .line 48
    iget-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 50
    const/4 v0, 0x0

    .line 51
    if-eqz p3, :cond_70

    .line 53
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItemUpdated:Z

    .line 55
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mBaseItem:I

    .line 57
    if-ne p3, p1, :cond_48

    .line 59
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 61
    invoke-virtual {p3}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getCount()I

    .line 64
    move-result p3

    .line 65
    sub-int/2addr p3, p4

    .line 66
    if-ge p1, p3, :cond_48

    .line 68
    add-int/lit8 p3, p1, 0x1

    .line 70
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mIncomingPosition:I

    .line 72
    goto :goto_4a

    .line 73
    :cond_48
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mIncomingPosition:I

    .line 75
    :goto_4a
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mPagerAdapter:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    .line 77
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mIncomingPosition:I

    .line 79
    invoke-virtual {p3, v1, v0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    .line 82
    move-result-object p3

    .line 83
    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    .line 86
    if-eqz p3, :cond_70

    .line 88
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_70

    .line 94
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 97
    move-result-object p3

    .line 98
    const v1, 0x102000a

    .line 101
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object p3

    .line 105
    instance-of v1, p3, Landroid/view/ViewGroup;

    .line 107
    if-eqz v1, :cond_70

    .line 109
    check-cast p3, Landroid/view/ViewGroup;

    .line 111
    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    .line 113
    :cond_70
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mIncomingPosition:I

    .line 115
    if-ne p3, p1, :cond_78

    .line 117
    const/high16 p3, 0x3f800000  # 1.0f

    .line 119
    sub-float p2, p3, p2

    .line 121
    :cond_78
    move v5, p2

    .line 122
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    .line 124
    if-eqz v2, :cond_92

    .line 126
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 129
    move-result v3

    .line 130
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mListView:Landroid/view/ViewGroup;

    .line 132
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 135
    move-result v4

    .line 136
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->mIncomingPosition:I

    .line 138
    if-eq p2, p1, :cond_8d

    .line 140
    move v6, p4

    .line 141
    goto :goto_8e

    .line 142
    :cond_8d
    move v6, v0

    .line 143
    :goto_8e
    move-object v1, p0

    .line 144
    invoke-virtual/range {v1 .. v6}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->translateView(Landroid/view/ViewGroup;IIFZ)V

    .line 147
    :cond_92
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    return-void
.end method

.method public translateView(Landroid/view/ViewGroup;IIFZ)V
    .registers 12

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->fillList(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_4b

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/view/View;

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 26
    move-result p1

    .line 27
    const v1, 0x7fffffff

    .line 30
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->sList:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v2

    .line 36
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_4b

    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroid/view/View;

    .line 48
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 51
    move-result v4

    .line 52
    if-eq v1, v4, :cond_46

    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 57
    move-result v0

    .line 58
    sub-int v1, v0, p1

    .line 60
    invoke-virtual {p0, v1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ViewPagerScrollEffect;->computOffset(IIIF)I

    .line 63
    move-result v1

    .line 64
    if-eqz p5, :cond_42

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    neg-int v1, v1

    .line 68
    :goto_43
    move v5, v1

    .line 69
    move v1, v0

    .line 70
    move v0, v5

    .line 71
    :cond_46
    int-to-float v4, v0

    .line 72
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 75
    goto :goto_23

    .line 76
    :cond_4b
    return-void
.end method
