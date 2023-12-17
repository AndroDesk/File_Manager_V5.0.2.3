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
.method public constructor <init>(Lmiuix/viewpager/widget/PagerAdapter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    .line 11
    iput-object p1, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    .line 13
    return-void
.end method

.method private modifyPositions(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V
    .registers 25

    .line 1
    move-object/from16 v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 5
    move-object/from16 v2, p5

    .line 7
    move/from16 v3, p6

    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    .line 12
    move-result v4

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    .line 16
    move-result v5

    .line 17
    sub-int/2addr v4, v5

    .line 18
    int-to-float v4, v4

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    .line 22
    move-result v5

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    .line 26
    move-result v6

    .line 27
    sub-int/2addr v5, v6

    .line 28
    int-to-float v5, v5

    .line 29
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    .line 32
    move-result v6

    .line 33
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLeft()I

    .line 36
    move-result v7

    .line 37
    sub-int/2addr v6, v7

    .line 38
    int-to-float v6, v6

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 42
    move-result v7

    .line 43
    int-to-float v7, v7

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 47
    move-result v8

    .line 48
    int-to-float v8, v8

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 52
    move-result v9

    .line 53
    int-to-float v9, v9

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    .line 57
    move-result v10

    .line 58
    int-to-float v10, v10

    .line 59
    sub-float v11, v9, v7

    .line 61
    sub-float v12, v10, v8

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 66
    move-result v13

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getId()I

    .line 70
    move-result v14

    .line 71
    const/high16 v15, -0x40800000  # -1.0f

    .line 73
    cmpg-float v15, v15, v3

    .line 75
    if-gez v15, :cond_ab

    .line 77
    const/high16 v15, 0x3f800000  # 1.0f

    .line 79
    cmpg-float v16, v3, v15

    .line 81
    if-gez v16, :cond_ab

    .line 83
    const/high16 v16, 0x40000000  # 2.0f

    .line 85
    div-float v17, v12, v16

    .line 87
    add-float v17, v17, v5

    .line 89
    neg-float v3, v3

    .line 90
    mul-float v5, v17, v3

    .line 92
    add-float/2addr v4, v6

    .line 93
    div-float v6, v11, v16

    .line 95
    add-float/2addr v6, v4

    .line 96
    mul-float/2addr v6, v3

    .line 97
    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v4

    .line 101
    const/4 v13, 0x0

    .line 102
    if-eqz v4, :cond_87

    .line 104
    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 107
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 110
    cmpl-float v4, v7, v13

    .line 112
    if-nez v4, :cond_73

    .line 114
    move v4, v15

    .line 115
    goto :goto_77

    .line 116
    :cond_73
    mul-float v4, v11, v3

    .line 118
    add-float/2addr v4, v7

    .line 119
    div-float/2addr v4, v7

    .line 120
    :goto_77
    cmpl-float v7, v8, v13

    .line 122
    if-nez v7, :cond_7d

    .line 124
    move v7, v15

    .line 125
    goto :goto_81

    .line 126
    :cond_7d
    mul-float v7, v12, v3

    .line 128
    add-float/2addr v7, v8

    .line 129
    div-float/2addr v7, v8

    .line 130
    :goto_81
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 133
    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleY(F)V

    .line 136
    :cond_87
    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_ab

    .line 142
    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 145
    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 148
    cmpl-float v0, v9, v13

    .line 150
    if-nez v0, :cond_99

    .line 152
    move v11, v15

    .line 153
    goto :goto_9c

    .line 154
    :cond_99
    mul-float/2addr v11, v3

    .line 155
    add-float/2addr v11, v9

    .line 156
    div-float/2addr v11, v9

    .line 157
    :goto_9c
    cmpl-float v0, v10, v13

    .line 159
    if-nez v0, :cond_a1

    .line 161
    goto :goto_a5

    .line 162
    :cond_a1
    mul-float/2addr v12, v3

    .line 163
    add-float/2addr v12, v10

    .line 164
    div-float v15, v12, v10

    .line 166
    :goto_a5
    invoke-virtual {v1, v11}, Landroid/view/View;->setScaleX(F)V

    .line 169
    invoke-virtual {v1, v15}, Landroid/view/View;->setScaleY(F)V

    .line 172
    :cond_ab
    return-void
.end method

.method private resetView(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    .line 3
    if-eqz v0, :cond_54

    .line 5
    invoke-interface {v0, p1}, Lmiuix/viewpager/widget/PagerAdapter;->getView(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_54

    .line 11
    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_54

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/util/Pair;

    .line 29
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v2

    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v2

    .line 41
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 43
    check-cast v1, Ljava/lang/Integer;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 53
    const/high16 v3, 0x3f800000  # 1.0f

    .line 55
    const/4 v4, 0x0

    .line 56
    if-eqz v2, :cond_45

    .line 58
    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 61
    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 64
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 67
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 70
    :cond_45
    if-eqz v1, :cond_10

    .line 72
    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 75
    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 78
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 81
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 84
    goto :goto_10

    .line 85
    :cond_54
    return-void
.end method


# virtual methods
.method public addElement(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    .line 3
    new-instance v1, Landroid/util/Pair;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p2

    .line 13
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public clearElements()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 6
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 16

    .line 1
    add-int/lit8 p3, p1, 0x1

    .line 3
    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-interface {v0}, Lmiuix/viewpager/widget/PagerAdapter;->getCount()I

    .line 11
    move-result v0

    .line 12
    if-lt p3, v0, :cond_11

    .line 14
    invoke-direct {p0, p1}, Lmiuix/viewpager/widget/SharedElementTransformer;->resetView(I)V

    .line 17
    return-void

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_6f

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/util/Pair;

    .line 36
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 38
    check-cast v2, Ljava/lang/Integer;

    .line 40
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    check-cast v1, Ljava/lang/Integer;

    .line 44
    iget-object v3, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    .line 46
    invoke-interface {v3, p1}, Lmiuix/viewpager/widget/PagerAdapter;->getView(I)Landroid/view/View;

    .line 49
    move-result-object v3

    .line 50
    iget-object v4, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mPagerAdapter:Lmiuix/viewpager/widget/PagerAdapter;

    .line 52
    invoke-interface {v4, p3}, Lmiuix/viewpager/widget/PagerAdapter;->getView(I)Landroid/view/View;

    .line 55
    move-result-object v11

    .line 56
    const/4 v4, 0x0

    .line 57
    if-eqz v3, :cond_55

    .line 59
    if-eqz v11, :cond_55

    .line 61
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 64
    move-result v2

    .line 65
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v1

    .line 73
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v1

    .line 77
    if-eqz v2, :cond_4f

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move-object v2, v4

    .line 81
    :goto_50
    if-eqz v1, :cond_53

    .line 83
    goto :goto_57

    .line 84
    :cond_53
    move-object v1, v4

    .line 85
    goto :goto_57

    .line 86
    :cond_55
    move-object v1, v4

    .line 87
    move-object v2, v1

    .line 88
    :goto_57
    if-eqz v2, :cond_17

    .line 90
    if-eqz v1, :cond_17

    .line 92
    neg-float v10, p2

    .line 93
    move-object v4, p0

    .line 94
    move-object v5, v2

    .line 95
    move-object v6, v1

    .line 96
    move-object v7, v3

    .line 97
    move-object v8, v11

    .line 98
    move-object v9, v3

    .line 99
    invoke-direct/range {v4 .. v10}, Lmiuix/viewpager/widget/SharedElementTransformer;->modifyPositions(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    .line 102
    const/high16 v4, 0x3f800000  # 1.0f

    .line 104
    sub-float v10, v4, p2

    .line 106
    move-object v4, p0

    .line 107
    move-object v9, v11

    .line 108
    invoke-direct/range {v4 .. v10}, Lmiuix/viewpager/widget/SharedElementTransformer;->modifyPositions(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    .line 111
    goto :goto_17

    .line 112
    :cond_6f
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    return-void
.end method

.method public removeElement(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/viewpager/widget/SharedElementTransformer;->mSharedElementIds:Ljava/util/Set;

    .line 3
    new-instance v1, Landroid/util/Pair;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p2

    .line 13
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method
