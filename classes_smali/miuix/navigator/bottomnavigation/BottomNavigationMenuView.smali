.class public Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;
.super Lmiuix/navigator/navigation/NavigationBarMenuView;
.source "BottomNavigationMenuView.java"


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemHorizontalTranslationEnabled:Z

.field private itemMargin:I

.field private final itemMarginDp:I

.field private paddingHorizontal:I

.field private final paddingHorizontalDefaultDp:I

.field private final tempChildWidths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V

    .line 4
    const/16 p1, 0xb

    .line 6
    iput p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->itemMarginDp:I

    .line 8
    const/16 p1, 0x8

    .line 10
    iput p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->paddingHorizontalDefaultDp:I

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    .line 19
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 21
    const/4 v0, -0x2

    .line 22
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 25
    const/16 v0, 0x11

    .line 27
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object p1

    .line 36
    sget v0, Lmiuix/navigator/R$dimen;->miuix_design_bottom_navigation_item_max_width:I

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 44
    sget v0, Lmiuix/navigator/R$dimen;->miuix_design_bottom_navigation_item_min_width:I

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 52
    sget v0, Lmiuix/navigator/R$dimen;->miuix_design_bottom_navigation_active_item_max_width:I

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 60
    sget v0, Lmiuix/navigator/R$dimen;->miuix_design_bottom_navigation_active_item_min_width:I

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    move-result p1

    .line 66
    iput p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 68
    return-void
.end method


# virtual methods
.method public createNavigationBarItemView(Landroid/content/Context;)Lmiuix/navigator/navigation/NavigationBarItemView;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/navigator/bottomnavigation/BottomNavigationItemView;

    .line 3
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLayoutStyle()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, p1, v1}, Lmiuix/navigator/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;I)V

    .line 10
    return-object v0
.end method

