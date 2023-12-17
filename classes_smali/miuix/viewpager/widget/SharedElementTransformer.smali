.class public Lmiuix/viewpager/widget/SharedElementTransformer;
.super Ljava/lang/Object;
.source "SharedElementTransformer.java"

# interfaces
.implements Lmiuix/viewpager/widget/OnPageChangeListener;


# instance fields
.field private mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

.field private mSharedElementIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/viewpager/widget/PagerAdapter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    iput-object p1, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    return-void
.end method

.method private modifyPositions(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V
    .registers 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float v11, v9, v7

    sub-float v12, v10, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getId()I

    move-result v14

    const/high16 v15, -0x40800000  # -1.0f

    cmpg-float v15, v15, v3

    if-gez v15, :cond_ab

    const/high16 v15, 0x3f800000  # 1.0f

    cmpg-float v16, v3, v15

    if-gez v16, :cond_ab

    const/high16 v16, 0x40000000  # 2.0f

    div-float v17, v12, v16

    add-float v17, v17, v5

    neg-float v3, v3

    mul-float v5, v17, v3

    add-float/2addr v4, v6

    div-float v6, v11, v16

    add-float/2addr v6, v4

    mul-float/2addr v6, v3

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v13, 0x0

    if-eqz v4, :cond_87

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v4, v7, v13

    if-nez v4, :cond_73

    move v4, v15

    goto :goto_77

    :cond_73
    mul-float v4, v11, v3

    add-float/2addr v4, v7

    div-float/2addr v4, v7

    :goto_77
    cmpl-float v7, v8, v13

    if-nez v7, :cond_7d

    move v7, v15

    goto :goto_81

    :cond_7d
    mul-float v7, v12, v3

    add-float/2addr v7, v8

    div-float/2addr v7, v8

    :goto_81
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleY(F)V

    :cond_87
    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_ab

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v0, v9, v13

    if-nez v0, :cond_99

    move v11, v15

    goto :goto_9c

    :cond_99
    mul-float/2addr v11, v3

    add-float/2addr v11, v9

    div-float/2addr v11, v9

    :goto_9c
    cmpl-float v0, v10, v13

    if-nez v0, :cond_a1

    goto :goto_a5

    :cond_a1
    mul-float/2addr v12, v3

    add-float/2addr v12, v10

    div-float v15, v12, v10

    :goto_a5
    invoke-virtual {v1, v11}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v15}, Landroid/view/View;->setScaleY(F)V

    :cond_ab
    return-void
.end method

.method private resetView(I)V
    .registers 7

    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_54

    invoke-interface {v0, p1}, Lmiuix/viewpager/widget/PagerAdapter;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_54

    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_45

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_45
    if-eqz v1, :cond_10

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_10

    :cond_54
    return-void
.end method


# virtual methods
.method public addElement(II)V
    .registers 5

    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearElements()V
    .registers 2

    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 16

    add-int/lit8 p3, p1, 0x1

    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {v0}, Lmiuix/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-lt p3, v0, :cond_11

    invoke-direct {p0, p1}, Lmiuix/viewpager/widget/SharedElementTransformer;->resetView(I)V

    return-void

    :cond_11
    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    invoke-interface {v3, p1}, Lmiuix/viewpager/widget/PagerAdapter;->getView(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    invoke-interface {v4, p3}, Lmiuix/viewpager/widget/PagerAdapter;->getView(I)Landroid/view/View;

    move-result-object v11

    const/4 v4, 0x0

    if-eqz v3, :cond_55

    if-eqz v11, :cond_55

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v2, :cond_4f

    goto :goto_50

    :cond_4f
    move-object v2, v4

    :goto_50
    if-eqz v1, :cond_53

    goto :goto_57

    :cond_53
    move-object v1, v4

    goto :goto_57

    :cond_55
    move-object v1, v4

    move-object v2, v1

    :goto_57
    if-eqz v2, :cond_17

    if-eqz v1, :cond_17

    neg-float v10, p2

    move-object v4, p0

    move-object v5, v2

    move-object v6, v1

    move-object v7, v3

    move-object v8, v11

    move-object v9, v3

    invoke-direct/range {v4 .. v10}, Lmiuix/viewpager/widget/SharedElementTransformer;->modifyPositions(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float v10, v4, p2

    move-object v4, p0

    move-object v9, v11

    invoke-direct/range {v4 .. v10}, Lmiuix/viewpager/widget/SharedElementTransformer;->modifyPositions(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    goto :goto_17

    :cond_6f
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    return-void
.end method

.method public removeElement(II)V
    .registers 5

    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
