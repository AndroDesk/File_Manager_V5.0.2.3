.class public Lmiuix/slidingwidget/widget/SlidingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SlidingLinearLayout.java"


# instance fields
.field private final preAddViewPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final preLayout:[I

.field private final preRemoveViewPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 6
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private preAddView()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_28

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 14
    new-instance v4, Landroid/util/Pair;

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 19
    move-result v5

    .line 20
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 27
    move-result v6

    .line 28
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    move-result-object v6

    .line 32
    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_5

    .line 41
    :cond_28
    return-void
.end method

.method private preRemoveView(II)V
    .registers 10

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_36

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-lt v1, p1, :cond_11

    add-int v3, p1, p2

    if-lt v1, v3, :cond_33

    .line 7
    :cond_11
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_33

    .line 8
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_36
    return-void
.end method

.method private preRemoveView(Landroid/view/View;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_32

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq p1, v2, :cond_2f

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2f

    .line 4
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_32
    return-void
.end method

.method private show(Landroid/view/View;)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Landroid/view/View;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 14
    move-result-object p1

    .line 15
    const-wide/16 v2, 0x1

    .line 17
    invoke-interface {p1, v2, v3}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1, v2, v3}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    .line 24
    move-result-object p1

    .line 25
    const-wide/16 v2, 0x64

    .line 27
    invoke-interface {p1, v2, v3}, Lmiuix/animation/IVisibleStyle;->setShowDelay(J)Lmiuix/animation/IVisibleStyle;

    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    .line 34
    move-result-object p1

    .line 35
    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    .line 37
    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    .line 40
    return-void
.end method


# virtual methods
.method public addViewSliding(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;I)V
    .registers 3

    .line 4
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 6
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;II)V
    .registers 4

    .line 7
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 9
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V
    .registers 4

    .line 13
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public addViewSliding(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddView()V

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->show(Landroid/view/View;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 6
    if-eqz p1, :cond_209

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    move-result v1

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x3

    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-ne v2, v5, :cond_2f

    .line 22
    iget-object v2, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 24
    aget v2, v2, v5

    .line 26
    sub-int v2, v2, p3

    .line 28
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 31
    move-result v2

    .line 32
    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 34
    aget v7, v7, v3

    .line 36
    sub-int v7, v7, p5

    .line 38
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 41
    move-result v7

    .line 42
    if-le v2, v7, :cond_2d

    .line 44
    :goto_2b
    move v2, v5

    .line 45
    goto :goto_46

    .line 46
    :cond_2d
    move v2, v6

    .line 47
    goto :goto_46

    .line 48
    :cond_2f
    iget-object v2, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 50
    aget v2, v2, v6

    .line 52
    sub-int v2, v2, p2

    .line 54
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 57
    move-result v2

    .line 58
    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 60
    aget v7, v7, v4

    .line 62
    sub-int v7, v7, p4

    .line 64
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 67
    move-result v7

    .line 68
    if-le v2, v7, :cond_2d

    .line 70
    goto :goto_2b

    .line 71
    :goto_46
    move v7, v6

    .line 72
    :goto_47
    if-ge v7, v1, :cond_1f2

    .line 74
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 77
    move-result-object v8

    .line 78
    iget-object v9, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 80
    const-string v10, "end"

    .line 82
    const-string v11, "start"

    .line 84
    const/16 v12, 0x8

    .line 86
    if-eqz v9, :cond_121

    .line 88
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    .line 91
    move-result v9

    .line 92
    if-lez v9, :cond_121

    .line 94
    iget-object v9, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 96
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object v9

    .line 100
    check-cast v9, Landroid/util/Pair;

    .line 102
    if-eqz v9, :cond_11a

    .line 104
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 107
    move-result v14

    .line 108
    if-eq v14, v12, :cond_11a

    .line 110
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    .line 113
    move-result v14

    .line 114
    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 116
    check-cast v3, Ljava/lang/Float;

    .line 118
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 121
    move-result v3

    .line 122
    cmpl-float v3, v14, v3

    .line 124
    if-nez v3, :cond_8d

    .line 126
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    .line 129
    move-result v3

    .line 130
    iget-object v14, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 132
    check-cast v14, Ljava/lang/Float;

    .line 134
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    .line 137
    move-result v14

    .line 138
    cmpl-float v3, v3, v14

    .line 140
    if-eqz v3, :cond_aa

    .line 142
    :cond_8d
    if-nez v2, :cond_aa

    .line 144
    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 146
    check-cast v3, Ljava/lang/Float;

    .line 148
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 151
    move-result v3

    .line 152
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    .line 155
    move-result v14

    .line 156
    sub-float/2addr v3, v14

    .line 157
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 159
    check-cast v9, Ljava/lang/Float;

    .line 161
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 164
    move-result v9

    .line 165
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    .line 168
    move-result v14

    .line 169
    sub-float/2addr v9, v14

    .line 170
    goto :goto_e0

    .line 171
    :cond_aa
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    .line 174
    move-result v3

    .line 175
    iget-object v14, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 177
    check-cast v14, Ljava/lang/Float;

    .line 179
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    .line 182
    move-result v14

    .line 183
    cmpl-float v3, v3, v14

    .line 185
    if-nez v3, :cond_de

    .line 187
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    .line 190
    move-result v3

    .line 191
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 193
    check-cast v9, Ljava/lang/Float;

    .line 195
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 198
    move-result v9

    .line 199
    cmpl-float v3, v3, v9

    .line 201
    if-nez v3, :cond_de

    .line 203
    if-eqz v2, :cond_de

    .line 205
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 207
    aget v9, v3, v6

    .line 209
    sub-int v9, v9, p2

    .line 211
    int-to-float v9, v9

    .line 212
    aget v3, v3, v5

    .line 214
    sub-int v3, v3, p3

    .line 216
    int-to-float v3, v3

    .line 217
    move/from16 v16, v9

    .line 219
    move v9, v3

    .line 220
    move/from16 v3, v16

    .line 222
    goto :goto_e0

    .line 223
    :cond_de
    const/4 v3, 0x0

    .line 224
    const/4 v9, 0x0

    .line 225
    :goto_e0
    new-instance v14, Lmiuix/animation/controller/AnimState;

    .line 227
    invoke-direct {v14, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 230
    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 232
    move v15, v7

    .line 233
    float-to-double v6, v3

    .line 234
    invoke-virtual {v14, v4, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 237
    move-result-object v3

    .line 238
    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 240
    float-to-double v12, v9

    .line 241
    invoke-virtual {v3, v6, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 244
    move-result-object v3

    .line 245
    new-instance v9, Lmiuix/animation/controller/AnimState;

    .line 247
    invoke-direct {v9, v10}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 250
    const-wide/16 v12, 0x0

    .line 252
    invoke-virtual {v9, v4, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {v4, v6, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 259
    move-result-object v4

    .line 260
    new-array v6, v5, [Landroid/view/View;

    .line 262
    const/4 v9, 0x0

    .line 263
    aput-object v8, v6, v9

    .line 265
    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 268
    move-result-object v6

    .line 269
    invoke-interface {v6}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 272
    move-result-object v6

    .line 273
    invoke-interface {v6, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 276
    move-result-object v6

    .line 277
    new-array v12, v9, [Lmiuix/animation/base/AnimConfig;

    .line 279
    invoke-interface {v6, v3, v4, v12}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 282
    goto :goto_11b

    .line 283
    :cond_11a
    move v15, v7

    .line 284
    :goto_11b
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 286
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    goto :goto_122

    .line 290
    :cond_121
    move v15, v7

    .line 291
    :goto_122
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    .line 293
    if-eqz v3, :cond_1eb

    .line 295
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 298
    move-result v3

    .line 299
    if-lez v3, :cond_1eb

    .line 301
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    .line 303
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    move-result-object v3

    .line 307
    check-cast v3, Landroid/util/Pair;

    .line 309
    if-eqz v3, :cond_1e6

    .line 311
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 314
    move-result v4

    .line 315
    const/16 v6, 0x8

    .line 317
    if-eq v4, v6, :cond_1e6

    .line 319
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    .line 322
    move-result v4

    .line 323
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 325
    check-cast v6, Ljava/lang/Float;

    .line 327
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 330
    move-result v6

    .line 331
    cmpl-float v4, v4, v6

    .line 333
    if-nez v4, :cond_15e

    .line 335
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    .line 338
    move-result v4

    .line 339
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 341
    check-cast v6, Ljava/lang/Float;

    .line 343
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 346
    move-result v6

    .line 347
    cmpl-float v4, v4, v6

    .line 349
    if-eqz v4, :cond_17c

    .line 351
    :cond_15e
    if-nez v2, :cond_17c

    .line 353
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 355
    check-cast v4, Ljava/lang/Float;

    .line 357
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 360
    move-result v4

    .line 361
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    .line 364
    move-result v6

    .line 365
    sub-float v14, v4, v6

    .line 367
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 369
    check-cast v3, Ljava/lang/Float;

    .line 371
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 374
    move-result v3

    .line 375
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    .line 378
    move-result v4

    .line 379
    sub-float/2addr v3, v4

    .line 380
    goto :goto_1ae

    .line 381
    :cond_17c
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    .line 384
    move-result v4

    .line 385
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 387
    check-cast v6, Ljava/lang/Float;

    .line 389
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 392
    move-result v6

    .line 393
    cmpl-float v4, v4, v6

    .line 395
    if-nez v4, :cond_1ac

    .line 397
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    .line 400
    move-result v4

    .line 401
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 403
    check-cast v3, Ljava/lang/Float;

    .line 405
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 408
    move-result v3

    .line 409
    cmpl-float v3, v4, v3

    .line 411
    if-nez v3, :cond_1ac

    .line 413
    if-eqz v2, :cond_1ac

    .line 415
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 417
    const/4 v4, 0x0

    .line 418
    aget v6, v3, v4

    .line 420
    sub-int v6, v6, p2

    .line 422
    int-to-float v14, v6

    .line 423
    aget v3, v3, v5

    .line 425
    sub-int v3, v3, p3

    .line 427
    int-to-float v3, v3

    .line 428
    goto :goto_1ae

    .line 429
    :cond_1ac
    const/4 v3, 0x0

    .line 430
    const/4 v14, 0x0

    .line 431
    :goto_1ae
    new-instance v4, Lmiuix/animation/controller/AnimState;

    .line 433
    invoke-direct {v4, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 436
    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 438
    float-to-double v11, v14

    .line 439
    invoke-virtual {v4, v6, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 442
    move-result-object v4

    .line 443
    sget-object v7, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 445
    float-to-double v11, v3

    .line 446
    invoke-virtual {v4, v7, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 449
    move-result-object v3

    .line 450
    new-instance v4, Lmiuix/animation/controller/AnimState;

    .line 452
    invoke-direct {v4, v10}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 455
    const-wide/16 v9, 0x0

    .line 457
    invoke-virtual {v4, v6, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 460
    move-result-object v4

    .line 461
    invoke-virtual {v4, v7, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 464
    move-result-object v4

    .line 465
    new-array v6, v5, [Landroid/view/View;

    .line 467
    const/4 v7, 0x0

    .line 468
    aput-object v8, v6, v7

    .line 470
    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 473
    move-result-object v6

    .line 474
    invoke-interface {v6}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 477
    move-result-object v6

    .line 478
    invoke-interface {v6, v3}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 481
    move-result-object v6

    .line 482
    new-array v9, v7, [Lmiuix/animation/base/AnimConfig;

    .line 484
    invoke-interface {v6, v3, v4, v9}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 487
    :cond_1e6
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    .line 489
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_1eb
    add-int/lit8 v7, v15, 0x1

    .line 494
    const/4 v3, 0x3

    .line 495
    const/4 v4, 0x2

    .line 496
    const/4 v6, 0x0

    .line 497
    goto/16 :goto_47

    .line 499
    :cond_1f2
    iget-object v1, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preAddViewPairs:Ljava/util/HashMap;

    .line 501
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 504
    iget-object v1, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveViewPairs:Ljava/util/HashMap;

    .line 506
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 509
    iget-object v1, v0, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preLayout:[I

    .line 511
    const/4 v2, 0x0

    .line 512
    aput p2, v1, v2

    .line 514
    aput p3, v1, v5

    .line 516
    const/4 v2, 0x2

    .line 517
    aput p4, v1, v2

    .line 519
    const/4 v2, 0x3

    .line 520
    aput p5, v1, v2

    .line 522
    :cond_209
    return-void
.end method

.method public removeViewSliding(Landroid/view/View;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveView(Landroid/view/View;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [Landroid/view/View;

    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object p1, v1, v2

    .line 10
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 17
    move-result-object v1

    .line 18
    const-wide/16 v3, 0x1

    .line 20
    invoke-interface {v1, v3, v4}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Lmiuix/animation/IVisibleStyle;->setShow()Lmiuix/animation/IVisibleStyle;

    .line 27
    move-result-object v1

    .line 28
    new-array v3, v0, [Lmiuix/animation/base/AnimConfig;

    .line 30
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 32
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 35
    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    .line 37
    new-instance v5, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;

    .line 39
    invoke-direct {v5, p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;-><init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;Landroid/view/View;)V

    .line 42
    aput-object v5, v0, v2

    .line 44
    invoke-virtual {v4, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 47
    move-result-object p1

    .line 48
    aput-object p1, v3, v2

    .line 50
    invoke-interface {v1, v3}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 53
    return-void
.end method

.method public removeViewSlidingAt(I)V
    .registers 8

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveView(Landroid/view/View;)V

    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v2, v1, [Landroid/view/View;

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v0, v2, v3

    .line 14
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 21
    move-result-object v0

    .line 22
    const-wide/16 v4, 0x1

    .line 24
    invoke-interface {v0, v4, v5}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->setShow()Lmiuix/animation/IVisibleStyle;

    .line 31
    move-result-object v0

    .line 32
    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    .line 34
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 36
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 39
    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 41
    new-instance v5, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;

    .line 43
    invoke-direct {v5, p0, p1}, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;-><init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;I)V

    .line 46
    aput-object v5, v1, v3

    .line 48
    invoke-virtual {v4, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 51
    move-result-object p1

    .line 52
    aput-object p1, v2, v3

    .line 54
    invoke-interface {v0, v2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 57
    return-void
.end method

.method public removeViewsSliding(II)V
    .registers 18

    .line 1
    invoke-direct/range {p0 .. p2}, Lmiuix/slidingwidget/widget/SlidingLinearLayout;->preRemoveView(II)V

    .line 4
    add-int v6, p1, p2

    .line 6
    move/from16 v7, p1

    .line 8
    :goto_7
    if-ge v7, v6, :cond_52

    .line 10
    move-object v8, p0

    .line 11
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x8

    .line 21
    if-eq v1, v2, :cond_4f

    .line 23
    const/4 v1, 0x1

    .line 24
    new-array v2, v1, [Landroid/view/View;

    .line 26
    const/4 v9, 0x0

    .line 27
    aput-object v0, v2, v9

    .line 29
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 36
    move-result-object v0

    .line 37
    const-wide/16 v2, 0x1

    .line 39
    invoke-interface {v0, v2, v3}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->setShow()Lmiuix/animation/IVisibleStyle;

    .line 46
    move-result-object v10

    .line 47
    new-array v11, v1, [Lmiuix/animation/base/AnimConfig;

    .line 49
    new-instance v12, Lmiuix/animation/base/AnimConfig;

    .line 51
    invoke-direct {v12}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 54
    new-array v13, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 56
    new-instance v14, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;

    .line 58
    move-object v0, v14

    .line 59
    move-object v1, p0

    .line 60
    move v2, v7

    .line 61
    move v3, v6

    .line 62
    move/from16 v4, p1

    .line 64
    move/from16 v5, p2

    .line 66
    invoke-direct/range {v0 .. v5}, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;-><init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;IIII)V

    .line 69
    aput-object v14, v13, v9

    .line 71
    invoke-virtual {v12, v13}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 74
    move-result-object v0

    .line 75
    aput-object v0, v11, v9

    .line 77
    invoke-interface {v10, v11}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 80
    :cond_4f
    add-int/lit8 v7, v7, 0x1

    .line 82
    goto :goto_7

    .line 83
    :cond_52
    move-object v8, p0

    .line 84
    return-void
.end method
