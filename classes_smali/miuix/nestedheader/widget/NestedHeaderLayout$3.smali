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
.method public constructor <init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method private autoAdsorptionForOverScrollTo()V
    .registers 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 11
    invoke-static {v1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$1102(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    const/4 v1, 0x0

    .line 15
    new-array v2, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v4, v3, [Ljava/lang/Object;

    .line 24
    aput-object v0, v4, v1

    .line 26
    iget-object v5, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 28
    iget v5, v5, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v5

    .line 34
    const/4 v6, 0x1

    .line 35
    aput-object v5, v4, v6

    .line 37
    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 40
    move-result-object v2

    .line 41
    const/4 v4, 0x3

    .line 42
    new-array v4, v4, [Ljava/lang/Object;

    .line 44
    aput-object v0, v4, v1

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v5

    .line 50
    aput-object v5, v4, v6

    .line 52
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 54
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 57
    new-array v7, v3, [F

    .line 59
    fill-array-data v7, :array_56

    .line 62
    const/4 v8, -0x2

    .line 63
    invoke-virtual {v5, v8, v7}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 66
    move-result-object v5

    .line 67
    new-array v6, v6, [Lmiuix/animation/listener/TransitionListener;

    .line 69
    new-instance v7, Lmiuix/nestedheader/widget/NestedHeaderLayout$3$1;

    .line 71
    invoke-direct {v7, p0, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3$1;-><init>(Lmiuix/nestedheader/widget/NestedHeaderLayout$3;Ljava/lang/String;)V

    .line 74
    aput-object v7, v6, v1

    .line 76
    invoke-virtual {v5, v6}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 79
    move-result-object v0

    .line 80
    aput-object v0, v4, v3

    .line 82
    invoke-interface {v2, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 85
    return-void

    .line 86
    nop

    .line 87
    :array_56
    .array-data 4
        0x3f800000  # 1.0f
        0x3ecccccd  # 0.4f
    .end array-data
.end method

.method private updateAdsorption()V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 3
    invoke-virtual {v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 9
    invoke-virtual {v1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingTo()I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 15
    iget v3, v2, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 17
    add-int/2addr v3, v0

    .line 18
    invoke-virtual {v2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingProgress()I

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_63

    .line 24
    if-ge v2, v1, :cond_63

    .line 26
    if-le v2, v0, :cond_63

    .line 28
    const/4 v0, 0x0

    .line 29
    iget-object v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 31
    invoke-static {v4}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$800(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_47

    .line 37
    int-to-float v4, v2

    .line 38
    int-to-float v5, v3

    .line 39
    const v6, 0x3ea8f5c3  # 0.33f

    .line 42
    mul-float/2addr v5, v6

    .line 43
    cmpg-float v4, v4, v5

    .line 45
    if-gez v4, :cond_47

    .line 47
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 49
    invoke-virtual {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->isHeaderOpen()Z

    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_40

    .line 55
    if-lt v2, v3, :cond_39

    .line 57
    goto :goto_40

    .line 58
    :cond_39
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 60
    invoke-virtual {v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    .line 63
    move-result v1

    .line 64
    goto :goto_5d

    .line 65
    :cond_40
    :goto_40
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 67
    invoke-virtual {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->getHeaderCloseProgress()I

    .line 70
    move-result v1

    .line 71
    goto :goto_5d

    .line 72
    :cond_47
    int-to-float v3, v2

    .line 73
    int-to-float v4, v1

    .line 74
    const/high16 v5, 0x3f000000  # 0.5f

    .line 76
    mul-float/2addr v4, v5

    .line 77
    cmpl-float v3, v3, v4

    .line 79
    if-ltz v3, :cond_51

    .line 81
    goto :goto_5d

    .line 82
    :cond_51
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 84
    invoke-static {v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$800(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_5c

    .line 90
    if-gez v2, :cond_5c

    .line 92
    return-void

    .line 93
    :cond_5c
    move v1, v0

    .line 94
    :goto_5d
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 96
    invoke-static {v0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$900(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V

    .line 99
    goto :goto_6c

    .line 100
    :cond_63
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 102
    iget v0, v0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    .line 104
    if-lez v0, :cond_6c

    .line 106
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->autoAdsorptionForOverScrollTo()V

    .line 109
    :cond_6c
    :goto_6c
    return-void
.end method

.method private updateTag()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$1102(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    return-void
.end method

.method private updateTouch(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 3
    invoke-static {v0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$1002(Lmiuix/nestedheader/widget/NestedHeaderLayout;Z)Z

    .line 6
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 8
    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$1000(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_10

    .line 14
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateTag()V

    .line 17
    :cond_10
    return-void
.end method


# virtual methods
.method public onStartNestedScroll(I)V
    .registers 2

    .line 1
    if-nez p1, :cond_7

    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateTouch(Z)V

    .line 7
    goto :goto_a

    .line 8
    :cond_7
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateTag()V

    .line 11
    :goto_a
    return-void
.end method

.method public onStopNestedScroll(I)V
    .registers 2

    .line 1
    if-nez p1, :cond_6

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateTouch(Z)V

    .line 7
    :cond_6
    return-void
.end method

.method public onStopNestedScrollAccepted(I)V
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 3
    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$700(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout$3;->updateAdsorption()V

    .line 13
    return-void
.end method
