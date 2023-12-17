.class public Landroidx/appcompat/widget/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ContentFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ContentFrameLayout$a;
    }
.end annotation


# instance fields
.field public a:Landroid/util/TypedValue;

.field public b:Landroid/util/TypedValue;

.field public c:Landroid/util/TypedValue;

.field public d:Landroid/util/TypedValue;

.field public e:Landroid/util/TypedValue;

.field public f:Landroid/util/TypedValue;

.field public final g:Landroid/graphics/Rect;

.field public h:Landroidx/appcompat/widget/ContentFrameLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iput-object p1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    .line 12
    return-void
.end method


# virtual methods
.method public getFixedHeightMajor()Landroid/util/TypedValue;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    .line 14
    return-object v0
.end method

.method public getFixedHeightMinor()Landroid/util/TypedValue;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    .line 14
    return-object v0
.end method

.method public getFixedWidthMajor()Landroid/util/TypedValue;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    .line 14
    return-object v0
.end method

.method public getFixedWidthMinor()Landroid/util/TypedValue;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    .line 14
    return-object v0
.end method

.method public getMinWidthMajor()Landroid/util/TypedValue;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->a:Landroid/util/TypedValue;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->a:Landroid/util/TypedValue;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->a:Landroid/util/TypedValue;

    .line 14
    return-object v0
.end method

.method public getMinWidthMinor()Landroid/util/TypedValue;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    .line 14
    return-object v0
.end method

.method public final onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout$a;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    :cond_a
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout$a;

    .line 6
    if-eqz v0, :cond_44

    .line 8
    check-cast v0, Landroidx/appcompat/app/m;

    .line 10
    iget-object v0, v0, Landroidx/appcompat/app/m;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 12
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/c0;

    .line 14
    if-eqz v1, :cond_12

    .line 16
    invoke-interface {v1}, Landroidx/appcompat/widget/c0;->i()V

    .line 19
    :cond_12
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    .line 21
    if-eqz v1, :cond_31

    .line 23
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 25
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    iget-object v2, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Landroidx/appcompat/app/n;

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 34
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    .line 36
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2e

    .line 42
    :try_start_29
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    .line 44
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_2e} :catch_2e

    .line 47
    :catch_2e
    :cond_2e
    const/4 v1, 0x0

    .line 48
    iput-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    .line 50
    :cond_31
    iget-object v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 52
    if-eqz v1, :cond_38

    .line 54
    invoke-virtual {v1}, Lm0/o0;->b()V

    .line 57
    :cond_38
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 61
    move-result-object v0

    .line 62
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 64
    if-eqz v0, :cond_44

    .line 66
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->close()V

    .line 69
    :cond_44
    return-void
.end method

