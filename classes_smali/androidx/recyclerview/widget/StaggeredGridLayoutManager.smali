.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$x$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    }
.end annotation


# instance fields
.field public a:I

.field public b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

.field public c:Landroidx/recyclerview/widget/p;

.field public d:Landroidx/recyclerview/widget/p;

.field public e:I

.field public f:I

.field public final g:Landroidx/recyclerview/widget/j;

.field public h:Z

.field public i:Z

.field public j:Ljava/util/BitSet;

.field public k:I

.field public l:I

.field public m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

.field public r:I

.field public final s:Landroid/graphics/Rect;

.field public final v:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

.field public w:Z

.field public x:Z

.field public y:[I

.field public final z:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 10
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 14
    const/high16 v0, -0x80000000

    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 18
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 20
    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    .line 23
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 25
    const/4 v0, 0x2

    .line 26
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    .line 30
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 33
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 37
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    .line 40
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 42
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 47
    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    .line 49
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    .line 52
    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    .line 54
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    .line 57
    move-result-object p1

    .line 58
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    .line 60
    if-eqz p2, :cond_48

    .line 62
    if-ne p2, v0, :cond_40

    .line 64
    goto :goto_48

    .line 65
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    const-string p2, "invalid orientation."

    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1

    .line 73
    :cond_48
    :goto_48
    const/4 p3, 0x0

    .line 74
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 77
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 79
    if-ne p2, p4, :cond_51

    .line 81
    goto :goto_5e

    .line 82
    :cond_51
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 84
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 86
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 88
    iput-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 90
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 92
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 95
    :goto_5e
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    .line 97
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 100
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 102
    if-eq p2, p4, :cond_93

    .line 104
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 106
    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b()V

    .line 109
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 112
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 114
    new-instance p2, Ljava/util/BitSet;

    .line 116
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 118
    invoke-direct {p2, p4}, Ljava/util/BitSet;-><init>(I)V

    .line 121
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    .line 123
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 125
    new-array p2, p2, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 127
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 129
    :goto_80
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 131
    if-ge v1, p2, :cond_90

    .line 133
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 135
    new-instance p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 137
    invoke-direct {p4, p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    .line 140
    aput-object p4, p2, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    .line 144
    goto :goto_80

    .line 145
    :cond_90
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 148
    :cond_93
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 150
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 153
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 155
    if-eqz p2, :cond_a2

    .line 157
    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 159
    if-eq p3, p1, :cond_a2

    .line 161
    iput-boolean p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 163
    :cond_a2
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 165
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 168
    new-instance p1, Landroidx/recyclerview/widget/j;

    .line 170
    invoke-direct {p1}, Landroidx/recyclerview/widget/j;-><init>()V

    .line 173
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 175
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 177
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/p;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/p;

    .line 180
    move-result-object p1

    .line 181
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 183
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 185
    sub-int/2addr v0, p1

    .line 186
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/p;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/p;

    .line 189
    move-result-object p1

    .line 190
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 192
    return-void
.end method

.method public static y(III)I
    .registers 5

    .line 1
    if-nez p1, :cond_5

    .line 3
    if-nez p2, :cond_5

    .line 5
    return p0

    .line 6
    :cond_5
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    move-result v0

    .line 10
    const/high16 v1, -0x80000000

    .line 12
    if-eq v0, v1, :cond_13

    .line 14
    const/high16 v1, 0x40000000  # 2.0f

    .line 16
    if-ne v0, v1, :cond_12

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    return p0

    .line 20
    :cond_13
    :goto_13
    const/4 v1, 0x0

    .line 21
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 24
    move-result p0

    .line 25
    sub-int/2addr p0, p1

    .line 26
    sub-int/2addr p0, p2

    .line 27
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result p0

    .line 31
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 34
    move-result p0

    .line 35
    return p0
.end method


# virtual methods
.method public final a(I)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_e

    .line 9
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 11
    if-eqz p1, :cond_d

    .line 13
    move v1, v2

    .line 14
    :cond_d
    return v1

    .line 15
    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    .line 18
    move-result v0

    .line 19
    if-ge p1, v0, :cond_16

    .line 21
    move p1, v2

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    :goto_17
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 26
    if-eq p1, v0, :cond_1c

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v1, v2

    .line 30
    :goto_1d
    return v1
.end method

.method public final assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 8
    :cond_7
    return-void
.end method

.method public final b()Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_7c

    .line 8
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    .line 10
    if-eqz v0, :cond_7c

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isAttachedToWindow()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_12

    .line 18
    goto :goto_7c

    .line 19
    :cond_12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 21
    if-eqz v0, :cond_1f

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    .line 30
    move-result v2

    .line 31
    goto :goto_27

    .line 32
    :cond_1f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    .line 39
    move-result v2

    .line 40
    :goto_27
    const/4 v3, 0x1

    .line 41
    if-nez v0, :cond_3c

    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()Landroid/view/View;

    .line 46
    move-result-object v4

    .line 47
    if-eqz v4, :cond_3c

    .line 49
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 51
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b()V

    .line 54
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 57
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 60
    return v3

    .line 61
    :cond_3c
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 63
    if-nez v4, :cond_41

    .line 65
    return v1

    .line 66
    :cond_41
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 68
    const/4 v5, -0x1

    .line 69
    if-eqz v4, :cond_48

    .line 71
    move v4, v5

    .line 72
    goto :goto_49

    .line 73
    :cond_48
    move v4, v3

    .line 74
    :goto_49
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 76
    add-int/2addr v2, v3

    .line 77
    invoke-virtual {v6, v0, v2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->e(III)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 80
    move-result-object v6

    .line 81
    if-nez v6, :cond_5a

    .line 83
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 85
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 87
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)V

    .line 90
    return v1

    .line 91
    :cond_5a
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 93
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 95
    mul-int/2addr v4, v5

    .line 96
    invoke-virtual {v1, v0, v2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->e(III)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 99
    move-result-object v0

    .line 100
    if-nez v0, :cond_6d

    .line 102
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 104
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 106
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)V

    .line 109
    goto :goto_75

    .line 110
    :cond_6d
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 112
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 114
    add-int/2addr v0, v3

    .line 115
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)V

    .line 118
    :goto_75
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 121
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 124
    return v3

    .line 125
    :cond_7c
    :goto_7c
    return v1
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 23

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    move-object/from16 v8, p2

    .line 7
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    .line 9
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v10, 0x1

    .line 13
    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    .line 16
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 18
    iget-boolean v0, v0, Landroidx/recyclerview/widget/j;->i:Z

    .line 20
    if-eqz v0, :cond_20

    .line 22
    iget v0, v8, Landroidx/recyclerview/widget/j;->e:I

    .line 24
    if-ne v0, v10, :cond_1d

    .line 26
    const v13, 0x7fffffff

    .line 29
    goto :goto_30

    .line 30
    :cond_1d
    const/high16 v13, -0x80000000

    .line 32
    goto :goto_30

    .line 33
    :cond_20
    iget v0, v8, Landroidx/recyclerview/widget/j;->e:I

    .line 35
    if-ne v0, v10, :cond_2a

    .line 37
    iget v0, v8, Landroidx/recyclerview/widget/j;->g:I

    .line 39
    iget v1, v8, Landroidx/recyclerview/widget/j;->b:I

    .line 41
    add-int/2addr v0, v1

    .line 42
    goto :goto_2f

    .line 43
    :cond_2a
    iget v0, v8, Landroidx/recyclerview/widget/j;->f:I

    .line 45
    iget v1, v8, Landroidx/recyclerview/widget/j;->b:I

    .line 47
    sub-int/2addr v0, v1

    .line 48
    :goto_2f
    move v13, v0

    .line 49
    :goto_30
    iget v0, v8, Landroidx/recyclerview/widget/j;->e:I

    .line 51
    invoke-virtual {v6, v0, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v(II)V

    .line 54
    iget-boolean v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 56
    if-eqz v0, :cond_40

    .line 58
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 60
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 63
    move-result v0

    .line 64
    goto :goto_46

    .line 65
    :cond_40
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 67
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 70
    move-result v0

    .line 71
    :goto_46
    move v14, v0

    .line 72
    move v0, v9

    .line 73
    :goto_48
    iget v1, v8, Landroidx/recyclerview/widget/j;->c:I

    .line 75
    if-ltz v1, :cond_54

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 80
    move-result v2

    .line 81
    if-ge v1, v2, :cond_54

    .line 83
    move v1, v10

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    move v1, v9

    .line 86
    :goto_55
    const/4 v2, -0x1

    .line 87
    if-eqz v1, :cond_396

    .line 89
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 91
    iget-boolean v1, v1, Landroidx/recyclerview/widget/j;->i:Z

    .line 93
    if-nez v1, :cond_66

    .line 95
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    .line 97
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_396

    .line 103
    :cond_66
    iget v0, v8, Landroidx/recyclerview/widget/j;->c:I

    .line 105
    const-wide v3, 0x7fffffffffffffffL

    .line 110
    invoke-virtual {v7, v3, v4, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->k(JI)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 113
    move-result-object v0

    .line 114
    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 116
    iget v0, v8, Landroidx/recyclerview/widget/j;->c:I

    .line 118
    iget v1, v8, Landroidx/recyclerview/widget/j;->d:I

    .line 120
    add-int/2addr v0, v1

    .line 121
    iput v0, v8, Landroidx/recyclerview/widget/j;->c:I

    .line 123
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 126
    move-result-object v0

    .line 127
    move-object v5, v0

    .line 128
    check-cast v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 130
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$o;->getViewLayoutPosition()I

    .line 133
    move-result v0

    .line 134
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 136
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    .line 138
    if-eqz v1, :cond_92

    .line 140
    array-length v3, v1

    .line 141
    if-lt v0, v3, :cond_8f

    .line 143
    goto :goto_92

    .line 144
    :cond_8f
    aget v1, v1, v0

    .line 146
    goto :goto_93

    .line 147
    :cond_92
    :goto_92
    move v1, v2

    .line 148
    :goto_93
    if-ne v1, v2, :cond_97

    .line 150
    move v3, v10

    .line 151
    goto :goto_98

    .line 152
    :cond_97
    move v3, v9

    .line 153
    :goto_98
    if-eqz v3, :cond_103

    .line 155
    iget-boolean v1, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 157
    if-eqz v1, :cond_a3

    .line 159
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 161
    aget-object v1, v1, v9

    .line 163
    goto :goto_f7

    .line 164
    :cond_a3
    iget v1, v8, Landroidx/recyclerview/widget/j;->e:I

    .line 166
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(I)Z

    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_b2

    .line 172
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 174
    sub-int/2addr v1, v10

    .line 175
    move v4, v2

    .line 176
    move/from16 v16, v4

    .line 178
    goto :goto_b8

    .line 179
    :cond_b2
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 181
    move v4, v1

    .line 182
    move v1, v9

    .line 183
    move/from16 v16, v10

    .line 185
    :goto_b8
    iget v11, v8, Landroidx/recyclerview/widget/j;->e:I

    .line 187
    const/16 v17, 0x0

    .line 189
    if-ne v11, v10, :cond_db

    .line 191
    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 193
    invoke-virtual {v11}, Landroidx/recyclerview/widget/p;->k()I

    .line 196
    move-result v11

    .line 197
    const v12, 0x7fffffff

    .line 200
    :goto_c7
    if-eq v1, v4, :cond_f5

    .line 202
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 204
    aget-object v2, v2, v1

    .line 206
    invoke-virtual {v2, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h(I)I

    .line 209
    move-result v9

    .line 210
    if-ge v9, v12, :cond_d6

    .line 212
    move-object/from16 v17, v2

    .line 214
    move v12, v9

    .line 215
    :cond_d6
    add-int v1, v1, v16

    .line 217
    const/4 v2, -0x1

    .line 218
    const/4 v9, 0x0

    .line 219
    goto :goto_c7

    .line 220
    :cond_db
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 222
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p;->g()I

    .line 225
    move-result v2

    .line 226
    const/high16 v9, -0x80000000

    .line 228
    :goto_e3
    if-eq v1, v4, :cond_f5

    .line 230
    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 232
    aget-object v11, v11, v1

    .line 234
    invoke-virtual {v11, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(I)I

    .line 237
    move-result v12

    .line 238
    if-le v12, v9, :cond_f2

    .line 240
    move-object/from16 v17, v11

    .line 242
    move v9, v12

    .line 243
    :cond_f2
    add-int v1, v1, v16

    .line 245
    goto :goto_e3

    .line 246
    :cond_f5
    move-object/from16 v1, v17

    .line 248
    :goto_f7
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 250
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->c(I)V

    .line 253
    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    .line 255
    iget v4, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 257
    aput v4, v2, v0

    .line 259
    goto :goto_107

    .line 260
    :cond_103
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 262
    aget-object v1, v2, v1

    .line 264
    :goto_107
    move-object v9, v1

    .line 265
    iput-object v9, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 267
    iget v1, v8, Landroidx/recyclerview/widget/j;->e:I

    .line 269
    if-ne v1, v10, :cond_112

    .line 271
    invoke-virtual {v6, v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 274
    goto :goto_116

    .line 275
    :cond_112
    const/4 v1, 0x0

    .line 276
    invoke-virtual {v6, v15, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 279
    :goto_116
    iget-boolean v1, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 281
    if-eqz v1, :cond_158

    .line 283
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 285
    if-ne v1, v10, :cond_13b

    .line 287
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 292
    move-result v2

    .line 293
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 296
    move-result v4

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 300
    move-result v11

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 304
    move-result v12

    .line 305
    add-int/2addr v12, v11

    .line 306
    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 308
    invoke-static {v2, v4, v12, v11, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 311
    move-result v2

    .line 312
    invoke-virtual {v6, v15, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(Landroid/view/View;II)V

    .line 315
    goto :goto_1ab

    .line 316
    :cond_13b
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 319
    move-result v1

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 323
    move-result v2

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 327
    move-result v4

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 331
    move-result v11

    .line 332
    add-int/2addr v11, v4

    .line 333
    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 335
    invoke-static {v1, v2, v11, v4, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 338
    move-result v1

    .line 339
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    .line 341
    invoke-virtual {v6, v15, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(Landroid/view/View;II)V

    .line 344
    goto :goto_1ab

    .line 345
    :cond_158
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 347
    if-ne v1, v10, :cond_184

    .line 349
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 354
    move-result v2

    .line 355
    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 357
    const/4 v11, 0x0

    .line 358
    invoke-static {v1, v2, v11, v4, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 361
    move-result v1

    .line 362
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 365
    move-result v2

    .line 366
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 369
    move-result v4

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 373
    move-result v11

    .line 374
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 377
    move-result v12

    .line 378
    add-int/2addr v12, v11

    .line 379
    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 381
    invoke-static {v2, v4, v12, v11, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 384
    move-result v2

    .line 385
    invoke-virtual {v6, v15, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(Landroid/view/View;II)V

    .line 388
    goto :goto_1ab

    .line 389
    :cond_184
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 392
    move-result v1

    .line 393
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 396
    move-result v2

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 400
    move-result v4

    .line 401
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 404
    move-result v11

    .line 405
    add-int/2addr v11, v4

    .line 406
    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 408
    invoke-static {v1, v2, v11, v4, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 411
    move-result v1

    .line 412
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 414
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 417
    move-result v4

    .line 418
    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 420
    const/4 v12, 0x0

    .line 421
    invoke-static {v2, v4, v12, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 424
    move-result v2

    .line 425
    invoke-virtual {v6, v15, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n(Landroid/view/View;II)V

    .line 428
    :goto_1ab
    iget v1, v8, Landroidx/recyclerview/widget/j;->e:I

    .line 430
    if-ne v1, v10, :cond_1f8

    .line 432
    iget-boolean v1, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 434
    if-eqz v1, :cond_1b8

    .line 436
    invoke-virtual {v6, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(I)I

    .line 439
    move-result v1

    .line 440
    goto :goto_1bc

    .line 441
    :cond_1b8
    invoke-virtual {v9, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h(I)I

    .line 444
    move-result v1

    .line 445
    :goto_1bc
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 447
    invoke-virtual {v2, v15}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 450
    move-result v2

    .line 451
    add-int/2addr v2, v1

    .line 452
    if-eqz v3, :cond_1f5

    .line 454
    iget-boolean v4, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 456
    if-eqz v4, :cond_1f5

    .line 458
    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 460
    invoke-direct {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 463
    iget v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 465
    new-array v11, v11, [I

    .line 467
    iput-object v11, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    .line 469
    const/4 v11, 0x0

    .line 470
    :goto_1d5
    iget v12, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 472
    if-ge v11, v12, :cond_1eb

    .line 474
    iget-object v12, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    .line 476
    iget-object v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 478
    aget-object v10, v10, v11

    .line 480
    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h(I)I

    .line 483
    move-result v10

    .line 484
    sub-int v10, v1, v10

    .line 486
    aput v10, v12, v11

    .line 488
    add-int/lit8 v11, v11, 0x1

    .line 490
    const/4 v10, 0x1

    .line 491
    goto :goto_1d5

    .line 492
    :cond_1eb
    const/4 v10, -0x1

    .line 493
    iput v10, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 495
    iput v0, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 497
    iget-object v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 499
    invoke-virtual {v10, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 502
    :cond_1f5
    move v4, v1

    .line 503
    move v10, v2

    .line 504
    goto :goto_23f

    .line 505
    :cond_1f8
    iget-boolean v1, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 507
    if-eqz v1, :cond_201

    .line 509
    invoke-virtual {v6, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(I)I

    .line 512
    move-result v1

    .line 513
    goto :goto_205

    .line 514
    :cond_201
    invoke-virtual {v9, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(I)I

    .line 517
    move-result v1

    .line 518
    :goto_205
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 520
    invoke-virtual {v2, v15}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 523
    move-result v2

    .line 524
    sub-int v2, v1, v2

    .line 526
    if-eqz v3, :cond_23d

    .line 528
    iget-boolean v4, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 530
    if-eqz v4, :cond_23d

    .line 532
    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 534
    invoke-direct {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 537
    iget v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 539
    new-array v10, v10, [I

    .line 541
    iput-object v10, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    .line 543
    const/4 v10, 0x0

    .line 544
    :goto_21f
    iget v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 546
    if-ge v10, v11, :cond_233

    .line 548
    iget-object v11, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    .line 550
    iget-object v12, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 552
    aget-object v12, v12, v10

    .line 554
    invoke-virtual {v12, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(I)I

    .line 557
    move-result v12

    .line 558
    sub-int/2addr v12, v1

    .line 559
    aput v12, v11, v10

    .line 561
    add-int/lit8 v10, v10, 0x1

    .line 563
    goto :goto_21f

    .line 564
    :cond_233
    const/4 v10, 0x1

    .line 565
    iput v10, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 567
    iput v0, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 569
    iget-object v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 571
    invoke-virtual {v10, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 574
    :cond_23d
    move v10, v1

    .line 575
    move v4, v2

    .line 576
    :goto_23f
    iget-boolean v1, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 578
    if-eqz v1, :cond_2b1

    .line 580
    iget v1, v8, Landroidx/recyclerview/widget/j;->d:I

    .line 582
    const/4 v2, -0x1

    .line 583
    if-ne v1, v2, :cond_2b1

    .line 585
    if-eqz v3, :cond_24f

    .line 587
    const/4 v1, 0x1

    .line 588
    iput-boolean v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 590
    move v2, v1

    .line 591
    goto :goto_2b2

    .line 592
    :cond_24f
    const/4 v1, 0x1

    .line 593
    iget v2, v8, Landroidx/recyclerview/widget/j;->e:I

    .line 595
    if-ne v2, v1, :cond_280

    .line 597
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 599
    const/4 v2, 0x0

    .line 600
    aget-object v1, v1, v2

    .line 602
    const/high16 v11, -0x80000000

    .line 604
    invoke-virtual {v1, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h(I)I

    .line 607
    move-result v1

    .line 608
    const/4 v2, 0x1

    .line 609
    :goto_260
    iget v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 611
    if-ge v2, v3, :cond_275

    .line 613
    iget-object v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 615
    aget-object v3, v3, v2

    .line 617
    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h(I)I

    .line 620
    move-result v3

    .line 621
    if-eq v3, v1, :cond_272

    .line 623
    const/4 v1, 0x1

    .line 624
    const/16 v16, 0x0

    .line 626
    goto :goto_278

    .line 627
    :cond_272
    add-int/lit8 v2, v2, 0x1

    .line 629
    goto :goto_260

    .line 630
    :cond_275
    const/4 v1, 0x1

    .line 631
    const/16 v16, 0x1

    .line 633
    :goto_278
    xor-int/lit8 v2, v16, 0x1

    .line 635
    move/from16 v18, v2

    .line 637
    move v2, v1

    .line 638
    move/from16 v1, v18

    .line 640
    goto :goto_2a2

    .line 641
    :cond_280
    const/high16 v11, -0x80000000

    .line 643
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 645
    const/4 v2, 0x0

    .line 646
    aget-object v1, v1, v2

    .line 648
    invoke-virtual {v1, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(I)I

    .line 651
    move-result v1

    .line 652
    const/4 v2, 0x1

    .line 653
    :goto_28c
    iget v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 655
    if-ge v2, v3, :cond_29f

    .line 657
    iget-object v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 659
    aget-object v3, v3, v2

    .line 661
    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(I)I

    .line 664
    move-result v3

    .line 665
    if-eq v3, v1, :cond_29c

    .line 667
    const/4 v1, 0x0

    .line 668
    goto :goto_2a0

    .line 669
    :cond_29c
    add-int/lit8 v2, v2, 0x1

    .line 671
    goto :goto_28c

    .line 672
    :cond_29f
    const/4 v1, 0x1

    .line 673
    :goto_2a0
    const/4 v2, 0x1

    .line 674
    xor-int/2addr v1, v2

    .line 675
    :goto_2a2
    if-eqz v1, :cond_2b4

    .line 677
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 679
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 682
    move-result-object v0

    .line 683
    if-eqz v0, :cond_2ae

    .line 685
    iput-boolean v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->d:Z

    .line 687
    :cond_2ae
    iput-boolean v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 689
    goto :goto_2b4

    .line 690
    :cond_2b1
    const/4 v2, 0x1

    .line 691
    :goto_2b2
    const/high16 v11, -0x80000000

    .line 693
    :cond_2b4
    :goto_2b4
    iget v0, v8, Landroidx/recyclerview/widget/j;->e:I

    .line 695
    if-ne v0, v2, :cond_2d0

    .line 697
    iget-boolean v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 699
    if-eqz v0, :cond_2ca

    .line 701
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 703
    :goto_2be
    const/4 v1, -0x1

    .line 704
    add-int/2addr v0, v1

    .line 705
    if-ltz v0, :cond_2e7

    .line 707
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 709
    aget-object v1, v1, v0

    .line 711
    invoke-virtual {v1, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a(Landroid/view/View;)V

    .line 714
    goto :goto_2be

    .line 715
    :cond_2ca
    iget-object v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 717
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a(Landroid/view/View;)V

    .line 720
    goto :goto_2e7

    .line 721
    :cond_2d0
    iget-boolean v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 723
    if-eqz v0, :cond_2e2

    .line 725
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 727
    :goto_2d6
    const/4 v1, -0x1

    .line 728
    add-int/2addr v0, v1

    .line 729
    if-ltz v0, :cond_2e7

    .line 731
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 733
    aget-object v1, v1, v0

    .line 735
    invoke-virtual {v1, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->n(Landroid/view/View;)V

    .line 738
    goto :goto_2d6

    .line 739
    :cond_2e2
    iget-object v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 741
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->n(Landroid/view/View;)V

    .line 744
    :cond_2e7
    :goto_2e7
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 747
    move-result v0

    .line 748
    if-eqz v0, :cond_318

    .line 750
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 752
    const/4 v1, 0x1

    .line 753
    if-ne v0, v1, :cond_318

    .line 755
    iget-boolean v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 757
    if-eqz v0, :cond_2fd

    .line 759
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 761
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 764
    move-result v0

    .line 765
    goto :goto_30d

    .line 766
    :cond_2fd
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 768
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 771
    move-result v0

    .line 772
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 774
    sub-int/2addr v2, v1

    .line 775
    iget v1, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 777
    sub-int/2addr v2, v1

    .line 778
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 780
    mul-int/2addr v2, v1

    .line 781
    sub-int/2addr v0, v2

    .line 782
    :goto_30d
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 784
    invoke-virtual {v1, v15}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 787
    move-result v1

    .line 788
    sub-int v1, v0, v1

    .line 790
    move v12, v0

    .line 791
    move v3, v1

    .line 792
    goto :goto_338

    .line 793
    :cond_318
    iget-boolean v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 795
    if-eqz v0, :cond_323

    .line 797
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 799
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 802
    move-result v0

    .line 803
    goto :goto_32f

    .line 804
    :cond_323
    iget v0, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 806
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 808
    mul-int/2addr v0, v1

    .line 809
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 811
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->k()I

    .line 814
    move-result v1

    .line 815
    add-int/2addr v0, v1

    .line 816
    :goto_32f
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 818
    invoke-virtual {v1, v15}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 821
    move-result v1

    .line 822
    add-int/2addr v1, v0

    .line 823
    move v3, v0

    .line 824
    move v12, v1

    .line 825
    :goto_338
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 827
    const/4 v2, 0x1

    .line 828
    if-ne v0, v2, :cond_34c

    .line 830
    move-object/from16 v0, p0

    .line 832
    move-object v1, v15

    .line 833
    move/from16 v16, v2

    .line 835
    move v2, v3

    .line 836
    move v3, v4

    .line 837
    move v4, v12

    .line 838
    move-object v12, v5

    .line 839
    move v5, v10

    .line 840
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 843
    move-object v10, v12

    .line 844
    goto :goto_358

    .line 845
    :cond_34c
    move/from16 v16, v2

    .line 847
    move-object/from16 v0, p0

    .line 849
    move-object v1, v15

    .line 850
    move v2, v4

    .line 851
    move v4, v10

    .line 852
    move-object v10, v5

    .line 853
    move v5, v12

    .line 854
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 857
    :goto_358
    iget-boolean v0, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 859
    if-eqz v0, :cond_364

    .line 861
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 863
    iget v0, v0, Landroidx/recyclerview/widget/j;->e:I

    .line 865
    invoke-virtual {v6, v0, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v(II)V

    .line 868
    goto :goto_36b

    .line 869
    :cond_364
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 871
    iget v0, v0, Landroidx/recyclerview/widget/j;->e:I

    .line 873
    invoke-virtual {v6, v9, v0, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;II)V

    .line 876
    :goto_36b
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 878
    invoke-virtual {v6, v7, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/j;)V

    .line 881
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 883
    iget-boolean v0, v0, Landroidx/recyclerview/widget/j;->h:Z

    .line 885
    if-eqz v0, :cond_38f

    .line 887
    invoke-virtual {v15}, Landroid/view/View;->hasFocusable()Z

    .line 890
    move-result v0

    .line 891
    if-eqz v0, :cond_38f

    .line 893
    iget-boolean v0, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 895
    if-eqz v0, :cond_386

    .line 897
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    .line 899
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 902
    goto :goto_38f

    .line 903
    :cond_386
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    .line 905
    iget v1, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 907
    const/4 v2, 0x0

    .line 908
    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 911
    goto :goto_390

    .line 912
    :cond_38f
    :goto_38f
    const/4 v2, 0x0

    .line 913
    :goto_390
    move v9, v2

    .line 914
    move/from16 v0, v16

    .line 916
    move v10, v0

    .line 917
    goto/16 :goto_48

    .line 919
    :cond_396
    move v2, v9

    .line 920
    if-nez v0, :cond_39e

    .line 922
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 924
    invoke-virtual {v6, v7, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/j;)V

    .line 927
    :cond_39e
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 929
    iget v0, v0, Landroidx/recyclerview/widget/j;->e:I

    .line 931
    const/4 v1, -0x1

    .line 932
    if-ne v0, v1, :cond_3b7

    .line 934
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 936
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 939
    move-result v0

    .line 940
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(I)I

    .line 943
    move-result v0

    .line 944
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 946
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->k()I

    .line 949
    move-result v1

    .line 950
    sub-int/2addr v1, v0

    .line 951
    goto :goto_3c9

    .line 952
    :cond_3b7
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 954
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 957
    move-result v0

    .line 958
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(I)I

    .line 961
    move-result v0

    .line 962
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 964
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->g()I

    .line 967
    move-result v1

    .line 968
    sub-int v1, v0, v1

    .line 970
    :goto_3c9
    if-lez v1, :cond_3d2

    .line 972
    iget v0, v8, Landroidx/recyclerview/widget/j;->b:I

    .line 974
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 977
    move-result v9

    .line 978
    goto :goto_3d3

    .line 979
    :cond_3d2
    move v9, v2

    .line 980
    :goto_3d3
    return v9
.end method

.method public final canScrollHorizontally()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public final canScrollVertically()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_6

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v1, 0x0

    .line 8
    :goto_7
    return v1
.end method

.method public final checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$o;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 3
    return p1
.end method

.method public final collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;)V
    .registers 9

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 3
    if-nez v0, :cond_5

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    move p1, p2

    .line 7
    :goto_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_88

    .line 13
    if-nez p1, :cond_10

    .line 15
    goto/16 :goto_88

    .line 17
    :cond_10
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(ILandroidx/recyclerview/widget/RecyclerView$y;)V

    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:[I

    .line 22
    if-eqz p1, :cond_1c

    .line 24
    array-length p1, p1

    .line 25
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 27
    if-ge p1, p2, :cond_22

    .line 29
    :cond_1c
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 31
    new-array p1, p1, [I

    .line 33
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:[I

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    move p2, p1

    .line 37
    move v0, p2

    .line 38
    :goto_25
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 40
    if-ge p2, v1, :cond_55

    .line 42
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 44
    iget v2, v1, Landroidx/recyclerview/widget/j;->d:I

    .line 46
    const/4 v3, -0x1

    .line 47
    if-ne v2, v3, :cond_3b

    .line 49
    iget v1, v1, Landroidx/recyclerview/widget/j;->f:I

    .line 51
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 53
    aget-object v2, v2, p2

    .line 55
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(I)I

    .line 58
    move-result v2

    .line 59
    goto :goto_49

    .line 60
    :cond_3b
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 62
    aget-object v2, v2, p2

    .line 64
    iget v1, v1, Landroidx/recyclerview/widget/j;->g:I

    .line 66
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h(I)I

    .line 69
    move-result v1

    .line 70
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 72
    iget v2, v2, Landroidx/recyclerview/widget/j;->g:I

    .line 74
    :goto_49
    sub-int/2addr v1, v2

    .line 75
    if-ltz v1, :cond_52

    .line 77
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:[I

    .line 79
    aput v1, v2, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 83
    :cond_52
    add-int/lit8 p2, p2, 0x1

    .line 85
    goto :goto_25

    .line 86
    :cond_55
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:[I

    .line 88
    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    .line 91
    move p2, p1

    .line 92
    :goto_5b
    if-ge p2, v0, :cond_88

    .line 94
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 96
    iget v1, v1, Landroidx/recyclerview/widget/j;->c:I

    .line 98
    if-ltz v1, :cond_6b

    .line 100
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 103
    move-result v2

    .line 104
    if-ge v1, v2, :cond_6b

    .line 106
    const/4 v1, 0x1

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    move v1, p1

    .line 109
    :goto_6c
    if-eqz v1, :cond_88

    .line 111
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 113
    iget v1, v1, Landroidx/recyclerview/widget/j;->c:I

    .line 115
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:[I

    .line 117
    aget v2, v2, p2

    .line 119
    move-object v3, p4

    .line 120
    check-cast v3, Landroidx/recyclerview/widget/e$b;

    .line 122
    invoke-virtual {v3, v1, v2}, Landroidx/recyclerview/widget/e$b;->a(II)V

    .line 125
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 127
    iget v2, v1, Landroidx/recyclerview/widget/j;->c:I

    .line 129
    iget v3, v1, Landroidx/recyclerview/widget/j;->d:I

    .line 131
    add-int/2addr v2, v3

    .line 132
    iput v2, v1, Landroidx/recyclerview/widget/j;->c:I

    .line 134
    add-int/lit8 p2, p2, 0x1

    .line 136
    goto :goto_5b

    .line 137
    :cond_88
    :goto_88
    return-void
.end method

.method public final computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(Z)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 19
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 29
    move-object v0, p1

    .line 30
    move-object v4, p0

    .line 31
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/t;->a(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/p;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public final computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(Z)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 19
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 29
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 31
    move-object v0, p1

    .line 32
    move-object v4, p0

    .line 33
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/t;->b(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/p;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I

    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public final computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 11
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(Z)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 19
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Z

    .line 29
    move-object v0, p1

    .line 30
    move-object v4, p0

    .line 31
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/t;->c(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/p;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(I)I

    .line 4
    move-result p1

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    .line 7
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 10
    if-nez p1, :cond_d

    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_d
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_18

    .line 19
    int-to-float p1, p1

    .line 20
    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 22
    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 24
    goto :goto_1d

    .line 25
    :cond_18
    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 27
    int-to-float p1, p1

    .line 28
    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 30
    :goto_1d
    return-object v0
.end method

.method public final computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final d(Z)Landroid/view/View;
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 9
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->g()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 16
    move-result v2

    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_13
    if-ltz v2, :cond_37

    .line 22
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v4

    .line 26
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 28
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 31
    move-result v5

    .line 32
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 34
    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 37
    move-result v6

    .line 38
    if-le v6, v0, :cond_34

    .line 40
    if-lt v5, v1, :cond_2a

    .line 42
    goto :goto_34

    .line 43
    :cond_2a
    if-le v6, v1, :cond_33

    .line 45
    if-nez p1, :cond_2f

    .line 47
    goto :goto_33

    .line 48
    :cond_2f
    if-nez v3, :cond_34

    .line 50
    move-object v3, v4

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    :goto_33
    return-object v4

    .line 53
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, -0x1

    .line 55
    goto :goto_13

    .line 56
    :cond_37
    return-object v3
.end method

.method public final e(Z)Landroid/view/View;
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 9
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->g()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_12
    if-ge v4, v2, :cond_36

    .line 21
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v5

    .line 25
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 27
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 30
    move-result v6

    .line 31
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 33
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 36
    move-result v7

    .line 37
    if-le v7, v0, :cond_33

    .line 39
    if-lt v6, v1, :cond_29

    .line 41
    goto :goto_33

    .line 42
    :cond_29
    if-ge v6, v0, :cond_32

    .line 44
    if-nez p1, :cond_2e

    .line 46
    goto :goto_32

    .line 47
    :cond_2e
    if-nez v3, :cond_33

    .line 49
    move-object v3, v5

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    :goto_32
    return-object v5

    .line 52
    :cond_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    .line 54
    goto :goto_12

    .line 55
    :cond_36
    return-object v3
.end method

.method public final f(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V
    .registers 6

    .line 1
    const/high16 v0, -0x80000000

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j(I)I

    .line 6
    move-result v1

    .line 7
    if-ne v1, v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 15
    move-result v0

    .line 16
    sub-int/2addr v0, v1

    .line 17
    if-lez v0, :cond_22

    .line 19
    neg-int v1, v0

    .line 20
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 23
    move-result p1

    .line 24
    neg-int p1, p1

    .line 25
    sub-int/2addr v0, p1

    .line 26
    if-eqz p3, :cond_22

    .line 28
    if-lez v0, :cond_22

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 32
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/p;->p(I)V

    .line 35
    :cond_22
    return-void
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V
    .registers 6

    .line 1
    const v0, 0x7fffffff

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k(I)I

    .line 7
    move-result v1

    .line 8
    if-ne v1, v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->k()I

    .line 16
    move-result v0

    .line 17
    sub-int/2addr v1, v0

    .line 18
    if-lez v1, :cond_22

    .line 20
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 23
    move-result p1

    .line 24
    sub-int/2addr v1, p1

    .line 25
    if-eqz p3, :cond_22

    .line 27
    if-lez v1, :cond_22

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 31
    neg-int p2, v1

    .line 32
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/p;->p(I)V

    .line 35
    :cond_22
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$o;
    .registers 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    if-nez v0, :cond_c

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 9
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(II)V

    .line 12
    return-object v0

    .line 13
    :cond_c
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 15
    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(II)V

    .line 18
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$o;
    .registers 4

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$o;
    .registers 3

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 4
    :cond_c
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final h()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    goto :goto_10

    .line 9
    :cond_8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 16
    move-result v1

    .line 17
    :goto_10
    return v1
.end method

.method public final i()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_12

    .line 9
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 18
    move-result v0

    .line 19
    :goto_12
    return v0
.end method

.method public final isAutoMeasureEnabled()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public final isLayoutRTL()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_8

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v1, 0x0

    .line 10
    :goto_9
    return v1
.end method

.method public final j(I)I
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h(I)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    :goto_a
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 13
    if-ge v1, v2, :cond_1c

    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 17
    aget-object v2, v2, v1

    .line 19
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h(I)I

    .line 22
    move-result v2

    .line 23
    if-le v2, v0, :cond_19

    .line 25
    move v0, v2

    .line 26
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_a

    .line 29
    :cond_1c
    return v0
.end method

.method public final k(I)I
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(I)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    :goto_a
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 13
    if-ge v1, v2, :cond_1c

    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 17
    aget-object v2, v2, v1

    .line 19
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(I)I

    .line 22
    move-result v2

    .line 23
    if-ge v2, v0, :cond_19

    .line 25
    move v0, v2

    .line 26
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_a

    .line 29
    :cond_1c
    return v0
.end method

.method public final l(III)V
    .registers 10

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    .line 8
    move-result v0

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    .line 13
    move-result v0

    .line 14
    :goto_d
    const/16 v1, 0x8

    .line 16
    if-ne p3, v1, :cond_1a

    .line 18
    if-ge p1, p2, :cond_16

    .line 20
    add-int/lit8 v2, p2, 0x1

    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    add-int/lit8 v2, p1, 0x1

    .line 25
    move v3, p2

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    add-int v2, p1, p2

    .line 29
    :goto_1c
    move v3, p1

    .line 30
    :goto_1d
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 32
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->g(I)I

    .line 35
    const/4 v4, 0x1

    .line 36
    if-eq p3, v4, :cond_3c

    .line 38
    const/4 v5, 0x2

    .line 39
    if-eq p3, v5, :cond_36

    .line 41
    if-eq p3, v1, :cond_2b

    .line 43
    goto :goto_41

    .line 44
    :cond_2b
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 46
    invoke-virtual {p3, p1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->i(II)V

    .line 49
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 51
    invoke-virtual {p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->h(II)V

    .line 54
    goto :goto_41

    .line 55
    :cond_36
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 57
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->i(II)V

    .line 60
    goto :goto_41

    .line 61
    :cond_3c
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 63
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->h(II)V

    .line 66
    :goto_41
    if-gt v2, v0, :cond_44

    .line 68
    return-void

    .line 69
    :cond_44
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 71
    if-eqz p1, :cond_4d

    .line 73
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    .line 76
    move-result p1

    .line 77
    goto :goto_51

    .line 78
    :cond_4d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    .line 81
    move-result p1

    .line 82
    :goto_51
    if-gt v3, p1, :cond_56

    .line 84
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 87
    :cond_56
    return-void
.end method

.method public final m()Landroid/view/View;
    .registers 14

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    new-instance v2, Ljava/util/BitSet;

    .line 9
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 11
    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 14
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    .line 20
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 22
    const/4 v5, -0x1

    .line 23
    if-ne v3, v1, :cond_20

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_20

    .line 31
    move v3, v1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v3, v5

    .line 34
    :goto_21
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 36
    if-eqz v6, :cond_27

    .line 38
    move v6, v5

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    add-int/lit8 v0, v0, 0x1

    .line 42
    move v6, v0

    .line 43
    move v0, v4

    .line 44
    :goto_2b
    if-ge v0, v6, :cond_2f

    .line 46
    move v7, v1

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move v7, v5

    .line 49
    :goto_30
    if-eq v0, v6, :cond_f9

    .line 51
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    move-result-object v9

    .line 59
    check-cast v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 61
    iget-object v10, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 63
    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 65
    invoke-virtual {v2, v10}, Ljava/util/BitSet;->get(I)Z

    .line 68
    move-result v10

    .line 69
    if-eqz v10, :cond_a1

    .line 71
    iget-object v10, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 73
    iget-boolean v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 75
    const/high16 v12, -0x80000000

    .line 77
    if-eqz v11, :cond_74

    .line 79
    iget v11, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 81
    if-eq v11, v12, :cond_53

    .line 83
    goto :goto_58

    .line 84
    :cond_53
    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b()V

    .line 87
    iget v11, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 89
    :goto_58
    iget-object v12, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 91
    invoke-virtual {v12}, Landroidx/recyclerview/widget/p;->g()I

    .line 94
    move-result v12

    .line 95
    if-ge v11, v12, :cond_96

    .line 97
    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 102
    move-result v11

    .line 103
    add-int/2addr v11, v5

    .line 104
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v10

    .line 108
    check-cast v10, Landroid/view/View;

    .line 110
    invoke-static {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 113
    move-result-object v10

    .line 114
    iget-boolean v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 116
    goto :goto_94

    .line 117
    :cond_74
    iget v11, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 119
    if-eq v11, v12, :cond_79

    .line 121
    goto :goto_7e

    .line 122
    :cond_79
    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c()V

    .line 125
    iget v11, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 127
    :goto_7e
    iget-object v12, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 129
    invoke-virtual {v12}, Landroidx/recyclerview/widget/p;->k()I

    .line 132
    move-result v12

    .line 133
    if-le v11, v12, :cond_96

    .line 135
    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    move-result-object v10

    .line 141
    check-cast v10, Landroid/view/View;

    .line 143
    invoke-static {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 146
    move-result-object v10

    .line 147
    iget-boolean v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 149
    :goto_94
    xor-int/2addr v10, v1

    .line 150
    goto :goto_97

    .line 151
    :cond_96
    move v10, v4

    .line 152
    :goto_97
    if-eqz v10, :cond_9a

    .line 154
    return-object v8

    .line 155
    :cond_9a
    iget-object v10, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 157
    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 159
    invoke-virtual {v2, v10}, Ljava/util/BitSet;->clear(I)V

    .line 162
    :cond_a1
    iget-boolean v10, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 164
    if-eqz v10, :cond_a6

    .line 166
    goto :goto_f6

    .line 167
    :cond_a6
    add-int v10, v0, v7

    .line 169
    if-eq v10, v6, :cond_f6

    .line 171
    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 174
    move-result-object v10

    .line 175
    iget-boolean v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 177
    if-eqz v11, :cond_c4

    .line 179
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 181
    invoke-virtual {v11, v8}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 184
    move-result v11

    .line 185
    iget-object v12, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 187
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 190
    move-result v12

    .line 191
    if-ge v11, v12, :cond_c1

    .line 193
    return-object v8

    .line 194
    :cond_c1
    if-ne v11, v12, :cond_d7

    .line 196
    goto :goto_d5

    .line 197
    :cond_c4
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 199
    invoke-virtual {v11, v8}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 202
    move-result v11

    .line 203
    iget-object v12, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 205
    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 208
    move-result v12

    .line 209
    if-le v11, v12, :cond_d3

    .line 211
    return-object v8

    .line 212
    :cond_d3
    if-ne v11, v12, :cond_d7

    .line 214
    :goto_d5
    move v11, v1

    .line 215
    goto :goto_d8

    .line 216
    :cond_d7
    move v11, v4

    .line 217
    :goto_d8
    if-eqz v11, :cond_f6

    .line 219
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 222
    move-result-object v10

    .line 223
    check-cast v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 225
    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 227
    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 229
    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 231
    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 233
    sub-int/2addr v9, v10

    .line 234
    if-gez v9, :cond_ed

    .line 236
    move v9, v1

    .line 237
    goto :goto_ee

    .line 238
    :cond_ed
    move v9, v4

    .line 239
    :goto_ee
    if-gez v3, :cond_f2

    .line 241
    move v10, v1

    .line 242
    goto :goto_f3

    .line 243
    :cond_f2
    move v10, v4

    .line 244
    :goto_f3
    if-eq v9, v10, :cond_f6

    .line 246
    return-object v8

    .line 247
    :cond_f6
    :goto_f6
    add-int/2addr v0, v7

    .line 248
    goto/16 :goto_30

    .line 250
    :cond_f9
    const/4 v0, 0x0

    .line 251
    return-object v0
.end method

.method public final n(Landroid/view/View;II)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 12
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 14
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroid/graphics/Rect;

    .line 16
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 18
    add-int/2addr v1, v3

    .line 19
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 21
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 23
    add-int/2addr v3, v2

    .line 24
    invoke-static {p2, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y(III)I

    .line 27
    move-result p2

    .line 28
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 30
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:Landroid/graphics/Rect;

    .line 32
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 34
    add-int/2addr v1, v3

    .line 35
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 37
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 39
    add-int/2addr v3, v2

    .line 40
    invoke-static {p3, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y(III)I

    .line 43
    move-result p3

    .line 44
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_34

    .line 50
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 53
    :cond_34
    return-void
.end method

.method public final o(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V
    .registers 15

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 5
    const/4 v2, -0x1

    .line 6
    if-nez v1, :cond_b

    .line 8
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 10
    if-eq v1, v2, :cond_18

    .line 12
    :cond_b
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_18

    .line 18
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()V

    .line 24
    return-void

    .line 25
    :cond_18
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:Z

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v1, :cond_29

    .line 31
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 33
    if-ne v1, v2, :cond_29

    .line 35
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 37
    if-eqz v1, :cond_27

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    move v1, v3

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    :goto_29
    move v1, v4

    .line 43
    :goto_2a
    const/high16 v5, -0x80000000

    .line 45
    if-eqz v1, :cond_20b

    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()V

    .line 50
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 52
    if-eqz v6, :cond_ba

    .line 54
    iget v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 56
    const/4 v8, 0x0

    .line 57
    if-lez v7, :cond_7d

    .line 59
    iget v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 61
    if-ne v7, v9, :cond_6f

    .line 63
    move v6, v3

    .line 64
    :goto_3f
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 66
    if-ge v6, v7, :cond_7d

    .line 68
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 70
    aget-object v7, v7, v6

    .line 72
    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d()V

    .line 75
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 77
    iget-object v9, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    .line 79
    aget v9, v9, v6

    .line 81
    if-eq v9, v5, :cond_64

    .line 83
    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 85
    if-eqz v7, :cond_5d

    .line 87
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 89
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p;->g()I

    .line 92
    move-result v7

    .line 93
    goto :goto_63

    .line 94
    :cond_5d
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 96
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p;->k()I

    .line 99
    move-result v7

    .line 100
    :goto_63
    add-int/2addr v9, v7

    .line 101
    :cond_64
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 103
    aget-object v7, v7, v6

    .line 105
    iput v9, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 107
    iput v9, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 109
    add-int/lit8 v6, v6, 0x1

    .line 111
    goto :goto_3f

    .line 112
    :cond_6f
    iput-object v8, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    .line 114
    iput v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 116
    iput v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 118
    iput-object v8, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 120
    iput-object v8, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 122
    iget v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 124
    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 126
    :cond_7d
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 128
    iget-boolean v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    .line 130
    iput-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    .line 132
    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 134
    invoke-virtual {p0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 137
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 139
    if-eqz v7, :cond_92

    .line 141
    iget-boolean v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 143
    if-eq v8, v6, :cond_92

    .line 145
    iput-boolean v6, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 147
    :cond_92
    iput-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 149
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 152
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 155
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 157
    iget v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 159
    if-eq v7, v2, :cond_a7

    .line 161
    iput v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 163
    iget-boolean v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 165
    iput-boolean v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    .line 167
    goto :goto_ab

    .line 168
    :cond_a7
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 170
    iput-boolean v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    .line 172
    :goto_ab
    iget v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 174
    if-le v7, v4, :cond_c1

    .line 176
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 178
    iget-object v8, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 180
    iput-object v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    .line 182
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 184
    iput-object v6, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    .line 186
    goto :goto_c1

    .line 187
    :cond_ba
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 190
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 192
    iput-boolean v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    .line 194
    :cond_c1
    :goto_c1
    iget-boolean v6, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 196
    if-nez v6, :cond_1c8

    .line 198
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 200
    if-ne v6, v2, :cond_cb

    .line 202
    goto/16 :goto_1c8

    .line 204
    :cond_cb
    if-ltz v6, :cond_1c4

    .line 206
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 209
    move-result v7

    .line 210
    if-lt v6, v7, :cond_d5

    .line 212
    goto/16 :goto_1c4

    .line 214
    :cond_d5
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 216
    if-eqz v6, :cond_ea

    .line 218
    iget v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 220
    if-eq v7, v2, :cond_ea

    .line 222
    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 224
    if-ge v6, v4, :cond_e2

    .line 226
    goto :goto_ea

    .line 227
    :cond_e2
    iput v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 229
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 231
    iput v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I

    .line 233
    goto/16 :goto_1c2

    .line 235
    :cond_ea
    :goto_ea
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 237
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 240
    move-result-object v6

    .line 241
    if-eqz v6, :cond_17c

    .line 243
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 245
    if-eqz v7, :cond_fb

    .line 247
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    .line 250
    move-result v7

    .line 251
    goto :goto_ff

    .line 252
    :cond_fb
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    .line 255
    move-result v7

    .line 256
    :goto_ff
    iput v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I

    .line 258
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 260
    if-eq v7, v5, :cond_131

    .line 262
    iget-boolean v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    .line 264
    if-eqz v7, :cond_11d

    .line 266
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 268
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p;->g()I

    .line 271
    move-result v7

    .line 272
    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 274
    sub-int/2addr v7, v8

    .line 275
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 277
    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 280
    move-result v6

    .line 281
    sub-int/2addr v7, v6

    .line 282
    iput v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 284
    goto/16 :goto_1c2

    .line 286
    :cond_11d
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 288
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p;->k()I

    .line 291
    move-result v7

    .line 292
    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 294
    add-int/2addr v7, v8

    .line 295
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 297
    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 300
    move-result v6

    .line 301
    sub-int/2addr v7, v6

    .line 302
    iput v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 304
    goto/16 :goto_1c2

    .line 306
    :cond_131
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 308
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 311
    move-result v7

    .line 312
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 314
    invoke-virtual {v8}, Landroidx/recyclerview/widget/p;->l()I

    .line 317
    move-result v8

    .line 318
    if-le v7, v8, :cond_154

    .line 320
    iget-boolean v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    .line 322
    if-eqz v6, :cond_14a

    .line 324
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 326
    invoke-virtual {v6}, Landroidx/recyclerview/widget/p;->g()I

    .line 329
    move-result v6

    .line 330
    goto :goto_150

    .line 331
    :cond_14a
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 333
    invoke-virtual {v6}, Landroidx/recyclerview/widget/p;->k()I

    .line 336
    move-result v6

    .line 337
    :goto_150
    iput v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 339
    goto/16 :goto_1c2

    .line 341
    :cond_154
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 343
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 346
    move-result v7

    .line 347
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 349
    invoke-virtual {v8}, Landroidx/recyclerview/widget/p;->k()I

    .line 352
    move-result v8

    .line 353
    sub-int/2addr v7, v8

    .line 354
    if-gez v7, :cond_167

    .line 356
    neg-int v6, v7

    .line 357
    iput v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 359
    goto :goto_1c2

    .line 360
    :cond_167
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 362
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p;->g()I

    .line 365
    move-result v7

    .line 366
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 368
    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 371
    move-result v6

    .line 372
    sub-int/2addr v7, v6

    .line 373
    if-gez v7, :cond_179

    .line 375
    iput v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 377
    goto :goto_1c2

    .line 378
    :cond_179
    iput v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 380
    goto :goto_1c2

    .line 381
    :cond_17c
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 383
    iput v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I

    .line 385
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 387
    if-ne v7, v5, :cond_1a5

    .line 389
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a(I)I

    .line 392
    move-result v6

    .line 393
    if-ne v6, v4, :cond_18c

    .line 395
    move v6, v4

    .line 396
    goto :goto_18d

    .line 397
    :cond_18c
    move v6, v3

    .line 398
    :goto_18d
    iput-boolean v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    .line 400
    if-eqz v6, :cond_19a

    .line 402
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 404
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 406
    invoke-virtual {v6}, Landroidx/recyclerview/widget/p;->g()I

    .line 409
    move-result v6

    .line 410
    goto :goto_1a2

    .line 411
    :cond_19a
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 413
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 415
    invoke-virtual {v6}, Landroidx/recyclerview/widget/p;->k()I

    .line 418
    move-result v6

    .line 419
    :goto_1a2
    iput v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 421
    goto :goto_1c0

    .line 422
    :cond_1a5
    iget-boolean v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    .line 424
    if-eqz v6, :cond_1b5

    .line 426
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 428
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 430
    invoke-virtual {v6}, Landroidx/recyclerview/widget/p;->g()I

    .line 433
    move-result v6

    .line 434
    sub-int/2addr v6, v7

    .line 435
    iput v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 437
    goto :goto_1c0

    .line 438
    :cond_1b5
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 440
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 442
    invoke-virtual {v6}, Landroidx/recyclerview/widget/p;->k()I

    .line 445
    move-result v6

    .line 446
    add-int/2addr v6, v7

    .line 447
    iput v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 449
    :goto_1c0
    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:Z

    .line 451
    :goto_1c2
    move v6, v4

    .line 452
    goto :goto_1c9

    .line 453
    :cond_1c4
    :goto_1c4
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 455
    iput v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 457
    :cond_1c8
    :goto_1c8
    move v6, v3

    .line 458
    :goto_1c9
    if-eqz v6, :cond_1cc

    .line 460
    goto :goto_209

    .line 461
    :cond_1cc
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 463
    if-eqz v6, :cond_1e8

    .line 465
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 468
    move-result v6

    .line 469
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 472
    move-result v7

    .line 473
    :cond_1d8
    add-int/2addr v7, v2

    .line 474
    if-ltz v7, :cond_204

    .line 476
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 479
    move-result-object v8

    .line 480
    invoke-virtual {p0, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 483
    move-result v8

    .line 484
    if-ltz v8, :cond_1d8

    .line 486
    if-ge v8, v6, :cond_1d8

    .line 488
    goto :goto_205

    .line 489
    :cond_1e8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    .line 492
    move-result v6

    .line 493
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 496
    move-result v7

    .line 497
    move v8, v3

    .line 498
    :goto_1f1
    if-ge v8, v7, :cond_204

    .line 500
    invoke-virtual {p0, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 503
    move-result-object v9

    .line 504
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 507
    move-result v9

    .line 508
    if-ltz v9, :cond_201

    .line 510
    if-ge v9, v6, :cond_201

    .line 512
    move v8, v9

    .line 513
    goto :goto_205

    .line 514
    :cond_201
    add-int/lit8 v8, v8, 0x1

    .line 516
    goto :goto_1f1

    .line 517
    :cond_204
    move v8, v3

    .line 518
    :goto_205
    iput v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I

    .line 520
    iput v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 522
    :goto_209
    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:Z

    .line 524
    :cond_20b
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 526
    if-nez v6, :cond_228

    .line 528
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 530
    if-ne v6, v2, :cond_228

    .line 532
    iget-boolean v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    .line 534
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 536
    if-ne v6, v7, :cond_221

    .line 538
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 541
    move-result v6

    .line 542
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    .line 544
    if-eq v6, v7, :cond_228

    .line 546
    :cond_221
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 548
    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b()V

    .line 551
    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:Z

    .line 553
    :cond_228
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 556
    move-result v6

    .line 557
    if-lez v6, :cond_2e0

    .line 559
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 561
    if-eqz v6, :cond_236

    .line 563
    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 565
    if-ge v6, v4, :cond_2e0

    .line 567
    :cond_236
    iget-boolean v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:Z

    .line 569
    if-eqz v6, :cond_255

    .line 571
    move v1, v3

    .line 572
    :goto_23b
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 574
    if-ge v1, v6, :cond_2e0

    .line 576
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 578
    aget-object v6, v6, v1

    .line 580
    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d()V

    .line 583
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 585
    if-eq v6, v5, :cond_252

    .line 587
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 589
    aget-object v7, v7, v1

    .line 591
    iput v6, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 593
    iput v6, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 595
    :cond_252
    add-int/lit8 v1, v1, 0x1

    .line 597
    goto :goto_23b

    .line 598
    :cond_255
    if-nez v1, :cond_277

    .line 600
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 602
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I

    .line 604
    if-nez v1, :cond_25e

    .line 606
    goto :goto_277

    .line 607
    :cond_25e
    move v1, v3

    .line 608
    :goto_25f
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 610
    if-ge v1, v6, :cond_2e0

    .line 612
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 614
    aget-object v6, v6, v1

    .line 616
    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d()V

    .line 619
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 621
    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I

    .line 623
    aget v7, v7, v1

    .line 625
    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 627
    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 629
    add-int/lit8 v1, v1, 0x1

    .line 631
    goto :goto_25f

    .line 632
    :cond_277
    :goto_277
    move v1, v3

    .line 633
    :goto_278
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 635
    if-ge v1, v6, :cond_2b8

    .line 637
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 639
    aget-object v6, v6, v1

    .line 641
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 643
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 645
    if-eqz v7, :cond_28b

    .line 647
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h(I)I

    .line 650
    move-result v9

    .line 651
    goto :goto_28f

    .line 652
    :cond_28b
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(I)I

    .line 655
    move-result v9

    .line 656
    :goto_28f
    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d()V

    .line 659
    if-ne v9, v5, :cond_295

    .line 661
    goto :goto_2b5

    .line 662
    :cond_295
    if-eqz v7, :cond_2a1

    .line 664
    iget-object v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 666
    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 668
    invoke-virtual {v10}, Landroidx/recyclerview/widget/p;->g()I

    .line 671
    move-result v10

    .line 672
    if-lt v9, v10, :cond_2b5

    .line 674
    :cond_2a1
    if-nez v7, :cond_2ae

    .line 676
    iget-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 678
    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 680
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p;->k()I

    .line 683
    move-result v7

    .line 684
    if-le v9, v7, :cond_2ae

    .line 686
    goto :goto_2b5

    .line 687
    :cond_2ae
    if-eq v8, v5, :cond_2b1

    .line 689
    add-int/2addr v9, v8

    .line 690
    :cond_2b1
    iput v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 692
    iput v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 694
    :cond_2b5
    :goto_2b5
    add-int/lit8 v1, v1, 0x1

    .line 696
    goto :goto_278

    .line 697
    :cond_2b8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 699
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 701
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 704
    array-length v7, v6

    .line 705
    iget-object v8, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I

    .line 707
    if-eqz v8, :cond_2c7

    .line 709
    array-length v8, v8

    .line 710
    if-ge v8, v7, :cond_2d0

    .line 712
    :cond_2c7
    iget-object v8, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 714
    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 716
    array-length v8, v8

    .line 717
    new-array v8, v8, [I

    .line 719
    iput-object v8, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I

    .line 721
    :cond_2d0
    move v8, v3

    .line 722
    :goto_2d1
    if-ge v8, v7, :cond_2e0

    .line 724
    iget-object v9, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I

    .line 726
    aget-object v10, v6, v8

    .line 728
    invoke-virtual {v10, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(I)I

    .line 731
    move-result v10

    .line 732
    aput v10, v9, v8

    .line 734
    add-int/lit8 v8, v8, 0x1

    .line 736
    goto :goto_2d1

    .line 737
    :cond_2e0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 740
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 742
    iput-boolean v3, v1, Landroidx/recyclerview/widget/j;->a:Z

    .line 744
    iput-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 746
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 748
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->l()I

    .line 751
    move-result v1

    .line 752
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 754
    div-int v6, v1, v6

    .line 756
    iput v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 758
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 760
    invoke-virtual {v6}, Landroidx/recyclerview/widget/p;->i()I

    .line 763
    move-result v6

    .line 764
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 767
    move-result v1

    .line 768
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    .line 770
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I

    .line 772
    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w(ILandroidx/recyclerview/widget/RecyclerView$y;)V

    .line 775
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    .line 777
    if-eqz v1, :cond_322

    .line 779
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)V

    .line 782
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 784
    invoke-virtual {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 787
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)V

    .line 790
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 792
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I

    .line 794
    iget v6, v1, Landroidx/recyclerview/widget/j;->d:I

    .line 796
    add-int/2addr v2, v6

    .line 797
    iput v2, v1, Landroidx/recyclerview/widget/j;->c:I

    .line 799
    invoke-virtual {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 802
    goto :goto_339

    .line 803
    :cond_322
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)V

    .line 806
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 808
    invoke-virtual {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 811
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)V

    .line 814
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 816
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I

    .line 818
    iget v6, v1, Landroidx/recyclerview/widget/j;->d:I

    .line 820
    add-int/2addr v2, v6

    .line 821
    iput v2, v1, Landroidx/recyclerview/widget/j;->c:I

    .line 823
    invoke-virtual {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 826
    :goto_339
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 828
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->i()I

    .line 831
    move-result v1

    .line 832
    const/high16 v2, 0x40000000  # 2.0f

    .line 834
    if-ne v1, v2, :cond_345

    .line 836
    goto/16 :goto_3f2

    .line 838
    :cond_345
    const/4 v1, 0x0

    .line 839
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 842
    move-result v2

    .line 843
    move v6, v3

    .line 844
    :goto_34b
    if-ge v6, v2, :cond_375

    .line 846
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 849
    move-result-object v7

    .line 850
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 852
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/p;->c(Landroid/view/View;)I

    .line 855
    move-result v8

    .line 856
    int-to-float v8, v8

    .line 857
    cmpg-float v9, v8, v1

    .line 859
    if-gez v9, :cond_35d

    .line 861
    goto :goto_372

    .line 862
    :cond_35d
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 865
    move-result-object v7

    .line 866
    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 868
    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 870
    if-eqz v7, :cond_36e

    .line 872
    const/high16 v7, 0x3f800000  # 1.0f

    .line 874
    mul-float/2addr v8, v7

    .line 875
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 877
    int-to-float v7, v7

    .line 878
    div-float/2addr v8, v7

    .line 879
    :cond_36e
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    .line 882
    move-result v1

    .line 883
    :goto_372
    add-int/lit8 v6, v6, 0x1

    .line 885
    goto :goto_34b

    .line 886
    :cond_375
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 888
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 890
    int-to-float v7, v7

    .line 891
    mul-float/2addr v1, v7

    .line 892
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 895
    move-result v1

    .line 896
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 898
    invoke-virtual {v7}, Landroidx/recyclerview/widget/p;->i()I

    .line 901
    move-result v7

    .line 902
    if-ne v7, v5, :cond_391

    .line 904
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 906
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p;->l()I

    .line 909
    move-result v5

    .line 910
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 913
    move-result v1

    .line 914
    :cond_391
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 916
    div-int v5, v1, v5

    .line 918
    iput v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 920
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Landroidx/recyclerview/widget/p;

    .line 922
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p;->i()I

    .line 925
    move-result v5

    .line 926
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 929
    move-result v1

    .line 930
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    .line 932
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 934
    if-ne v1, v6, :cond_3a8

    .line 936
    goto :goto_3f2

    .line 937
    :cond_3a8
    move v1, v3

    .line 938
    :goto_3a9
    if-ge v1, v2, :cond_3f2

    .line 940
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 943
    move-result-object v5

    .line 944
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 947
    move-result-object v7

    .line 948
    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 950
    iget-boolean v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 952
    if-eqz v8, :cond_3ba

    .line 954
    goto :goto_3ef

    .line 955
    :cond_3ba
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 958
    move-result v8

    .line 959
    if-eqz v8, :cond_3da

    .line 961
    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 963
    if-ne v8, v4, :cond_3da

    .line 965
    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 967
    add-int/lit8 v9, v8, -0x1

    .line 969
    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 971
    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 973
    sub-int/2addr v9, v7

    .line 974
    neg-int v9, v9

    .line 975
    iget v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 977
    mul-int/2addr v9, v10

    .line 978
    sub-int/2addr v8, v4

    .line 979
    sub-int/2addr v8, v7

    .line 980
    neg-int v7, v8

    .line 981
    mul-int/2addr v7, v6

    .line 982
    sub-int/2addr v9, v7

    .line 983
    invoke-virtual {v5, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 986
    goto :goto_3ef

    .line 987
    :cond_3da
    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 989
    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 991
    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 993
    mul-int/2addr v8, v7

    .line 994
    mul-int/2addr v7, v6

    .line 995
    iget v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 997
    if-ne v9, v4, :cond_3eb

    .line 999
    sub-int/2addr v8, v7

    .line 1000
    invoke-virtual {v5, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1003
    goto :goto_3ef

    .line 1004
    :cond_3eb
    sub-int/2addr v8, v7

    .line 1005
    invoke-virtual {v5, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1008
    :goto_3ef
    add-int/lit8 v1, v1, 0x1

    .line 1010
    goto :goto_3a9

    .line 1011
    :cond_3f2
    :goto_3f2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 1014
    move-result v1

    .line 1015
    if-lez v1, :cond_409

    .line 1017
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 1019
    if-eqz v1, :cond_403

    .line 1021
    invoke-virtual {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V

    .line 1024
    invoke-virtual {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V

    .line 1027
    goto :goto_409

    .line 1028
    :cond_403
    invoke-virtual {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V

    .line 1031
    invoke-virtual {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V

    .line 1034
    :cond_409
    :goto_409
    if-eqz p3, :cond_434

    .line 1036
    iget-boolean p3, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 1038
    if-nez p3, :cond_434

    .line 1040
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n:I

    .line 1042
    if-eqz p3, :cond_425

    .line 1044
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 1047
    move-result p3

    .line 1048
    if-lez p3, :cond_425

    .line 1050
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:Z

    .line 1052
    if-nez p3, :cond_423

    .line 1054
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m()Landroid/view/View;

    .line 1057
    move-result-object p3

    .line 1058
    if-eqz p3, :cond_425

    .line 1060
    :cond_423
    move p3, v4

    .line 1061
    goto :goto_426

    .line 1062
    :cond_425
    move p3, v3

    .line 1063
    :goto_426
    if-eqz p3, :cond_434

    .line 1065
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    .line 1067
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1070
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b()Z

    .line 1073
    move-result p3

    .line 1074
    if-eqz p3, :cond_434

    .line 1076
    goto :goto_435

    .line 1077
    :cond_434
    move v4, v3

    .line 1078
    :goto_435
    iget-boolean p3, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    .line 1080
    if-eqz p3, :cond_43e

    .line 1082
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 1084
    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()V

    .line 1087
    :cond_43e
    iget-boolean p3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    .line 1089
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 1091
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 1094
    move-result p3

    .line 1095
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    .line 1097
    if-eqz v4, :cond_452

    .line 1099
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 1101
    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()V

    .line 1104
    invoke-virtual {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V

    .line 1107
    :cond_452
    return-void
.end method

.method public final offsetChildrenHorizontal(I)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_4
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 7
    if-ge v0, v1, :cond_1f

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 11
    aget-object v1, v1, v0

    .line 13
    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 15
    const/high16 v3, -0x80000000

    .line 17
    if-eq v2, v3, :cond_15

    .line 19
    add-int/2addr v2, p1

    .line 20
    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 22
    :cond_15
    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 24
    if-eq v2, v3, :cond_1c

    .line 26
    add-int/2addr v2, p1

    .line 27
    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 29
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_4

    .line 32
    :cond_1f
    return-void
.end method

.method public final offsetChildrenVertical(I)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_4
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 7
    if-ge v0, v1, :cond_1f

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 11
    aget-object v1, v1, v0

    .line 13
    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 15
    const/high16 v3, -0x80000000

    .line 17
    if-eq v2, v3, :cond_15

    .line 19
    add-int/2addr v2, p1

    .line 20
    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 22
    :cond_15
    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 24
    if-eq v2, v3, :cond_1c

    .line 26
    add-int/2addr v2, p1

    .line 27
    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 29
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_4

    .line 32
    :cond_1f
    return-void
.end method

.method public final onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b()V

    .line 6
    const/4 p1, 0x0

    .line 7
    :goto_6
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 9
    if-ge p1, p2, :cond_14

    .line 11
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 13
    aget-object p2, p2, p1

    .line 15
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d()V

    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 20
    goto :goto_6

    .line 21
    :cond_14
    return-void
.end method

.method public final onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 4
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    .line 6
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    const/4 p2, 0x0

    .line 10
    :goto_9
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 12
    if-ge p2, v0, :cond_17

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 16
    aget-object v0, v0, p2

    .line 18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d()V

    .line 21
    add-int/lit8 p2, p2, 0x1

    .line 23
    goto :goto_9

    .line 24
    :cond_17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 27
    return-void
.end method

.method public final onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)Landroid/view/View;
    .registers 14

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_f

    .line 15
    return-object v1

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 19
    const/high16 v0, -0x80000000

    .line 21
    const/4 v2, -0x1

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq p2, v3, :cond_50

    .line 25
    const/4 v4, 0x2

    .line 26
    if-eq p2, v4, :cond_44

    .line 28
    const/16 v4, 0x11

    .line 30
    if-eq p2, v4, :cond_3f

    .line 32
    const/16 v4, 0x21

    .line 34
    if-eq p2, v4, :cond_39

    .line 36
    const/16 v4, 0x42

    .line 38
    if-eq p2, v4, :cond_34

    .line 40
    const/16 v4, 0x82

    .line 42
    if-eq p2, v4, :cond_2c

    .line 44
    goto :goto_32

    .line 45
    :cond_2c
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 47
    if-ne p2, v3, :cond_32

    .line 49
    :cond_30
    :goto_30
    move p2, v3

    .line 50
    goto :goto_5c

    .line 51
    :cond_32
    :goto_32
    move p2, v0

    .line 52
    goto :goto_5c

    .line 53
    :cond_34
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 55
    if-nez p2, :cond_32

    .line 57
    goto :goto_30

    .line 58
    :cond_39
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 60
    if-ne p2, v3, :cond_32

    .line 62
    :cond_3d
    :goto_3d
    move p2, v2

    .line 63
    goto :goto_5c

    .line 64
    :cond_3f
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 66
    if-nez p2, :cond_32

    .line 68
    :goto_43
    goto :goto_3d

    .line 69
    :cond_44
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 71
    if-ne p2, v3, :cond_49

    .line 73
    goto :goto_30

    .line 74
    :cond_49
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_30

    .line 80
    goto :goto_54

    .line 81
    :cond_50
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 83
    if-ne p2, v3, :cond_55

    .line 85
    :goto_54
    goto :goto_43

    .line 86
    :cond_55
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_3d

    .line 92
    goto :goto_30

    .line 93
    :goto_5c
    if-ne p2, v0, :cond_5f

    .line 95
    return-object v1

    .line 96
    :cond_5f
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 102
    iget-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 104
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 106
    if-ne p2, v3, :cond_70

    .line 108
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    .line 111
    move-result v5

    .line 112
    goto :goto_74

    .line 113
    :cond_70
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    .line 116
    move-result v5

    .line 117
    :goto_74
    invoke-virtual {p0, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w(ILandroidx/recyclerview/widget/RecyclerView$y;)V

    .line 120
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)V

    .line 123
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 125
    iget v7, v6, Landroidx/recyclerview/widget/j;->d:I

    .line 127
    add-int/2addr v7, v5

    .line 128
    iput v7, v6, Landroidx/recyclerview/widget/j;->c:I

    .line 130
    const v7, 0x3eaaaaab

    .line 133
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 135
    invoke-virtual {v8}, Landroidx/recyclerview/widget/p;->l()I

    .line 138
    move-result v8

    .line 139
    int-to-float v8, v8

    .line 140
    mul-float/2addr v8, v7

    .line 141
    float-to-int v7, v8

    .line 142
    iput v7, v6, Landroidx/recyclerview/widget/j;->b:I

    .line 144
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 146
    iput-boolean v3, v6, Landroidx/recyclerview/widget/j;->h:Z

    .line 148
    const/4 v7, 0x0

    .line 149
    iput-boolean v7, v6, Landroidx/recyclerview/widget/j;->a:Z

    .line 151
    invoke-virtual {p0, p3, v6, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 154
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 156
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 158
    if-nez v4, :cond_a8

    .line 160
    invoke-virtual {v0, v5, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(II)Landroid/view/View;

    .line 163
    move-result-object p3

    .line 164
    if-eqz p3, :cond_a8

    .line 166
    if-eq p3, p1, :cond_a8

    .line 168
    return-object p3

    .line 169
    :cond_a8
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(I)Z

    .line 172
    move-result p3

    .line 173
    if-eqz p3, :cond_c3

    .line 175
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 177
    sub-int/2addr p3, v3

    .line 178
    :goto_b1
    if-ltz p3, :cond_d8

    .line 180
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 182
    aget-object p4, p4, p3

    .line 184
    invoke-virtual {p4, v5, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(II)Landroid/view/View;

    .line 187
    move-result-object p4

    .line 188
    if-eqz p4, :cond_c0

    .line 190
    if-eq p4, p1, :cond_c0

    .line 192
    return-object p4

    .line 193
    :cond_c0
    add-int/lit8 p3, p3, -0x1

    .line 195
    goto :goto_b1

    .line 196
    :cond_c3
    move p3, v7

    .line 197
    :goto_c4
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 199
    if-ge p3, p4, :cond_d8

    .line 201
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 203
    aget-object p4, p4, p3

    .line 205
    invoke-virtual {p4, v5, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(II)Landroid/view/View;

    .line 208
    move-result-object p4

    .line 209
    if-eqz p4, :cond_d5

    .line 211
    if-eq p4, p1, :cond_d5

    .line 213
    return-object p4

    .line 214
    :cond_d5
    add-int/lit8 p3, p3, 0x1

    .line 216
    goto :goto_c4

    .line 217
    :cond_d8
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 219
    xor-int/2addr p3, v3

    .line 220
    if-ne p2, v2, :cond_df

    .line 222
    move p4, v3

    .line 223
    goto :goto_e0

    .line 224
    :cond_df
    move p4, v7

    .line 225
    :goto_e0
    if-ne p3, p4, :cond_e4

    .line 227
    move p3, v3

    .line 228
    goto :goto_e5

    .line 229
    :cond_e4
    move p3, v7

    .line 230
    :goto_e5
    if-nez v4, :cond_fb

    .line 232
    if-eqz p3, :cond_ee

    .line 234
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e()I

    .line 237
    move-result p4

    .line 238
    goto :goto_f2

    .line 239
    :cond_ee
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f()I

    .line 242
    move-result p4

    .line 243
    :goto_f2
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 246
    move-result-object p4

    .line 247
    if-eqz p4, :cond_fb

    .line 249
    if-eq p4, p1, :cond_fb

    .line 251
    return-object p4

    .line 252
    :cond_fb
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p(I)Z

    .line 255
    move-result p2

    .line 256
    if-eqz p2, :cond_12a

    .line 258
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 260
    sub-int/2addr p2, v3

    .line 261
    :goto_104
    if-ltz p2, :cond_14d

    .line 263
    iget p4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 265
    if-ne p2, p4, :cond_10b

    .line 267
    goto :goto_127

    .line 268
    :cond_10b
    if-eqz p3, :cond_116

    .line 270
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 272
    aget-object p4, p4, p2

    .line 274
    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e()I

    .line 277
    move-result p4

    .line 278
    goto :goto_11e

    .line 279
    :cond_116
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 281
    aget-object p4, p4, p2

    .line 283
    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f()I

    .line 286
    move-result p4

    .line 287
    :goto_11e
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 290
    move-result-object p4

    .line 291
    if-eqz p4, :cond_127

    .line 293
    if-eq p4, p1, :cond_127

    .line 295
    return-object p4

    .line 296
    :cond_127
    :goto_127
    add-int/lit8 p2, p2, -0x1

    .line 298
    goto :goto_104

    .line 299
    :cond_12a
    :goto_12a
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 301
    if-ge v7, p2, :cond_14d

    .line 303
    if-eqz p3, :cond_139

    .line 305
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 307
    aget-object p2, p2, v7

    .line 309
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e()I

    .line 312
    move-result p2

    .line 313
    goto :goto_141

    .line 314
    :cond_139
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 316
    aget-object p2, p2, v7

    .line 318
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f()I

    .line 321
    move-result p2

    .line 322
    :goto_141
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 325
    move-result-object p2

    .line 326
    if-eqz p2, :cond_14a

    .line 328
    if-eq p2, p1, :cond_14a

    .line 330
    return-object p2

    .line 331
    :cond_14a
    add-int/lit8 v7, v7, 0x1

    .line 333
    goto :goto_12a

    .line 334
    :cond_14d
    return-object v1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_2f

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(Z)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v1, :cond_2f

    .line 21
    if-nez v0, :cond_17

    .line 23
    goto :goto_2f

    .line 24
    :cond_17
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 27
    move-result v1

    .line 28
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 31
    move-result v0

    .line 32
    if-ge v1, v0, :cond_28

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 40
    goto :goto_2f

    .line 41
    :cond_28
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 44
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 47
    nop

    .line 48
    :cond_2f
    :goto_2f
    return-void
.end method

.method public final onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(III)V

    .line 5
    return-void
.end method

.method public final onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b()V

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 9
    return-void
.end method

.method public final onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .registers 5

    .line 1
    const/16 p1, 0x8

    .line 3
    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(III)V

    .line 6
    return-void
.end method

.method public final onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(III)V

    .line 5
    return-void
.end method

.method public final onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 5

    .line 1
    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l(III)V

    .line 5
    return-void
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V

    .line 5
    return-void
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 7
    const/high16 p1, -0x80000000

    .line 9
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 14
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()V

    .line 19
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 3
    if-eqz v0, :cond_24

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 9
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_21

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    .line 17
    const/4 v2, 0x0

    .line 18
    iput v2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 20
    iput v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 22
    iput v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 24
    iput-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    .line 26
    iput v2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 28
    iput v2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 30
    iput-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 32
    iput-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 34
    :cond_21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 37
    :cond_24
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 7
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;)V

    .line 10
    return-object v1

    .line 11
    :cond_a
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 13
    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 16
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 18
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 20
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 22
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 24
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p:Z

    .line 26
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    .line 28
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_2e

    .line 33
    iget-object v3, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    .line 35
    if-eqz v3, :cond_2e

    .line 37
    iput-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 39
    array-length v3, v3

    .line 40
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 42
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    .line 44
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 46
    goto :goto_30

    .line 47
    :cond_2e
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 49
    :goto_30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 52
    move-result v1

    .line 53
    const/4 v3, -0x1

    .line 54
    if-lez v1, :cond_98

    .line 56
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 58
    if-eqz v1, :cond_40

    .line 60
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    .line 63
    move-result v1

    .line 64
    goto :goto_44

    .line 65
    :cond_40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    .line 68
    move-result v1

    .line 69
    :goto_44
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 71
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 73
    const/4 v4, 0x1

    .line 74
    if-eqz v1, :cond_50

    .line 76
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Z)Landroid/view/View;

    .line 79
    move-result-object v1

    .line 80
    goto :goto_54

    .line 81
    :cond_50
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e(Z)Landroid/view/View;

    .line 84
    move-result-object v1

    .line 85
    :goto_54
    if-nez v1, :cond_57

    .line 87
    goto :goto_5b

    .line 88
    :cond_57
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 91
    move-result v3

    .line 92
    :goto_5b
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 94
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 96
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 98
    new-array v1, v1, [I

    .line 100
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    .line 102
    :goto_65
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 104
    if-ge v2, v1, :cond_9e

    .line 106
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 108
    const/high16 v3, -0x80000000

    .line 110
    if-eqz v1, :cond_80

    .line 112
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 114
    aget-object v1, v1, v2

    .line 116
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h(I)I

    .line 119
    move-result v1

    .line 120
    if-eq v1, v3, :cond_91

    .line 122
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 124
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p;->g()I

    .line 127
    move-result v3

    .line 128
    goto :goto_90

    .line 129
    :cond_80
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 131
    aget-object v1, v1, v2

    .line 133
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(I)I

    .line 136
    move-result v1

    .line 137
    if-eq v1, v3, :cond_91

    .line 139
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 141
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p;->k()I

    .line 144
    move-result v3

    .line 145
    :goto_90
    sub-int/2addr v1, v3

    .line 146
    :cond_91
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    .line 148
    aput v1, v3, v2

    .line 150
    add-int/lit8 v2, v2, 0x1

    .line 152
    goto :goto_65

    .line 153
    :cond_98
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 155
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 157
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 159
    :cond_9e
    return-object v0
.end method

.method public final onScrollStateChanged(I)V
    .registers 2

    .line 1
    if-nez p1, :cond_5

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b()Z

    .line 6
    :cond_5
    return-void
.end method

.method public final p(I)Z
    .registers 6

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v0, :cond_13

    .line 8
    if-ne p1, v1, :cond_b

    .line 10
    move p1, v2

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move p1, v3

    .line 13
    :goto_c
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 15
    if-eq p1, v0, :cond_11

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v2, v3

    .line 19
    :goto_12
    return v2

    .line 20
    :cond_13
    if-ne p1, v1, :cond_17

    .line 22
    move p1, v2

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move p1, v3

    .line 25
    :goto_18
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 27
    if-ne p1, v0, :cond_1e

    .line 29
    move p1, v2

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move p1, v3

    .line 32
    :goto_1f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 35
    move-result v0

    .line 36
    if-ne p1, v0, :cond_26

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v2, v3

    .line 40
    :goto_27
    return v2
.end method

.method public final q(ILandroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lez p1, :cond_9

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i()I

    .line 7
    move-result v1

    .line 8
    move v2, v0

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    const/4 v1, -0x1

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h()I

    .line 14
    move-result v2

    .line 15
    move v4, v2

    .line 16
    move v2, v1

    .line 17
    move v1, v4

    .line 18
    :goto_11
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 20
    iput-boolean v0, v3, Landroidx/recyclerview/widget/j;->a:Z

    .line 22
    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w(ILandroidx/recyclerview/widget/RecyclerView$y;)V

    .line 25
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u(I)V

    .line 28
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 30
    iget v0, p2, Landroidx/recyclerview/widget/j;->d:I

    .line 32
    add-int/2addr v1, v0

    .line 33
    iput v1, p2, Landroidx/recyclerview/widget/j;->c:I

    .line 35
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 38
    move-result p1

    .line 39
    iput p1, p2, Landroidx/recyclerview/widget/j;->b:I

    .line 41
    return-void
.end method

.method public final r(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/j;)V
    .registers 7

    .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/j;->a:Z

    .line 3
    if-eqz v0, :cond_86

    .line 5
    iget-boolean v0, p2, Landroidx/recyclerview/widget/j;->i:Z

    .line 7
    if-eqz v0, :cond_a

    .line 9
    goto/16 :goto_86

    .line 11
    :cond_a
    iget v0, p2, Landroidx/recyclerview/widget/j;->b:I

    .line 13
    const/4 v1, -0x1

    .line 14
    if-nez v0, :cond_20

    .line 16
    iget v0, p2, Landroidx/recyclerview/widget/j;->e:I

    .line 18
    if-ne v0, v1, :cond_1a

    .line 20
    iget p2, p2, Landroidx/recyclerview/widget/j;->g:I

    .line 22
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 25
    goto/16 :goto_86

    .line 27
    :cond_1a
    iget p2, p2, Landroidx/recyclerview/widget/j;->f:I

    .line 29
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 32
    goto :goto_86

    .line 33
    :cond_20
    iget v0, p2, Landroidx/recyclerview/widget/j;->e:I

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-ne v0, v1, :cond_56

    .line 39
    iget v0, p2, Landroidx/recyclerview/widget/j;->f:I

    .line 41
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 43
    aget-object v1, v1, v2

    .line 45
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(I)I

    .line 48
    move-result v1

    .line 49
    :goto_30
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 51
    if-ge v3, v2, :cond_42

    .line 53
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 55
    aget-object v2, v2, v3

    .line 57
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(I)I

    .line 60
    move-result v2

    .line 61
    if-le v2, v1, :cond_3f

    .line 63
    move v1, v2

    .line 64
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    .line 66
    goto :goto_30

    .line 67
    :cond_42
    sub-int/2addr v0, v1

    .line 68
    if-gez v0, :cond_48

    .line 70
    iget p2, p2, Landroidx/recyclerview/widget/j;->g:I

    .line 72
    goto :goto_52

    .line 73
    :cond_48
    iget v1, p2, Landroidx/recyclerview/widget/j;->g:I

    .line 75
    iget p2, p2, Landroidx/recyclerview/widget/j;->b:I

    .line 77
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 80
    move-result p2

    .line 81
    sub-int p2, v1, p2

    .line 83
    :goto_52
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 86
    goto :goto_86

    .line 87
    :cond_56
    iget v0, p2, Landroidx/recyclerview/widget/j;->g:I

    .line 89
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 91
    aget-object v1, v1, v2

    .line 93
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h(I)I

    .line 96
    move-result v1

    .line 97
    :goto_60
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 99
    if-ge v3, v2, :cond_72

    .line 101
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 103
    aget-object v2, v2, v3

    .line 105
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h(I)I

    .line 108
    move-result v2

    .line 109
    if-ge v2, v1, :cond_6f

    .line 111
    move v1, v2

    .line 112
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    .line 114
    goto :goto_60

    .line 115
    :cond_72
    iget v0, p2, Landroidx/recyclerview/widget/j;->g:I

    .line 117
    sub-int/2addr v1, v0

    .line 118
    if-gez v1, :cond_7a

    .line 120
    iget p2, p2, Landroidx/recyclerview/widget/j;->f:I

    .line 122
    goto :goto_83

    .line 123
    :cond_7a
    iget v0, p2, Landroidx/recyclerview/widget/j;->f:I

    .line 125
    iget p2, p2, Landroidx/recyclerview/widget/j;->b:I

    .line 127
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 130
    move-result p2

    .line 131
    add-int/2addr p2, v0

    .line 132
    :goto_83
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    .line 135
    :cond_86
    :goto_86
    return-void
.end method

.method public final resolveShouldLayoutReverse()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_12

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_c

    .line 12
    goto :goto_12

    .line 13
    :cond_c
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 15
    xor-int/2addr v0, v1

    .line 16
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    :goto_12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    .line 21
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 23
    :goto_16
    return-void
.end method

.method public final s(ILandroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_6
    if-ltz v0, :cond_60

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 15
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;)I

    .line 18
    move-result v3

    .line 19
    if-lt v3, p1, :cond_60

    .line 21
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 23
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/p;->o(Landroid/view/View;)I

    .line 26
    move-result v3

    .line 27
    if-lt v3, p1, :cond_60

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 35
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 37
    if-eqz v4, :cond_4a

    .line 39
    const/4 v3, 0x0

    .line 40
    move v4, v3

    .line 41
    :goto_28
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 43
    if-ge v4, v5, :cond_3c

    .line 45
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 47
    aget-object v5, v5, v4

    .line 49
    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v5

    .line 55
    if-ne v5, v1, :cond_39

    .line 57
    return-void

    .line 58
    :cond_39
    add-int/lit8 v4, v4, 0x1

    .line 60
    goto :goto_28

    .line 61
    :cond_3c
    :goto_3c
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 63
    if-ge v3, v4, :cond_5a

    .line 65
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 67
    aget-object v4, v4, v3

    .line 69
    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->l()V

    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_3c

    .line 75
    :cond_4a
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 77
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 82
    move-result v4

    .line 83
    if-ne v4, v1, :cond_55

    .line 85
    return-void

    .line 86
    :cond_55
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 88
    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->l()V

    .line 91
    :cond_5a
    invoke-virtual {p0, v2, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 94
    add-int/lit8 v0, v0, -0x1

    .line 96
    goto :goto_6

    .line 97
    :cond_60
    return-void
.end method

.method public final scrollBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_31

    .line 8
    if-nez p1, :cond_a

    .line 10
    goto :goto_31

    .line 11
    :cond_a
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q(ILandroidx/recyclerview/widget/RecyclerView$y;)V

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 16
    invoke-virtual {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 19
    move-result p3

    .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 22
    iget v0, v0, Landroidx/recyclerview/widget/j;->b:I

    .line 24
    if-ge v0, p3, :cond_1a

    .line 26
    goto :goto_1f

    .line 27
    :cond_1a
    if-gez p1, :cond_1e

    .line 29
    neg-int p1, p3

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move p1, p3

    .line 32
    :goto_1f
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 34
    neg-int v0, p1

    .line 35
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/p;->p(I)V

    .line 38
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 40
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o:Z

    .line 42
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 44
    iput v1, p3, Landroidx/recyclerview/widget/j;->b:I

    .line 46
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/j;)V

    .line 49
    return p1

    .line 50
    :cond_31
    :goto_31
    return v1
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final scrollToPosition(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 7
    if-eq v1, p1, :cond_13

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 15
    const/4 v1, -0x1

    .line 16
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 18
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 20
    :cond_13
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k:I

    .line 22
    const/high16 p1, -0x80000000

    .line 24
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l:I

    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 29
    return-void
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    .line 21
    const/4 v3, 0x1

    .line 22
    if-ne v0, v3, :cond_33

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 27
    move-result p1

    .line 28
    add-int/2addr p1, v2

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    .line 32
    move-result v0

    .line 33
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 36
    move-result p1

    .line 37
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 39
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 41
    mul-int/2addr p3, v0

    .line 42
    add-int/2addr p3, v1

    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    .line 46
    move-result v0

    .line 47
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 50
    move-result p2

    .line 51
    goto :goto_4e

    .line 52
    :cond_33
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 55
    move-result p1

    .line 56
    add-int/2addr p1, v1

    .line 57
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    .line 60
    move-result v0

    .line 61
    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 64
    move-result p2

    .line 65
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f:I

    .line 67
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 69
    mul-int/2addr p1, v0

    .line 70
    add-int/2addr p1, v2

    .line 71
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    .line 74
    move-result v0

    .line 75
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    .line 78
    move-result p1

    .line 79
    :goto_4e
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 82
    return-void
.end method

.method public final smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .registers 4

    .line 1
    new-instance p2, Landroidx/recyclerview/widget/k;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/k;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$x;->setTargetPosition(I)V

    .line 13
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 16
    return-void
.end method

.method public final supportsPredictiveItemAnimations()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public final t(ILandroidx/recyclerview/widget/RecyclerView$u;)V
    .registers 8

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_5d

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 14
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/p;->b(Landroid/view/View;)I

    .line 17
    move-result v2

    .line 18
    if-gt v2, p1, :cond_5d

    .line 20
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 22
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/p;->n(Landroid/view/View;)I

    .line 25
    move-result v2

    .line 26
    if-gt v2, p1, :cond_5d

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 34
    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 36
    const/4 v4, 0x1

    .line 37
    if-eqz v3, :cond_49

    .line 39
    move v2, v0

    .line 40
    :goto_27
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 42
    if-ge v2, v3, :cond_3b

    .line 44
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 46
    aget-object v3, v3, v2

    .line 48
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v3

    .line 54
    if-ne v3, v4, :cond_38

    .line 56
    return-void

    .line 57
    :cond_38
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_27

    .line 60
    :cond_3b
    :goto_3b
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 62
    if-ge v0, v2, :cond_59

    .line 64
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 66
    aget-object v2, v2, v0

    .line 68
    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->m()V

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 73
    goto :goto_3b

    .line 74
    :cond_49
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 76
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 81
    move-result v0

    .line 82
    if-ne v0, v4, :cond_54

    .line 84
    return-void

    .line 85
    :cond_54
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 87
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->m()V

    .line 90
    :cond_59
    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 93
    goto :goto_0

    .line 94
    :cond_5d
    return-void
.end method

.method public final u(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 3
    iput p1, v0, Landroidx/recyclerview/widget/j;->e:I

    .line 5
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, -0x1

    .line 9
    if-ne p1, v3, :cond_c

    .line 11
    move p1, v2

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    if-ne v1, p1, :cond_10

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move v2, v3

    .line 18
    :goto_11
    iput v2, v0, Landroidx/recyclerview/widget/j;->d:I

    .line 20
    return-void
.end method

.method public final v(II)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    .line 4
    if-ge v0, v1, :cond_1c

    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 8
    aget-object v1, v1, v0

    .line 10
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_12

    .line 18
    goto :goto_19

    .line 19
    :cond_12
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    .line 21
    aget-object v1, v1, v0

    .line 23
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;II)V

    .line 26
    :goto_19
    add-int/lit8 v0, v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1c
    return-void
.end method

.method public final w(ILandroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroidx/recyclerview/widget/j;->b:I

    .line 6
    iput p1, v0, Landroidx/recyclerview/widget/j;->c:I

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_2d

    .line 15
    iget p2, p2, Landroidx/recyclerview/widget/RecyclerView$y;->a:I

    .line 17
    const/4 v0, -0x1

    .line 18
    if-eq p2, v0, :cond_2d

    .line 20
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i:Z

    .line 22
    if-ge p2, p1, :cond_19

    .line 24
    move p1, v2

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move p1, v1

    .line 27
    :goto_1a
    if-ne v0, p1, :cond_24

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 31
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->l()I

    .line 34
    move-result p1

    .line 35
    move p2, v1

    .line 36
    goto :goto_2f

    .line 37
    :cond_24
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 39
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->l()I

    .line 42
    move-result p1

    .line 43
    move p2, p1

    .line 44
    move p1, v1

    .line 45
    goto :goto_2f

    .line 46
    :cond_2d
    move p1, v1

    .line 47
    move p2, p1

    .line 48
    :goto_2f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_4c

    .line 54
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 56
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 58
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p;->k()I

    .line 61
    move-result v3

    .line 62
    sub-int/2addr v3, p2

    .line 63
    iput v3, v0, Landroidx/recyclerview/widget/j;->f:I

    .line 65
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 67
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 69
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->g()I

    .line 72
    move-result v0

    .line 73
    add-int/2addr v0, p1

    .line 74
    iput v0, p2, Landroidx/recyclerview/widget/j;->g:I

    .line 76
    goto :goto_5c

    .line 77
    :cond_4c
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 79
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 81
    invoke-virtual {v3}, Landroidx/recyclerview/widget/p;->f()I

    .line 84
    move-result v3

    .line 85
    add-int/2addr v3, p1

    .line 86
    iput v3, v0, Landroidx/recyclerview/widget/j;->g:I

    .line 88
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 90
    neg-int p2, p2

    .line 91
    iput p2, p1, Landroidx/recyclerview/widget/j;->f:I

    .line 93
    :goto_5c
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g:Landroidx/recyclerview/widget/j;

    .line 95
    iput-boolean v1, p1, Landroidx/recyclerview/widget/j;->h:Z

    .line 97
    iput-boolean v2, p1, Landroidx/recyclerview/widget/j;->a:Z

    .line 99
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 101
    invoke-virtual {p2}, Landroidx/recyclerview/widget/p;->i()I

    .line 104
    move-result p2

    .line 105
    if-nez p2, :cond_73

    .line 107
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/p;

    .line 109
    invoke-virtual {p2}, Landroidx/recyclerview/widget/p;->f()I

    .line 112
    move-result p2

    .line 113
    if-nez p2, :cond_73

    .line 115
    move v1, v2

    .line 116
    :cond_73
    iput-boolean v1, p1, Landroidx/recyclerview/widget/j;->i:Z

    .line 118
    return-void
.end method

.method public final x(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;II)V
    .registers 8

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:I

    .line 3
    const/high16 v1, -0x80000000

    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne p2, v2, :cond_1d

    .line 9
    iget p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 11
    if-eq p2, v1, :cond_d

    .line 13
    goto :goto_12

    .line 14
    :cond_d
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c()V

    .line 17
    iget p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 19
    :goto_12
    add-int/2addr p2, v0

    .line 20
    if-gt p2, p3, :cond_31

    .line 22
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    .line 24
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 26
    invoke-virtual {p2, p1, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 29
    goto :goto_31

    .line 30
    :cond_1d
    iget p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 32
    if-eq p2, v1, :cond_22

    .line 34
    goto :goto_27

    .line 35
    :cond_22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b()V

    .line 38
    iget p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 40
    :goto_27
    sub-int/2addr p2, v0

    .line 41
    if-lt p2, p3, :cond_31

    .line 43
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j:Ljava/util/BitSet;

    .line 45
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 47
    invoke-virtual {p2, p1, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 50
    :cond_31
    :goto_31
    return-void
.end method
