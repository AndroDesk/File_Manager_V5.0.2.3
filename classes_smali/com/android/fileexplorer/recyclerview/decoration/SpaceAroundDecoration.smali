.class public abstract Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SpaceAroundDecoration.java"


# instance fields
.field private mAvgUsedWidth:I

.field public mEndInset:[I

.field private mMarginMiddle:I

.field private mMarginSide:I

.field public mSpanCount:I


# direct methods
.method public constructor <init>(III)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginSide:I

    .line 6
    iput p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginMiddle:I

    .line 8
    iput p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    .line 10
    new-array v0, p3, [I

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    .line 14
    add-int/lit8 v0, p3, -0x1

    .line 16
    mul-int/2addr v0, p2

    .line 17
    mul-int/lit8 p1, p1, 0x2

    .line 19
    add-int/2addr p1, v0

    .line 20
    div-int/2addr p1, p3

    .line 21
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mAvgUsedWidth:I

    .line 23
    return-void
.end method

.method public static getDesirdWidth(IIII)I
    .registers 5

    .line 1
    add-int/lit8 v0, p3, -0x1

    .line 3
    mul-int/2addr v0, p2

    .line 4
    mul-int/lit8 p1, p1, 0x2

    .line 6
    add-int/2addr p1, v0

    .line 7
    div-int/2addr p1, p3

    .line 8
    sub-int/2addr p0, p1

    .line 9
    div-int/2addr p0, p3

    .line 10
    return p0
.end method


# virtual methods
.method public changeSpanCount(I)V
    .registers 4

    .line 1
    new-array v0, p1, [I

    .line 3
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    .line 7
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginMiddle:I

    .line 9
    add-int/lit8 v1, p1, -0x1

    .line 11
    mul-int/2addr v1, v0

    .line 12
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginSide:I

    .line 14
    mul-int/lit8 v0, v0, 0x2

    .line 16
    add-int/2addr v0, v1

    .line 17
    div-int/2addr v0, p1

    .line 18
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mAvgUsedWidth:I

    .line 20
    return-void
.end method

.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 12

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 4
    move-result v5

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne v5, v0, :cond_15

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 11
    move-result-object p2

    .line 12
    instance-of p3, p2, Landroid/graphics/Rect;

    .line 14
    if-eqz p3, :cond_14

    .line 16
    check-cast p2, Landroid/graphics/Rect;

    .line 18
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 21
    :cond_14
    return-void

    .line 22
    :cond_15
    invoke-virtual {p0, p2, p3, v5}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->isTargetView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1c

    .line 28
    return-void

    .line 29
    :cond_1c
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, p2, p3, v5}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->getSpanIndex(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)I

    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_44

    .line 39
    if-eqz v0, :cond_36

    .line 41
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginSide:I

    .line 43
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 45
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mAvgUsedWidth:I

    .line 47
    sub-int/2addr v1, v0

    .line 48
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    .line 52
    aput v1, v0, v6

    .line 54
    goto :goto_6b

    .line 55
    :cond_36
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginSide:I

    .line 57
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 59
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mAvgUsedWidth:I

    .line 61
    sub-int/2addr v1, v0

    .line 62
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 64
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    .line 66
    aput v1, v0, v6

    .line 68
    goto :goto_6b

    .line 69
    :cond_44
    if-eqz v0, :cond_59

    .line 71
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginMiddle:I

    .line 73
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    .line 75
    add-int/lit8 v2, v6, -0x1

    .line 77
    aget v2, v1, v2

    .line 79
    sub-int/2addr v0, v2

    .line 80
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 82
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mAvgUsedWidth:I

    .line 84
    sub-int/2addr v2, v0

    .line 85
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 87
    aput v2, v1, v6

    .line 89
    goto :goto_6b

    .line 90
    :cond_59
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mMarginMiddle:I

    .line 92
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    .line 94
    add-int/lit8 v2, v6, -0x1

    .line 96
    aget v2, v1, v2

    .line 98
    sub-int/2addr v0, v2

    .line 99
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 101
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mAvgUsedWidth:I

    .line 103
    sub-int/2addr v2, v0

    .line 104
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 106
    aput v2, v1, v6

    .line 108
    :goto_6b
    move-object v0, p0

    .line 109
    move-object v1, p1

    .line 110
    move-object v2, p2

    .line 111
    move-object v3, p3

    .line 112
    move-object v4, p4

    .line 113
    invoke-virtual/range {v0 .. v6}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->onGetItemOffsetsFinished(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;II)V

    .line 116
    new-instance p3, Landroid/graphics/Rect;

    .line 118
    invoke-direct {p3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 121
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public abstract getSpanIndex(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)I
.end method

.method public abstract isTargetView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;I)Z
.end method

.method public onGetItemOffsetsFinished(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;II)V
    .registers 7

    return-void
.end method
