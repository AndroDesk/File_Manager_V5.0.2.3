.class Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;
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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->verticalOffsetEnabled:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->horizontalOffsetEnabled:Z

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public applyOffsets()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    iget v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->offsetTop:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->layoutTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    iget v1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->offsetLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->layoutLeft:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method

.method public getLayoutLeft()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->layoutLeft:I

    return v0
.end method

.method public getLayoutTop()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->layoutTop:I

    return v0
.end method

.method public getLeftAndRightOffset()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->offsetLeft:I

    return v0
.end method

.method public getTopAndBottomOffset()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->offsetTop:I

    return v0
.end method

.method public isHorizontalOffsetEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->horizontalOffsetEnabled:Z

    return v0
.end method

.method public isVerticalOffsetEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->verticalOffsetEnabled:Z

    return v0
.end method

.method public onViewLayout()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->layoutTop:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->layoutLeft:I

    return-void
.end method

.method public setHorizontalOffsetEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->horizontalOffsetEnabled:Z

    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->horizontalOffsetEnabled:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->offsetLeft:I

    if-eq v0, p1, :cond_f

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->offsetLeft:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->applyOffsets()V

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public setTopAndBottomOffset(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->verticalOffsetEnabled:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->offsetTop:I

    if-eq v0, p1, :cond_f

    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->offsetTop:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->applyOffsets()V

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public setVerticalOffsetEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetHelper;->verticalOffsetEnabled:Z

    return-void
.end method