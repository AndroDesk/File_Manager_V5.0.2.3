.class public abstract Landroidx/recyclerview/widget/s;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RemixRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/s$a;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mMouseEvent:Z

.field private mMouseEventTime:J

.field private mScrollPointerId:I

.field private mSpringEnabled:Z

.field private mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/recyclerview/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Landroidx/recyclerview/widget/s;->mScrollPointerId:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/s;->mSpringEnabled:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroidx/recyclerview/widget/s;->mMouseEvent:Z

    const-wide/16 p1, 0x0

    .line 7
    iput-wide p1, p0, Landroidx/recyclerview/widget/s;->mMouseEventTime:J

    return-void
.end method

.method public static synthetic access$000(Landroidx/recyclerview/widget/s;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100(Landroidx/recyclerview/widget/s;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/s;->mSpringEnabled:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Landroidx/recyclerview/widget/s;)Lmiuix/animation/utils/VelocityMonitor;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/s;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 3
    return-object p0
.end method

.method private trackVelocity(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/s;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lmiuix/animation/utils/VelocityMonitor;

    .line 7
    invoke-direct {v0}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/s;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 12
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 19
    move-result v1

    .line 20
    if-eqz v0, :cond_5c

    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq v0, v2, :cond_36

    .line 25
    const/4 v2, 0x5

    .line 26
    if-eq v0, v2, :cond_61

    .line 28
    const/4 v2, 0x6

    .line 29
    if-eq v0, v2, :cond_1f

    .line 31
    goto :goto_6a

    .line 32
    :cond_1f
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 35
    move-result v0

    .line 36
    iget v2, p0, Landroidx/recyclerview/widget/s;->mScrollPointerId:I

    .line 38
    if-ne v0, v2, :cond_6a

    .line 40
    if-nez v1, :cond_2b

    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    const/4 v0, 0x0

    .line 45
    :goto_2c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 48
    move-result v0

    .line 49
    iput v0, p0, Landroidx/recyclerview/widget/s;->mScrollPointerId:I

    .line 51
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/s;->updateVelocity(Landroid/view/MotionEvent;I)V

    .line 54
    goto :goto_6a

    .line 55
    :cond_36
    iget v0, p0, Landroidx/recyclerview/widget/s;->mScrollPointerId:I

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 60
    move-result v0

    .line 61
    if-gez v0, :cond_58

    .line 63
    const-string p1, "Error processing scroll; pointer index for id "

    .line 65
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    move-result-object p1

    .line 69
    iget v0, p0, Landroidx/recyclerview/widget/s;->mScrollPointerId:I

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, " not found. Did any MotionEvents get skipped?"

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    const-string v0, "RecyclerView"

    .line 85
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 89
    :cond_58
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/s;->updateVelocity(Landroid/view/MotionEvent;I)V

    .line 92
    goto :goto_6a

    .line 93
    :cond_5c
    iget-object v0, p0, Landroidx/recyclerview/widget/s;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 95
    invoke-virtual {v0}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    .line 98
    :cond_61
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 101
    move-result v0

    .line 102
    iput v0, p0, Landroidx/recyclerview/widget/s;->mScrollPointerId:I

    .line 104
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/s;->updateVelocity(Landroid/view/MotionEvent;I)V

    .line 107
    :cond_6a
    :goto_6a
    return-void
.end method

.method private updateVelocity(Landroid/view/MotionEvent;I)V
    .registers 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    const/16 v4, 0x1d

    .line 8
    if-lt v0, v4, :cond_1f

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/s;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 12
    new-array v3, v3, [D

    .line 14
    invoke-static {p1, p2}, Landroidx/appcompat/widget/a0;->b(Landroid/view/MotionEvent;I)F

    .line 17
    move-result v4

    .line 18
    float-to-double v4, v4

    .line 19
    aput-wide v4, v3, v2

    .line 21
    invoke-static {p1, p2}, Landroidx/appcompat/widget/a0;->B(Landroid/view/MotionEvent;I)F

    .line 24
    move-result p1

    .line 25
    float-to-double p1, p1

    .line 26
    aput-wide p1, v3, v1

    .line 28
    invoke-virtual {v0, v3}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    .line 31
    goto :goto_34

    .line 32
    :cond_1f
    iget-object p2, p0, Landroidx/recyclerview/widget/s;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 34
    new-array v0, v3, [D

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 39
    move-result v3

    .line 40
    float-to-double v3, v3

    .line 41
    aput-wide v3, v0, v2

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 46
    move-result p1

    .line 47
    float-to-double v2, p1

    .line 48
    aput-wide v2, v0, v1

    .line 50
    invoke-virtual {p2, v0}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    .line 53
    :goto_34
    return-void
.end method


# virtual methods
.method public getSpringEnabled()Z
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Landroidx/recyclerview/widget/s;->mMouseEventTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0xa

    .line 10
    cmp-long v0, v0, v2

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-lez v0, :cond_11

    .line 16
    move v0, v1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v0, v2

    .line 19
    :goto_12
    iget-boolean v3, p0, Landroidx/recyclerview/widget/s;->mSpringEnabled:Z

    .line 21
    if-eqz v3, :cond_1d

    .line 23
    iget-boolean v3, p0, Landroidx/recyclerview/widget/s;->mMouseEvent:Z

    .line 25
    if-eqz v3, :cond_1e

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v1, v2

    .line 31
    :cond_1e
    :goto_1e
    return v1
.end method

.method public isOverScrolling()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    const/16 v0, 0x2002

    .line 3
    invoke-static {p1, v0}, La/b;->K(Landroid/view/MotionEvent;I)Z

    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/s;->mMouseEvent:Z

    .line 9
    if-eqz v0, :cond_10

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Landroidx/recyclerview/widget/s;->mMouseEventTime:J

    .line 17
    :cond_10
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    const/16 v0, 0x2002

    .line 3
    invoke-static {p1, v0}, La/b;->K(Landroid/view/MotionEvent;I)Z

    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/s;->mMouseEvent:Z

    .line 9
    if-eqz v0, :cond_10

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Landroidx/recyclerview/widget/s;->mMouseEventTime:J

    .line 17
    :cond_10
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 20
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public setOverScrollMode(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p1, v0, :cond_9

    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroidx/recyclerview/widget/s;->mSpringEnabled:Z

    .line 10
    :cond_9
    return-void
.end method

.method public setSpringEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/s;->mSpringEnabled:Z

    .line 3
    return-void
.end method
