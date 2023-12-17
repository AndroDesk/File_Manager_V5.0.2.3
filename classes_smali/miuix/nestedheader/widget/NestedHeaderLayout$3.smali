.class Lmiuix/nestedheader/widget/NestedHeaderLayout$3;
.super Ljava/lang/Object;
.source "NestedHeaderLayout.java"

# interfaces
.implements Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/nestedheader/widget/NestedHeaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V
    .registers 2

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private autoAdsorptionForOverScrollTo()V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$1102(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v1

    iget-object v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iget v5, v5, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v7, v3, [F

    fill-array-data v7, :array_56

    const/4 v8, -0x2

    invoke-virtual {v5, v8, v7}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    new-array v6, v6, [Lmiuix/animation/listener/TransitionListener;

    new-instance v7, Lmiuix/nestedheader/widget/NestedHeaderLayout$3$1;

    invoke-direct {v7, p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3$1;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout$3;Ljava/lang/String;)V

    aput-object v7, v6, v1

    invoke-virtual {v5, v6}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_56
    .array-data 4
        0x3f800000  # 1.0f
        0x3ecccccd  # 0.4f
    .end array-data
.end method

.method private updateAdsorption()V
    .registers 8

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    move-result v1

    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iget v3, v2, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v3, v0

    invoke-virtual {v2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    move-result v2

    if-eqz v2, :cond_63

    if-ge v2, v1, :cond_63

    if-le v2, v0, :cond_63

    const/4 v0, 0x0

    iget-object v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v4}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$800(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    move-result v4

    if-eqz v4, :cond_47

    int-to-float v4, v2

    int-to-float v5, v3

    const v6, 0x3ea8f5c3  # 0.33f

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_47

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isHeaderOpen()Z

    move-result v0

    if-nez v0, :cond_40

    if-lt v2, v3, :cond_39

    goto :goto_40

    :cond_39
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v1

    goto :goto_5d

    :cond_40
    :goto_40
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    move-result v1

    goto :goto_5d

    :cond_47
    int-to-float v3, v2

    int-to-float v4, v1

    const/high16 v5, 0x3f000000  # 0.5f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_51

    goto :goto_5d

    :cond_51
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$800(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    move-result v1

    if-nez v1, :cond_5c

    if-gez v2, :cond_5c

    return-void

    :cond_5c
    move v1, v0

    :goto_5d
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$900(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V

    goto :goto_6c

    :cond_63
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iget v0, v0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    if-lez v0, :cond_6c

    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->autoAdsorptionForOverScrollTo()V

    :cond_6c
    :goto_6c
    return-void
.end method

.method private updateTag()V
    .registers 4

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$1102(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private updateTouch(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$1002(Lmiuix/nestedheader/widget/NestedHeaderLayout;Z)Z

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$1000(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateTag()V

    :cond_10
    return-void
.end method


# virtual methods
.method public onStartNestedScroll(I)V
    .registers 2

    if-nez p1, :cond_7

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateTouch(Z)V

    goto :goto_a

    :cond_7
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateTag()V

    :goto_a
    return-void
.end method

.method public onStopNestedScroll(I)V
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateTouch(Z)V

    :cond_6
    return-void
.end method

.method public onStopNestedScrollAccepted(I)V
    .registers 2

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$700(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateAdsorption()V

    return-void
.end method
