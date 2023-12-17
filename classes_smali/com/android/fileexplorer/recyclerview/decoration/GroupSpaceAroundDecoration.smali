.class public Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;
.super Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;
.source "GroupSpaceAroundDecoration.java"


# instance fields
.field private marginLeft:I

.field private marginRight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0, p4}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;-><init>(III)V

    .line 3
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginLeft:I

    .line 4
    iput p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginRight:I

    .line 5
    iput p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->viewWidth:I

    .line 6
    new-array p1, p4, [I

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    return-void
.end method


# virtual methods
.method public onGetItemOffsetsFinished(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;II)V
    .registers 9

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_e

    .line 6
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginLeft:I

    .line 8
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 10
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginRight:I

    .line 12
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-super/range {p0 .. p6}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->onGetItemOffsetsFinished(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;II)V

    .line 18
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 21
    move-result p2

    .line 22
    iget p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginLeft:I

    .line 24
    sub-int/2addr p2, p3

    .line 25
    iget p4, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginRight:I

    .line 27
    sub-int/2addr p2, p4

    .line 28
    iget p5, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    .line 30
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->viewWidth:I

    .line 32
    mul-int/2addr v0, p5

    .line 33
    sub-int/2addr p2, v0

    .line 34
    add-int/lit8 v0, p5, -0x1

    .line 36
    div-int/2addr p2, v0

    .line 37
    add-int/lit8 v0, p5, -0x1

    .line 39
    mul-int/2addr v0, p2

    .line 40
    add-int/2addr v0, p3

    .line 41
    add-int/2addr v0, p4

    .line 42
    div-int/2addr v0, p5

    .line 43
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    .line 46
    move-result p3

    .line 47
    if-nez p6, :cond_4a

    .line 49
    if-eqz p3, :cond_3e

    .line 51
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginRight:I

    .line 53
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 55
    sub-int/2addr v0, p2

    .line 56
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 58
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    .line 60
    aput v0, p1, p6

    .line 62
    goto :goto_88

    .line 63
    :cond_3e
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginLeft:I

    .line 65
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 67
    sub-int/2addr v0, p2

    .line 68
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 70
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    .line 72
    aput v0, p1, p6

    .line 74
    goto :goto_88

    .line 75
    :cond_4a
    iget p4, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    .line 77
    sub-int/2addr p4, v1

    .line 78
    if-ne p6, p4, :cond_69

    .line 80
    if-eqz p3, :cond_5d

    .line 82
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginLeft:I

    .line 84
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 86
    sub-int/2addr v0, p2

    .line 87
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 89
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    .line 91
    aput p2, p1, p6

    .line 93
    goto :goto_88

    .line 94
    :cond_5d
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginRight:I

    .line 96
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 98
    sub-int/2addr v0, p2

    .line 99
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 101
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    .line 103
    aput p2, p1, p6

    .line 105
    goto :goto_88

    .line 106
    :cond_69
    if-eqz p3, :cond_7a

    .line 108
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    .line 110
    add-int/lit8 p4, p6, -0x1

    .line 112
    aget p4, p3, p4

    .line 114
    sub-int/2addr p2, p4

    .line 115
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 117
    sub-int/2addr v0, p2

    .line 118
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 120
    aput v0, p3, p6

    .line 122
    goto :goto_88

    .line 123
    :cond_7a
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    .line 125
    add-int/lit8 p4, p6, -0x1

    .line 127
    aget p4, p3, p4

    .line 129
    sub-int/2addr p2, p4

    .line 130
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 132
    sub-int/2addr v0, p2

    .line 133
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 135
    aput v0, p3, p6

    .line 137
    :goto_88
    return-void
.end method