.method public final onMeasure(II)V
    .registers 16

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object v0

    .line 13
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 15
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-ge v1, v2, :cond_16

    .line 21
    move v1, v3

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v1, v4

    .line 24
    :goto_17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 27
    move-result v2

    .line 28
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x6

    .line 33
    const/4 v7, 0x5

    .line 34
    const/high16 v8, -0x80000000

    .line 36
    const/high16 v9, 0x40000000  # 2.0f

    .line 38
    if-ne v2, v8, :cond_60

    .line 40
    if-eqz v1, :cond_2c

    .line 42
    iget-object v10, p0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    iget-object v10, p0, Landroidx/appcompat/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    .line 47
    :goto_2e
    if-eqz v10, :cond_60

    .line 49
    iget v11, v10, Landroid/util/TypedValue;->type:I

    .line 51
    if-eqz v11, :cond_60

    .line 53
    if-ne v11, v7, :cond_3c

    .line 55
    invoke-virtual {v10, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 58
    move-result v10

    .line 59
    :goto_3a
    float-to-int v10, v10

    .line 60
    goto :goto_48

    .line 61
    :cond_3c
    if-ne v11, v6, :cond_47

    .line 63
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 65
    int-to-float v12, v11

    .line 66
    int-to-float v11, v11

    .line 67
    invoke-virtual {v10, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 70
    move-result v10

    .line 71
    goto :goto_3a

    .line 72
    :cond_47
    move v10, v4

    .line 73
    :goto_48
    if-lez v10, :cond_60

    .line 75
    iget-object v11, p0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    .line 77
    iget v12, v11, Landroid/graphics/Rect;->left:I

    .line 79
    iget v11, v11, Landroid/graphics/Rect;->right:I

    .line 81
    add-int/2addr v12, v11

    .line 82
    sub-int/2addr v10, v12

    .line 83
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 86
    move-result p1

    .line 87
    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    .line 90
    move-result p1

    .line 91
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 94
    move-result p1

    .line 95
    move v10, v3

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    move v10, v4

    .line 98
    :goto_61
    if-ne v5, v8, :cond_9a

    .line 100
    if-eqz v1, :cond_68

    .line 102
    iget-object v5, p0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    .line 104
    goto :goto_6a

    .line 105
    :cond_68
    iget-object v5, p0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    .line 107
    :goto_6a
    if-eqz v5, :cond_9a

    .line 109
    iget v11, v5, Landroid/util/TypedValue;->type:I

    .line 111
    if-eqz v11, :cond_9a

    .line 113
    if-ne v11, v7, :cond_78

    .line 115
    invoke-virtual {v5, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 118
    move-result v5

    .line 119
    :goto_76
    float-to-int v5, v5

    .line 120
    goto :goto_84

    .line 121
    :cond_78
    if-ne v11, v6, :cond_83

    .line 123
    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 125
    int-to-float v12, v11

    .line 126
    int-to-float v11, v11

    .line 127
    invoke-virtual {v5, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 130
    move-result v5

    .line 131
    goto :goto_76

    .line 132
    :cond_83
    move v5, v4

    .line 133
    :goto_84
    if-lez v5, :cond_9a

    .line 135
    iget-object v11, p0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    .line 137
    iget v12, v11, Landroid/graphics/Rect;->top:I

    .line 139
    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    .line 141
    add-int/2addr v12, v11

    .line 142
    sub-int/2addr v5, v12

    .line 143
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 146
    move-result p2

    .line 147
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    .line 150
    move-result p2

    .line 151
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 154
    move-result p2

    .line 155
    :cond_9a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 161
    move-result p1

    .line 162
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 165
    move-result v5

    .line 166
    if-nez v10, :cond_db

    .line 168
    if-ne v2, v8, :cond_db

    .line 170
    if-eqz v1, :cond_ae

    .line 172
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    .line 174
    goto :goto_b0

    .line 175
    :cond_ae
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->a:Landroid/util/TypedValue;

    .line 177
    :goto_b0
    if-eqz v1, :cond_db

    .line 179
    iget v2, v1, Landroid/util/TypedValue;->type:I

    .line 181
    if-eqz v2, :cond_db

    .line 183
    if-ne v2, v7, :cond_be

    .line 185
    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 188
    move-result v0

    .line 189
    :goto_bc
    float-to-int v0, v0

    .line 190
    goto :goto_ca

    .line 191
    :cond_be
    if-ne v2, v6, :cond_c9

    .line 193
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 195
    int-to-float v2, v0

    .line 196
    int-to-float v0, v0

    .line 197
    invoke-virtual {v1, v2, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 200
    move-result v0

    .line 201
    goto :goto_bc

    .line 202
    :cond_c9
    move v0, v4

    .line 203
    :goto_ca
    if-lez v0, :cond_d4

    .line 205
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    .line 207
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 209
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 211
    add-int/2addr v2, v1

    .line 212
    sub-int/2addr v0, v2

    .line 213
    :cond_d4
    if-ge p1, v0, :cond_db

    .line 215
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 218
    move-result v5

    .line 219
    goto :goto_dc

    .line 220
    :cond_db
    move v3, v4

    .line 221
    :goto_dc
    if-eqz v3, :cond_e1

    .line 223
    invoke-super {p0, v5, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 226
    :cond_e1
    return-void
.end method

.method public setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout$a;

    .line 3
    return-void
.end method
