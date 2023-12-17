.class Lcom/google/android/material/appbar/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private horizontalOffsetEnabled:Z

.field private layoutLeft:I

.field private layoutTop:I

.field private offsetLeft:I

.field private offsetTop:I

.field private verticalOffsetEnabled:Z

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->verticalOffsetEnabled:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->horizontalOffsetEnabled:Z

    .line 9
    iput-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    .line 11
    return-void
.end method


# virtual methods
.method public applyOffsets()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    .line 3
    iget v1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 8
    move-result v2

    .line 9
    iget v3, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    .line 11
    sub-int/2addr v2, v3

    .line 12
    sub-int/2addr v1, v2

    .line 13
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 18
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    .line 20
    iget v1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 25
    move-result v2

    .line 26
    iget v3, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutLeft:I

    .line 28
    sub-int/2addr v2, v3

    .line 29
    sub-int/2addr v1, v2

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 33
    return-void
.end method

.method public getLayoutLeft()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutLeft:I

    .line 3
    return v0
.end method

.method public getLayoutTop()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    .line 3
    return v0
.end method

.method public getLeftAndRightOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    .line 3
    return v0
.end method

.method public getTopAndBottomOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    .line 3
    return v0
.end method

.method public isHorizontalOffsetEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->horizontalOffsetEnabled:Z

    .line 3
    return v0
.end method

.method public isVerticalOffsetEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->verticalOffsetEnabled:Z

    .line 3
    return v0
.end method

.method public onViewLayout()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    .line 9
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutLeft:I

    .line 17
    return-void
.end method

.method public setHorizontalOffsetEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->horizontalOffsetEnabled:Z

    .line 3
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->horizontalOffsetEnabled:Z

    .line 3
    if-eqz v0, :cond_f

    .line 5
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    .line 7
    if-eq v0, p1, :cond_f

    .line 9
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->applyOffsets()V

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public setTopAndBottomOffset(I)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->verticalOffsetEnabled:Z

    .line 3
    if-eqz v0, :cond_f

    .line 5
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    .line 7
    if-eq v0, p1, :cond_f

    .line 9
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->applyOffsets()V

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public setVerticalOffsetEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->verticalOffsetEnabled:Z

    .line 3
    return-void
.end method
