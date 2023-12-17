.class public final Landroidx/viewpager2/widget/f;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "OriginalScrollEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/f$a;
    }
.end annotation


# instance fields
.field public a:Landroidx/viewpager2/widget/OriginalViewPager2$i;

.field public final b:Landroidx/viewpager2/widget/OriginalViewPager2;

.field public final c:Lmiuix/recyclerview/widget/RecyclerView;

.field public final d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public e:I

.field public f:I

.field public g:Landroidx/viewpager2/widget/f$a;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/viewpager2/widget/f;->b:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 6
    iget-object p1, p1, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 8
    iput-object p1, p0, Landroidx/viewpager2/widget/f;->c:Lmiuix/recyclerview/widget/RecyclerView;

    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    iput-object p1, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 18
    new-instance p1, Landroidx/viewpager2/widget/f$a;

    .line 20
    invoke-direct {p1}, Landroidx/viewpager2/widget/f$a;-><init>()V

    .line 23
    iput-object p1, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 25
    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->c()V

    .line 28
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/f;->a:Landroidx/viewpager2/widget/OriginalViewPager2$i;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$i;->onPageSelected(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public final b(I)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/viewpager2/widget/f;->e:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_a

    .line 6
    iget v0, p0, Landroidx/viewpager2/widget/f;->f:I

    .line 8
    if-nez v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    iget v0, p0, Landroidx/viewpager2/widget/f;->f:I

    .line 13
    if-ne v0, p1, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    iput p1, p0, Landroidx/viewpager2/widget/f;->f:I

    .line 18
    iget-object v0, p0, Landroidx/viewpager2/widget/f;->a:Landroidx/viewpager2/widget/OriginalViewPager2$i;

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$i;->onPageScrollStateChanged(I)V

    .line 25
    :cond_18
    return-void
.end method

.method public final c()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/viewpager2/widget/f;->e:I

    .line 4
    iput v0, p0, Landroidx/viewpager2/widget/f;->f:I

    .line 6
    iget-object v1, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 8
    const/4 v2, -0x1

    .line 9
    iput v2, v1, Landroidx/viewpager2/widget/f$a;->a:I

    .line 11
    const/4 v3, 0x0

    .line 12
    iput v3, v1, Landroidx/viewpager2/widget/f$a;->b:F

    .line 14
    iput v0, v1, Landroidx/viewpager2/widget/f$a;->c:I

    .line 16
    iput v2, p0, Landroidx/viewpager2/widget/f;->h:I

    .line 18
    iput v2, p0, Landroidx/viewpager2/widget/f;->i:I

    .line 20
    iput-boolean v0, p0, Landroidx/viewpager2/widget/f;->j:Z

    .line 22
    iput-boolean v0, p0, Landroidx/viewpager2/widget/f;->k:Z

    .line 24
    iput-boolean v0, p0, Landroidx/viewpager2/widget/f;->m:Z

    .line 26
    iput-boolean v0, p0, Landroidx/viewpager2/widget/f;->l:Z

    .line 28
    return-void
.end method

.method public final d(Z)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Landroidx/viewpager2/widget/f;->m:Z

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_7

    .line 6
    const/4 p1, 0x4

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    move p1, v0

    .line 9
    :goto_8
    iput p1, p0, Landroidx/viewpager2/widget/f;->e:I

    .line 11
    iget p1, p0, Landroidx/viewpager2/widget/f;->i:I

    .line 13
    const/4 v1, -0x1

    .line 14
    if-eq p1, v1, :cond_14

    .line 16
    iput p1, p0, Landroidx/viewpager2/widget/f;->h:I

    .line 18
    iput v1, p0, Landroidx/viewpager2/widget/f;->i:I

    .line 20
    goto :goto_20

    .line 21
    :cond_14
    iget p1, p0, Landroidx/viewpager2/widget/f;->h:I

    .line 23
    if-ne p1, v1, :cond_20

    .line 25
    iget-object p1, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 30
    move-result p1

    .line 31
    iput p1, p0, Landroidx/viewpager2/widget/f;->h:I

    .line 33
    :cond_20
    :goto_20
    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/f;->b(I)V

    .line 36
    return-void
.end method

.method public final e()V
    .registers 14

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 3
    iget-object v1, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 8
    move-result v1

    .line 9
    iput v1, v0, Landroidx/viewpager2/widget/f$a;->a:I

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, -0x1

    .line 14
    if-ne v1, v4, :cond_16

    .line 16
    iput v4, v0, Landroidx/viewpager2/widget/f$a;->a:I

    .line 18
    iput v3, v0, Landroidx/viewpager2/widget/f$a;->b:F

    .line 20
    iput v2, v0, Landroidx/viewpager2/widget/f$a;->c:I

    .line 22
    return-void

    .line 23
    :cond_16
    iget-object v5, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 25
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_25

    .line 31
    iput v4, v0, Landroidx/viewpager2/widget/f$a;->a:I

    .line 33
    iput v3, v0, Landroidx/viewpager2/widget/f$a;->b:F

    .line 35
    iput v2, v0, Landroidx/viewpager2/widget/f$a;->c:I

    .line 37
    return-void

    .line 38
    :cond_25
    iget-object v4, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 40
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    .line 43
    move-result v4

    .line 44
    iget-object v5, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 46
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    .line 49
    move-result v5

    .line 50
    iget-object v6, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 52
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    .line 55
    move-result v6

    .line 56
    iget-object v7, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 58
    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    .line 61
    move-result v7

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    move-result-object v8

    .line 66
    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 68
    if-eqz v9, :cond_53

    .line 70
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 72
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 74
    add-int/2addr v4, v9

    .line 75
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 77
    add-int/2addr v5, v9

    .line 78
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 80
    add-int/2addr v6, v9

    .line 81
    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 83
    add-int/2addr v7, v8

    .line 84
    :cond_53
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 87
    move-result v8

    .line 88
    add-int/2addr v8, v6

    .line 89
    add-int/2addr v8, v7

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 93
    move-result v7

    .line 94
    add-int/2addr v7, v4

    .line 95
    add-int/2addr v7, v5

    .line 96
    iget-object v5, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 98
    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 101
    move-result v5

    .line 102
    const/4 v9, 0x1

    .line 103
    if-nez v5, :cond_6a

    .line 105
    move v5, v9

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move v5, v2

    .line 108
    :goto_6b
    if-eqz v5, :cond_84

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 113
    move-result v1

    .line 114
    sub-int/2addr v1, v4

    .line 115
    iget-object v4, p0, Landroidx/viewpager2/widget/f;->c:Lmiuix/recyclerview/widget/RecyclerView;

    .line 117
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    .line 120
    move-result v4

    .line 121
    sub-int/2addr v1, v4

    .line 122
    iget-object v4, p0, Landroidx/viewpager2/widget/f;->b:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 124
    invoke-virtual {v4}, Landroidx/viewpager2/widget/OriginalViewPager2;->isRtl()Z

    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_82

    .line 130
    neg-int v1, v1

    .line 131
    :cond_82
    move v8, v7

    .line 132
    goto :goto_90

    .line 133
    :cond_84
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 136
    move-result v1

    .line 137
    sub-int/2addr v1, v6

    .line 138
    iget-object v4, p0, Landroidx/viewpager2/widget/f;->c:Lmiuix/recyclerview/widget/RecyclerView;

    .line 140
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 143
    move-result v4

    .line 144
    sub-int/2addr v1, v4

    .line 145
    :goto_90
    neg-int v1, v1

    .line 146
    iput v1, v0, Landroidx/viewpager2/widget/f$a;->c:I

    .line 148
    if-gez v1, :cond_184

    .line 150
    new-instance v1, Landroidx/viewpager2/widget/b;

    .line 152
    iget-object v3, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 154
    invoke-direct {v1, v3}, Landroidx/viewpager2/widget/b;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 157
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_a4

    .line 163
    goto/16 :goto_135

    .line 165
    :cond_a4
    iget-object v4, v1, Landroidx/viewpager2/widget/b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 167
    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_ae

    .line 173
    move v4, v9

    .line 174
    goto :goto_af

    .line 175
    :cond_ae
    move v4, v2

    .line 176
    :goto_af
    const/4 v5, 0x2

    .line 177
    new-array v6, v5, [I

    .line 179
    aput v5, v6, v9

    .line 181
    aput v3, v6, v2

    .line 183
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 185
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 188
    move-result-object v5

    .line 189
    check-cast v5, [[I

    .line 191
    move v6, v2

    .line 192
    :goto_bf
    if-ge v6, v3, :cond_109

    .line 194
    iget-object v7, v1, Landroidx/viewpager2/widget/b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 196
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 199
    move-result-object v7

    .line 200
    if-eqz v7, :cond_101

    .line 202
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 205
    move-result-object v8

    .line 206
    instance-of v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 208
    if-eqz v10, :cond_d4

    .line 210
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 212
    goto :goto_d6

    .line 213
    :cond_d4
    sget-object v8, Landroidx/viewpager2/widget/b;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 215
    :goto_d6
    aget-object v10, v5, v6

    .line 217
    if-eqz v4, :cond_e1

    .line 219
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 222
    move-result v11

    .line 223
    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 225
    goto :goto_e7

    .line 226
    :cond_e1
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 229
    move-result v11

    .line 230
    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 232
    :goto_e7
    sub-int/2addr v11, v12

    .line 233
    aput v11, v10, v2

    .line 235
    aget-object v10, v5, v6

    .line 237
    if-eqz v4, :cond_f5

    .line 239
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 242
    move-result v7

    .line 243
    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 245
    goto :goto_fb

    .line 246
    :cond_f5
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 249
    move-result v7

    .line 250
    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 252
    :goto_fb
    add-int/2addr v7, v8

    .line 253
    aput v7, v10, v9

    .line 255
    add-int/lit8 v6, v6, 0x1

    .line 257
    goto :goto_bf

    .line 258
    :cond_101
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 260
    const-string v1, "null view contained in the view hierarchy"

    .line 262
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 265
    throw v0

    .line 266
    :cond_109
    new-instance v4, Landroidx/viewpager2/widget/a;

    .line 268
    invoke-direct {v4}, Landroidx/viewpager2/widget/a;-><init>()V

    .line 271
    invoke-static {v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 274
    move v4, v9

    .line 275
    :goto_112
    if-ge v4, v3, :cond_124

    .line 277
    add-int/lit8 v6, v4, -0x1

    .line 279
    aget-object v6, v5, v6

    .line 281
    aget v6, v6, v9

    .line 283
    aget-object v7, v5, v4

    .line 285
    aget v7, v7, v2

    .line 287
    if-eq v6, v7, :cond_121

    .line 289
    goto :goto_137

    .line 290
    :cond_121
    add-int/lit8 v4, v4, 0x1

    .line 292
    goto :goto_112

    .line 293
    :cond_124
    aget-object v4, v5, v2

    .line 295
    aget v6, v4, v9

    .line 297
    aget v4, v4, v2

    .line 299
    sub-int/2addr v6, v4

    .line 300
    if-gtz v4, :cond_137

    .line 302
    sub-int/2addr v3, v9

    .line 303
    aget-object v3, v5, v3

    .line 305
    aget v3, v3, v9

    .line 307
    if-ge v3, v6, :cond_135

    .line 309
    goto :goto_137

    .line 310
    :cond_135
    :goto_135
    move v3, v9

    .line 311
    goto :goto_138

    .line 312
    :cond_137
    :goto_137
    move v3, v2

    .line 313
    :goto_138
    if-eqz v3, :cond_142

    .line 315
    iget-object v3, v1, Landroidx/viewpager2/widget/b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 317
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 320
    move-result v3

    .line 321
    if-gt v3, v9, :cond_161

    .line 323
    :cond_142
    iget-object v3, v1, Landroidx/viewpager2/widget/b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 325
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 328
    move-result v3

    .line 329
    move v4, v2

    .line 330
    :goto_149
    if-ge v4, v3, :cond_15c

    .line 332
    iget-object v5, v1, Landroidx/viewpager2/widget/b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 334
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 337
    move-result-object v5

    .line 338
    invoke-static {v5}, Landroidx/viewpager2/widget/b;->a(Landroid/view/View;)Z

    .line 341
    move-result v5

    .line 342
    if-eqz v5, :cond_159

    .line 344
    move v1, v9

    .line 345
    goto :goto_15d

    .line 346
    :cond_159
    add-int/lit8 v4, v4, 0x1

    .line 348
    goto :goto_149

    .line 349
    :cond_15c
    move v1, v2

    .line 350
    :goto_15d
    if-eqz v1, :cond_161

    .line 352
    move v1, v9

    .line 353
    goto :goto_162

    .line 354
    :cond_161
    move v1, v2

    .line 355
    :goto_162
    if-eqz v1, :cond_16c

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 359
    const-string v1, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    .line 361
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 364
    throw v0

    .line 365
    :cond_16c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 367
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 369
    new-array v4, v9, [Ljava/lang/Object;

    .line 371
    iget v0, v0, Landroidx/viewpager2/widget/f$a;->c:I

    .line 373
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    move-result-object v0

    .line 377
    aput-object v0, v4, v2

    .line 379
    const-string v0, "Page can only be offset by a positive amount, not by %d"

    .line 381
    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 384
    move-result-object v0

    .line 385
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 388
    throw v1

    .line 389
    :cond_184
    if-nez v8, :cond_187

    .line 391
    goto :goto_18b

    .line 392
    :cond_187
    int-to-float v1, v1

    .line 393
    int-to-float v2, v8

    .line 394
    div-float v3, v1, v2

    .line 396
    :goto_18b
    iput v3, v0, Landroidx/viewpager2/widget/f$a;->b:F

    .line 398
    return-void
.end method

.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 9

    .line 1
    iget p1, p0, Landroidx/viewpager2/widget/f;->e:I

    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-ne p1, v0, :cond_a

    .line 7
    iget v2, p0, Landroidx/viewpager2/widget/f;->f:I

    .line 9
    if-eq v2, v0, :cond_10

    .line 11
    :cond_a
    if-ne p2, v0, :cond_10

    .line 13
    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/f;->d(Z)V

    .line 16
    return-void

    .line 17
    :cond_10
    const/4 v2, 0x4

    .line 18
    if-eq p1, v0, :cond_18

    .line 20
    if-ne p1, v2, :cond_16

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    move v3, v1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    :goto_18
    move v3, v0

    .line 26
    :goto_19
    const/4 v4, 0x2

    .line 27
    if-eqz v3, :cond_28

    .line 29
    if-ne p2, v4, :cond_28

    .line 31
    iget-boolean p1, p0, Landroidx/viewpager2/widget/f;->k:Z

    .line 33
    if-eqz p1, :cond_27

    .line 35
    invoke-virtual {p0, v4}, Landroidx/viewpager2/widget/f;->b(I)V

    .line 38
    iput-boolean v0, p0, Landroidx/viewpager2/widget/f;->j:Z

    .line 40
    :cond_27
    return-void

    .line 41
    :cond_28
    if-eq p1, v0, :cond_2f

    .line 43
    if-ne p1, v2, :cond_2d

    .line 45
    goto :goto_2f

    .line 46
    :cond_2d
    move p1, v1

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    :goto_2f
    move p1, v0

    .line 49
    :goto_30
    const/4 v2, -0x1

    .line 50
    if-eqz p1, :cond_64

    .line 52
    if-nez p2, :cond_64

    .line 54
    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->e()V

    .line 57
    iget-boolean p1, p0, Landroidx/viewpager2/widget/f;->k:Z

    .line 59
    if-nez p1, :cond_4b

    .line 61
    iget-object p1, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 63
    iget p1, p1, Landroidx/viewpager2/widget/f$a;->a:I

    .line 65
    if-eq p1, v2, :cond_5c

    .line 67
    const/4 v3, 0x0

    .line 68
    iget-object v5, p0, Landroidx/viewpager2/widget/f;->a:Landroidx/viewpager2/widget/OriginalViewPager2$i;

    .line 70
    if-eqz v5, :cond_5c

    .line 72
    invoke-virtual {v5, p1, v3, v1}, Landroidx/viewpager2/widget/OriginalViewPager2$i;->onPageScrolled(IFI)V

    .line 75
    goto :goto_5c

    .line 76
    :cond_4b
    iget-object p1, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 78
    iget v3, p1, Landroidx/viewpager2/widget/f$a;->c:I

    .line 80
    if-nez v3, :cond_5b

    .line 82
    iget v3, p0, Landroidx/viewpager2/widget/f;->h:I

    .line 84
    iget p1, p1, Landroidx/viewpager2/widget/f$a;->a:I

    .line 86
    if-eq v3, p1, :cond_5c

    .line 88
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/f;->a(I)V

    .line 91
    goto :goto_5c

    .line 92
    :cond_5b
    move v0, v1

    .line 93
    :cond_5c
    :goto_5c
    if-eqz v0, :cond_64

    .line 95
    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/f;->b(I)V

    .line 98
    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->c()V

    .line 101
    :cond_64
    iget p1, p0, Landroidx/viewpager2/widget/f;->e:I

    .line 103
    if-ne p1, v4, :cond_89

    .line 105
    if-nez p2, :cond_89

    .line 107
    iget-boolean p1, p0, Landroidx/viewpager2/widget/f;->l:Z

    .line 109
    if-eqz p1, :cond_89

    .line 111
    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->e()V

    .line 114
    iget-object p1, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 116
    iget p2, p1, Landroidx/viewpager2/widget/f$a;->c:I

    .line 118
    if-nez p2, :cond_89

    .line 120
    iget p2, p0, Landroidx/viewpager2/widget/f;->i:I

    .line 122
    iget p1, p1, Landroidx/viewpager2/widget/f$a;->a:I

    .line 124
    if-eq p2, p1, :cond_83

    .line 126
    if-ne p1, v2, :cond_80

    .line 128
    move p1, v1

    .line 129
    :cond_80
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/f;->a(I)V

    .line 132
    :cond_83
    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/f;->b(I)V

    .line 135
    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->c()V

    .line 138
    :cond_89
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 8

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/viewpager2/widget/f;->k:Z

    .line 4
    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->e()V

    .line 7
    iget-boolean v0, p0, Landroidx/viewpager2/widget/f;->j:Z

    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_3d

    .line 13
    iput-boolean v2, p0, Landroidx/viewpager2/widget/f;->j:Z

    .line 15
    if-gtz p3, :cond_22

    .line 17
    if-nez p3, :cond_20

    .line 19
    if-gez p2, :cond_16

    .line 21
    move p2, p1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move p2, v2

    .line 24
    :goto_17
    iget-object p3, p0, Landroidx/viewpager2/widget/f;->b:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 26
    invoke-virtual {p3}, Landroidx/viewpager2/widget/OriginalViewPager2;->isRtl()Z

    .line 29
    move-result p3

    .line 30
    if-ne p2, p3, :cond_20

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    move p2, v2

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    :goto_22
    move p2, p1

    .line 36
    :goto_23
    if-eqz p2, :cond_2f

    .line 38
    iget-object p2, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 40
    iget p3, p2, Landroidx/viewpager2/widget/f$a;->c:I

    .line 42
    if-eqz p3, :cond_2f

    .line 44
    iget p2, p2, Landroidx/viewpager2/widget/f$a;->a:I

    .line 46
    add-int/2addr p2, p1

    .line 47
    goto :goto_33

    .line 48
    :cond_2f
    iget-object p2, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 50
    iget p2, p2, Landroidx/viewpager2/widget/f$a;->a:I

    .line 52
    :goto_33
    iput p2, p0, Landroidx/viewpager2/widget/f;->i:I

    .line 54
    iget p3, p0, Landroidx/viewpager2/widget/f;->h:I

    .line 56
    if-eq p3, p2, :cond_4b

    .line 58
    invoke-virtual {p0, p2}, Landroidx/viewpager2/widget/f;->a(I)V

    .line 61
    goto :goto_4b

    .line 62
    :cond_3d
    iget p2, p0, Landroidx/viewpager2/widget/f;->e:I

    .line 64
    if-nez p2, :cond_4b

    .line 66
    iget-object p2, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 68
    iget p2, p2, Landroidx/viewpager2/widget/f$a;->a:I

    .line 70
    if-ne p2, v1, :cond_48

    .line 72
    move p2, v2

    .line 73
    :cond_48
    invoke-virtual {p0, p2}, Landroidx/viewpager2/widget/f;->a(I)V

    .line 76
    :cond_4b
    :goto_4b
    iget-object p2, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 78
    iget p3, p2, Landroidx/viewpager2/widget/f$a;->a:I

    .line 80
    if-ne p3, v1, :cond_52

    .line 82
    move p3, v2

    .line 83
    :cond_52
    iget v0, p2, Landroidx/viewpager2/widget/f$a;->b:F

    .line 85
    iget p2, p2, Landroidx/viewpager2/widget/f$a;->c:I

    .line 87
    iget-object v3, p0, Landroidx/viewpager2/widget/f;->a:Landroidx/viewpager2/widget/OriginalViewPager2$i;

    .line 89
    if-eqz v3, :cond_5d

    .line 91
    invoke-virtual {v3, p3, v0, p2}, Landroidx/viewpager2/widget/OriginalViewPager2$i;->onPageScrolled(IFI)V

    .line 94
    :cond_5d
    iget-object p2, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 96
    iget p3, p2, Landroidx/viewpager2/widget/f$a;->a:I

    .line 98
    iget v0, p0, Landroidx/viewpager2/widget/f;->i:I

    .line 100
    if-eq p3, v0, :cond_67

    .line 102
    if-ne v0, v1, :cond_75

    .line 104
    :cond_67
    iget p2, p2, Landroidx/viewpager2/widget/f$a;->c:I

    .line 106
    if-nez p2, :cond_75

    .line 108
    iget p2, p0, Landroidx/viewpager2/widget/f;->f:I

    .line 110
    if-eq p2, p1, :cond_75

    .line 112
    invoke-virtual {p0, v2}, Landroidx/viewpager2/widget/f;->b(I)V

    .line 115
    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->c()V

    .line 118
    :cond_75
    return-void
.end method
