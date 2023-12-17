.class Lmiuix/navigation/NavigationLayout$ViewDragCallback;
.super Lmiuix/internal/util/ViewDragHelper$Callback;
.source "NavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigation/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewDragCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigation/NavigationLayout;


# direct methods
.method private constructor <init>(Lmiuix/navigation/NavigationLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-direct {p0}, Lmiuix/internal/util/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/navigation/NavigationLayout;Lmiuix/navigation/NavigationLayout$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout$ViewDragCallback;-><init>(Lmiuix/navigation/NavigationLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5

    .line 1
    iget-object p3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 3
    invoke-static {p3}, Lmiuix/navigation/NavigationLayout;->access$200(Lmiuix/navigation/NavigationLayout;)Z

    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_14

    .line 9
    iget-object p3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 11
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 14
    move-result p3

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 18
    move-result v0

    .line 19
    sub-int/2addr p3, v0

    .line 20
    goto :goto_19

    .line 21
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 24
    move-result p3

    .line 25
    neg-int p3, p3

    .line 26
    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 29
    move-result p1

    .line 30
    add-int/2addr p1, p3

    .line 31
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result p1

    .line 35
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 3
    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    if-ne p1, v0, :cond_13

    .line 9
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 11
    invoke-static {p1}, Lmiuix/navigation/NavigationLayout;->access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 18
    move-result p1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    return p1
.end method

.method public onEdgeDragStarted(II)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 3
    invoke-virtual {p1}, Lmiuix/navigation/NavigationLayout;->getDrawerLockMode()I

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_20

    .line 9
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 11
    invoke-static {p1}, Lmiuix/navigation/NavigationLayout;->access$100(Lmiuix/navigation/NavigationLayout;)Lmiuix/internal/util/ViewDragHelper;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 17
    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0, p2}, Lmiuix/internal/util/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 24
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 26
    invoke-static {p1}, Lmiuix/navigation/NavigationLayout;->access$1000(Lmiuix/navigation/NavigationLayout;)Ljava/lang/Runnable;

    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 33
    :cond_20
    return-void
.end method

.method public onEdgeTouched(II)V
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 3
    invoke-static {p1}, Lmiuix/navigation/NavigationLayout;->access$1000(Lmiuix/navigation/NavigationLayout;)Ljava/lang/Runnable;

    .line 6
    move-result-object p2

    .line 7
    const-wide/16 v0, 0x96

    .line 9
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lmiuix/navigation/NavigationLayout$LayoutParams;

    .line 7
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Lmiuix/navigation/NavigationLayout$LayoutParams;->isPeeking:Z

    .line 10
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 3
    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$1100(Lmiuix/navigation/NavigationLayout;)Lmiuix/navigation/NavigationLayout$NavigationListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2e

    .line 9
    if-nez p1, :cond_25

    .line 11
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 13
    invoke-virtual {v0}, Lmiuix/navigation/NavigationLayout;->isNavigationDrawerOpen()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1c

    .line 19
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 21
    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$1100(Lmiuix/navigation/NavigationLayout;)Lmiuix/navigation/NavigationLayout$NavigationListener;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lmiuix/navigation/NavigationLayout$NavigationListener;->onDrawerOpened()V

    .line 28
    goto :goto_25

    .line 29
    :cond_1c
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 31
    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$1100(Lmiuix/navigation/NavigationLayout;)Lmiuix/navigation/NavigationLayout$NavigationListener;

    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Lmiuix/navigation/NavigationLayout$NavigationListener;->onDrawerClosed()V

    .line 38
    :cond_25
    :goto_25
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 40
    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$1100(Lmiuix/navigation/NavigationLayout;)Lmiuix/navigation/NavigationLayout$NavigationListener;

    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, p1}, Lmiuix/navigation/NavigationLayout$NavigationListener;->onDrawerDragStateChanged(I)V

    .line 47
    :cond_2e
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    .line 1
    iget-object p3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 3
    invoke-static {p3}, Lmiuix/navigation/NavigationLayout;->access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    .line 6
    move-result-object p3

    .line 7
    if-ne p1, p3, :cond_31

    .line 9
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 11
    invoke-static {p1}, Lmiuix/navigation/NavigationLayout;->access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 18
    move-result p1

    .line 19
    iget-object p3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 21
    invoke-static {p3}, Lmiuix/navigation/NavigationLayout;->access$200(Lmiuix/navigation/NavigationLayout;)Z

    .line 24
    move-result p3

    .line 25
    if-eqz p3, :cond_22

    .line 27
    iget-object p3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 29
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 32
    move-result p3

    .line 33
    sub-int/2addr p3, p2

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    add-int p3, p2, p1

    .line 37
    :goto_24
    int-to-float p2, p3

    .line 38
    int-to-float p1, p1

    .line 39
    div-float/2addr p2, p1

    .line 40
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 42
    invoke-static {p1, p2}, Lmiuix/navigation/NavigationLayout;->access$800(Lmiuix/navigation/NavigationLayout;F)V

    .line 45
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 50
    :cond_31
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 10

    .line 1
    iget-object p3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 3
    invoke-static {p3}, Lmiuix/navigation/NavigationLayout;->access$900(Lmiuix/navigation/NavigationLayout;)F

    .line 6
    move-result p3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 13
    invoke-static {v1}, Lmiuix/navigation/NavigationLayout;->access$200(Lmiuix/navigation/NavigationLayout;)Z

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1b

    .line 20
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 25
    move-result v1

    .line 26
    sub-int/2addr v1, v0

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v1, v2

    .line 29
    :goto_1c
    iget-object v3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 31
    invoke-static {v3}, Lmiuix/navigation/NavigationLayout;->access$200(Lmiuix/navigation/NavigationLayout;)Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2b

    .line 37
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 42
    move-result v0

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    neg-int v0, v0

    .line 45
    :goto_2c
    iget-object v3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 47
    invoke-static {v3}, Lmiuix/navigation/NavigationLayout;->access$200(Lmiuix/navigation/NavigationLayout;)Z

    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x1

    .line 52
    const/4 v5, 0x0

    .line 53
    if-eqz v3, :cond_3b

    .line 55
    cmpg-float v3, p2, v5

    .line 57
    if-gez v3, :cond_40

    .line 59
    goto :goto_3f

    .line 60
    :cond_3b
    cmpl-float v3, p2, v5

    .line 62
    if-lez v3, :cond_40

    .line 64
    :goto_3f
    move v2, v4

    .line 65
    :cond_40
    if-nez v2, :cond_4e

    .line 67
    cmpl-float p2, p2, v5

    .line 69
    if-nez p2, :cond_4d

    .line 71
    const/high16 p2, 0x3f000000  # 0.5f

    .line 73
    cmpl-float p2, p3, p2

    .line 75
    if-lez p2, :cond_4d

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move v1, v0

    .line 79
    :cond_4e
    :goto_4e
    iget-object p2, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 81
    invoke-static {p2}, Lmiuix/navigation/NavigationLayout;->access$100(Lmiuix/navigation/NavigationLayout;)Lmiuix/internal/util/ViewDragHelper;

    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 88
    move-result p1

    .line 89
    invoke-virtual {p2, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 92
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 97
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 3

    .line 1
    iget-object p2, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 3
    invoke-static {p2}, Lmiuix/navigation/NavigationLayout;->access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    .line 6
    move-result-object p2

    .line 7
    if-ne p1, p2, :cond_12

    .line 9
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 11
    invoke-virtual {p1}, Lmiuix/navigation/NavigationLayout;->getDrawerLockMode()I

    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_12

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    return p1
.end method
