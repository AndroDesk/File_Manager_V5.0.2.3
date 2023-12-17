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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lmiuix/navigation/NavigationLayout;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-direct {p0}, Lmiuix/internal/util/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/navigation/NavigationLayout;Lmiuix/navigation/NavigationLayout$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout$ViewDragCallback;-><init>(Lmiuix/navigation/NavigationLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5

    iget-object p3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {p3}, Lmiuix/navigation/NavigationLayout;->access$200(Lmiuix/navigation/NavigationLayout;)Z

    move-result p3

    if-eqz p3, :cond_14

    iget-object p3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    goto :goto_19

    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    neg-int p3, p3

    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {p1}, Lmiuix/navigation/NavigationLayout;->access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public onEdgeDragStarted(II)V
    .registers 4

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-virtual {p1}, Lmiuix/navigation/NavigationLayout;->getDrawerLockMode()I

    move-result p1

    if-nez p1, :cond_20

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {p1}, Lmiuix/navigation/NavigationLayout;->access$100(Lmiuix/navigation/NavigationLayout;)Lmiuix/internal/util/ViewDragHelper;

    move-result-object p1

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lmiuix/internal/util/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {p1}, Lmiuix/navigation/NavigationLayout;->access$1000(Lmiuix/navigation/NavigationLayout;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method

.method public onEdgeTouched(II)V
    .registers 5

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {p1}, Lmiuix/navigation/NavigationLayout;->access$1000(Lmiuix/navigation/NavigationLayout;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lmiuix/navigation/NavigationLayout$LayoutParams;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lmiuix/navigation/NavigationLayout$LayoutParams;->isPeeking:Z

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$1100(Lmiuix/navigation/NavigationLayout;)Lmiuix/navigation/NavigationLayout$NavigationListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    if-nez p1, :cond_25

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-virtual {v0}, Lmiuix/navigation/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$1100(Lmiuix/navigation/NavigationLayout;)Lmiuix/navigation/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/navigation/NavigationLayout$NavigationListener;->onDrawerOpened()V

    goto :goto_25

    :cond_1c
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$1100(Lmiuix/navigation/NavigationLayout;)Lmiuix/navigation/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/navigation/NavigationLayout$NavigationListener;->onDrawerClosed()V

    :cond_25
    :goto_25
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$1100(Lmiuix/navigation/NavigationLayout;)Lmiuix/navigation/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/navigation/NavigationLayout$NavigationListener;->onDrawerDragStateChanged(I)V

    :cond_2e
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    iget-object p3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {p3}, Lmiuix/navigation/NavigationLayout;->access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    move-result-object p3

    if-ne p1, p3, :cond_31

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {p1}, Lmiuix/navigation/NavigationLayout;->access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {p3}, Lmiuix/navigation/NavigationLayout;->access$200(Lmiuix/navigation/NavigationLayout;)Z

    move-result p3

    if-eqz p3, :cond_22

    iget-object p3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p3, p2

    goto :goto_24

    :cond_22
    add-int p3, p2, p1

    :goto_24
    int-to-float p2, p3

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {p1, p2}, Lmiuix/navigation/NavigationLayout;->access$800(Lmiuix/navigation/NavigationLayout;F)V

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_31
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 10

    iget-object p3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {p3}, Lmiuix/navigation/NavigationLayout;->access$900(Lmiuix/navigation/NavigationLayout;)F

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v1}, Lmiuix/navigation/NavigationLayout;->access$200(Lmiuix/navigation/NavigationLayout;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    iget-object v3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v3}, Lmiuix/navigation/NavigationLayout;->access$200(Lmiuix/navigation/NavigationLayout;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_2c

    :cond_2b
    neg-int v0, v0

    :goto_2c
    iget-object v3, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v3}, Lmiuix/navigation/NavigationLayout;->access$200(Lmiuix/navigation/NavigationLayout;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3b

    cmpg-float v3, p2, v5

    if-gez v3, :cond_40

    goto :goto_3f

    :cond_3b
    cmpl-float v3, p2, v5

    if-lez v3, :cond_40

    :goto_3f
    move v2, v4

    :cond_40
    if-nez v2, :cond_4e

    cmpl-float p2, p2, v5

    if-nez p2, :cond_4d

    const/high16 p2, 0x3f000000  # 0.5f

    cmpl-float p2, p3, p2

    if-lez p2, :cond_4d

    goto :goto_4e

    :cond_4d
    move v1, v0

    :cond_4e
    :goto_4e
    iget-object p2, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {p2}, Lmiuix/navigation/NavigationLayout;->access$100(Lmiuix/navigation/NavigationLayout;)Lmiuix/internal/util/ViewDragHelper;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v1, p1}, Lmiuix/internal/util/ViewDragHelper;->settleCapturedViewAt(II)Z

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 3

    iget-object p2, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {p2}, Lmiuix/navigation/NavigationLayout;->access$000(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_12

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$ViewDragCallback;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-virtual {p1}, Lmiuix/navigation/NavigationLayout;->getDrawerLockMode()I

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method
