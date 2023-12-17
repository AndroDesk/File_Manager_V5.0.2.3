.class public Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;
.super Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;
.source "GroupSpaceAroundDecoration.java"


# instance fields
.field private marginLeft:I

.field private marginRight:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0, p1, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p4}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;-><init>(III)V

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginLeft:I

    iput p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginRight:I

    iput p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->viewWidth:I

    new-array p1, p4, [I

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    return-void
.end method


# virtual methods
.method public onGetItemOffsetsFinished(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;II)V
    .registers 9

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginLeft:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginRight:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void

    :cond_e
    invoke-super/range {p0 .. p6}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->onGetItemOffsetsFinished(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;II)V

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginLeft:I

    sub-int/2addr p2, p3

    iget p4, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginRight:I

    sub-int/2addr p2, p4

    iget p5, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->viewWidth:I

    mul-int/2addr v0, p5

    sub-int/2addr p2, v0

    add-int/lit8 v0, p5, -0x1

    div-int/2addr p2, v0

    add-int/lit8 v0, p5, -0x1

    mul-int/2addr v0, p2

    add-int/2addr v0, p3

    add-int/2addr v0, p4

    div-int/2addr v0, p5

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result p3

    if-nez p6, :cond_4a

    if-eqz p3, :cond_3e

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginRight:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    aput v0, p1, p6

    goto :goto_88

    :cond_3e
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginLeft:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    aput v0, p1, p6

    goto :goto_88

    :cond_4a
    iget p4, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mSpanCount:I

    sub-int/2addr p4, v1

    if-ne p6, p4, :cond_69

    if-eqz p3, :cond_5d

    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginLeft:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    aput p2, p1, p6

    goto :goto_88

    :cond_5d
    iget p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;->marginRight:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    aput p2, p1, p6

    goto :goto_88

    :cond_69
    if-eqz p3, :cond_7a

    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    add-int/lit8 p4, p6, -0x1

    aget p4, p3, p4

    sub-int/2addr p2, p4

    iput p2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    aput v0, p3, p6

    goto :goto_88

    :cond_7a
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->mEndInset:[I

    add-int/lit8 p4, p6, -0x1

    aget p4, p3, p4

    sub-int/2addr p2, p4

    iput p2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    aput v0, p3, p6

    :goto_88
    return-void
.end method