.method public filterLeftoverView(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public hasBackgroundView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasBlurBackgroundView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    .line 3
    return v0
.end method

.method public onLayout(ZIIII)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result p1

    .line 5
    sub-int/2addr p4, p2

    .line 6
    sub-int/2addr p5, p3

    .line 7
    const/4 p2, 0x0

    .line 8
    move p3, p2

    .line 9
    move v0, p3

    .line 10
    :goto_9
    if-ge p3, p1, :cond_42

    .line 12
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 19
    move-result v2

    .line 20
    const/16 v3, 0x8

    .line 22
    if-ne v2, v3, :cond_18

    .line 24
    goto :goto_3f

    .line 25
    :cond_18
    if-lez p3, :cond_1d

    .line 27
    iget v2, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->itemMargin:I

    .line 29
    add-int/2addr v0, v2

    .line 30
    :cond_1d
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 32
    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x1

    .line 37
    if-ne v2, v3, :cond_32

    .line 39
    sub-int v2, p4, v0

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 44
    move-result v3

    .line 45
    sub-int v3, v2, v3

    .line 47
    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 50
    goto :goto_3a

    .line 51
    :cond_32
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 54
    move-result v2

    .line 55
    add-int/2addr v2, v0

    .line 56
    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 59
    :goto_3a
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    :goto_3f
    add-int/lit8 p3, p3, 0x1

    .line 66
    goto :goto_9

    .line 67
    :cond_42
    return-void
.end method

.method public onMeasure(II)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getMenu()Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_14

    .line 12
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v0

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v0, v1

    .line 22
    :goto_15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 37
    move-result-object v3

    .line 38
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 40
    const/high16 v4, 0x41300000  # 11.0f

    .line 42
    invoke-static {v3, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    .line 45
    move-result v4

    .line 46
    iput v4, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->itemMargin:I

    .line 48
    iget-object v4, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    .line 50
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 53
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->isLayoutInWideStyle()Z

    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_53

    .line 59
    const-wide v3, 0x3f8999999999999aL  # 0.0125

    .line 64
    int-to-double v5, v0

    .line 65
    mul-double/2addr v3, v5

    .line 66
    mul-double/2addr v3, v5

    .line 67
    const-wide v7, 0x3fbf5c28f5c28f5cL  # 0.1225

    .line 72
    mul-double/2addr v5, v7

    .line 73
    sub-double/2addr v3, v5

    .line 74
    const-wide v5, 0x3fd6b851eb851eb8L  # 0.355

    .line 79
    add-double/2addr v3, v5

    .line 80
    int-to-double v5, p1

    .line 81
    mul-double/2addr v3, v5

    .line 82
    double-to-int v3, v3

    .line 83
    goto :goto_59

    .line 84
    :cond_53
    const/high16 v4, 0x41000000  # 8.0f

    .line 86
    invoke-static {v3, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    .line 89
    move-result v3

    .line 90
    :goto_59
    iput v3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->paddingHorizontal:I

    .line 92
    mul-int/lit8 v3, v3, 0x2

    .line 94
    sub-int/2addr p1, v3

    .line 95
    iget v3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->itemMargin:I

    .line 97
    add-int/lit8 v4, v0, -0x1

    .line 99
    mul-int/2addr v4, v3

    .line 100
    sub-int/2addr p1, v4

    .line 101
    int-to-float v3, p1

    .line 102
    const/high16 v4, 0x3f800000  # 1.0f

    .line 104
    mul-float/2addr v3, v4

    .line 105
    int-to-float v4, v0

    .line 106
    div-float/2addr v3, v4

    .line 107
    float-to-int v3, v3

    .line 108
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 111
    move-result p2

    .line 112
    const/high16 v4, 0x40000000  # 2.0f

    .line 114
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 117
    move-result v5

    .line 118
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getLabelVisibilityMode()I

    .line 121
    move-result v6

    .line 122
    invoke-virtual {p0, v6, v0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->isShifting(II)Z

    .line 125
    move-result v6

    .line 126
    const/16 v7, 0x8

    .line 128
    if-eqz v6, :cond_d5

    .line 130
    invoke-virtual {p0}, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_d5

    .line 136
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getSelectedItemPosition()I

    .line 139
    move-result v6

    .line 140
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 147
    move-result v8

    .line 148
    if-eq v8, v7, :cond_9c

    .line 150
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 153
    move-result v8

    .line 154
    invoke-virtual {v6, v8, v5}, Landroid/view/View;->measure(II)V

    .line 157
    :cond_9c
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 160
    move-result v6

    .line 161
    if-eq v6, v7, :cond_a4

    .line 163
    const/4 v6, 0x1

    .line 164
    goto :goto_a5

    .line 165
    :cond_a4
    move v6, v1

    .line 166
    :goto_a5
    sub-int/2addr v0, v6

    .line 167
    mul-int v6, v0, v3

    .line 169
    sub-int/2addr p1, v3

    .line 170
    mul-int/2addr v0, v6

    .line 171
    sub-int/2addr p1, v0

    .line 172
    move v0, v1

    .line 173
    :goto_ac
    if-ge v0, v2, :cond_fa

    .line 175
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 178
    move-result-object v8

    .line 179
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 182
    move-result v8

    .line 183
    if-eq v8, v7, :cond_c8

    .line 185
    invoke-virtual {p0}, Lmiuix/navigator/navigation/NavigationBarMenuView;->getSelectedItemPosition()I

    .line 188
    move-result v8

    .line 189
    if-ne v0, v8, :cond_c0

    .line 191
    move v8, v3

    .line 192
    goto :goto_c1

    .line 193
    :cond_c0
    move v8, v6

    .line 194
    :goto_c1
    if-lez p1, :cond_c9

    .line 196
    add-int/lit8 v8, v8, 0x1

    .line 198
    add-int/lit8 p1, p1, -0x1

    .line 200
    goto :goto_c9

    .line 201
    :cond_c8
    move v8, v1

    .line 202
    :cond_c9
    :goto_c9
    iget-object v9, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    .line 204
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    move-result-object v8

    .line 208
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v0, v0, 0x1

    .line 213
    goto :goto_ac

    .line 214
    :cond_d5
    mul-int/2addr v0, v3

    .line 215
    sub-int/2addr p1, v0

    .line 216
    move v0, v1

    .line 217
    :goto_d8
    if-ge v0, v2, :cond_fa

    .line 219
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 222
    move-result-object v6

    .line 223
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 226
    move-result v6

    .line 227
    if-eq v6, v7, :cond_ed

    .line 229
    if-lez p1, :cond_eb

    .line 231
    add-int/lit8 v6, v3, 0x1

    .line 233
    add-int/lit8 p1, p1, -0x1

    .line 235
    goto :goto_ee

    .line 236
    :cond_eb
    move v6, v3

    .line 237
    goto :goto_ee

    .line 238
    :cond_ed
    move v6, v1

    .line 239
    :goto_ee
    iget-object v8, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    .line 241
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    move-result-object v6

    .line 245
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v0, v0, 0x1

    .line 250
    goto :goto_d8

    .line 251
    :cond_fa
    move p1, v1

    .line 252
    :goto_fb
    if-ge v1, v2, :cond_133

    .line 254
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 261
    move-result v3

    .line 262
    if-ne v3, v7, :cond_108

    .line 264
    goto :goto_130

    .line 265
    :cond_108
    iget-object v3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    .line 267
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 270
    move-result-object v3

    .line 271
    check-cast v3, Ljava/lang/Integer;

    .line 273
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 276
    move-result v3

    .line 277
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 280
    move-result v3

    .line 281
    invoke-virtual {v0, v3, v5}, Landroid/view/View;->measure(II)V

    .line 284
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 291
    move-result v6

    .line 292
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 294
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 297
    move-result v0

    .line 298
    add-int/2addr v0, p1

    .line 299
    if-lez v1, :cond_12f

    .line 301
    iget p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->itemMargin:I

    .line 303
    add-int/2addr v0, p1

    .line 304
    :cond_12f
    move p1, v0

    .line 305
    :goto_130
    add-int/lit8 v1, v1, 0x1

    .line 307
    goto :goto_fb

    .line 308
    :cond_133
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 311
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    .line 3
    return-void
.end method
