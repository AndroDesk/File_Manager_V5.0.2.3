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
.field private static final INVALID_POINTER:I


# instance fields
.field private mMouseEvent:Z

.field private mMouseEventTime:J

.field private mScrollPointerId:I

.field private mSpringEnabled:Z

.field private mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Landroidx/recyclerview/widget/s;->INVALID_POINTER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lmiuix/recyclerview/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/s;->mScrollPointerId:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/s;->mSpringEnabled:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/s;->mMouseEvent:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/recyclerview/widget/s;->mMouseEventTime:J

    return-void
.end method

.method public static synthetic access$000(Landroidx/recyclerview/widget/s;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Landroidx/recyclerview/widget/s;)Z
    .registers 1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/s;->mSpringEnabled:Z

    return p0
.end method

.method public static synthetic access$200(Landroidx/recyclerview/widget/s;)Lmiuix/animation/utils/VelocityMonitor;
    .registers 1

    iget-object p0, p0, Landroidx/recyclerview/widget/s;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    return-object p0
.end method

.method private trackVelocity(Landroid/view/MotionEvent;)V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/s;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    if-nez v0, :cond_b

    new-instance v0, Lmiuix/animation/utils/VelocityMonitor;

    invoke-direct {v0}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/s;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-eqz v0, :cond_5c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_36

    const/4 v2, 0x5

    if-eq v0, v2, :cond_61

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1f

    goto :goto_6a

    :cond_1f
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v2, p0, Landroidx/recyclerview/widget/s;->mScrollPointerId:I

    if-ne v0, v2, :cond_6a

    if-nez v1, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/s;->mScrollPointerId:I

    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/s;->updateVelocity(Landroid/view/MotionEvent;I)V

    goto :goto_6a

    :cond_36
    iget v0, p0, Landroidx/recyclerview/widget/s;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_58

    const-string p1, "Error processing scroll; pointer index for id "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroidx/recyclerview/widget/s;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_58
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/s;->updateVelocity(Landroid/view/MotionEvent;I)V

    goto :goto_6a

    :cond_5c
    iget-object v0, p0, Landroidx/recyclerview/widget/s;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    invoke-virtual {v0}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    :cond_61
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/s;->mScrollPointerId:I

    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/s;->updateVelocity(Landroid/view/MotionEvent;I)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private updateVelocity(Landroid/view/MotionEvent;I)V
    .registers 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_1f

    iget-object v0, p0, Landroidx/recyclerview/widget/s;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    new-array v3, v3, [D

    invoke-static {p1, p2}, Landroidx/appcompat/widget/a0;->b(Landroid/view/MotionEvent;I)F

    move-result v4

    float-to-double v4, v4

    aput-wide v4, v3, v2

    invoke-static {p1, p2}, Landroidx/appcompat/widget/a0;->B(Landroid/view/MotionEvent;I)F

    move-result p1

    float-to-double p1, p1

    aput-wide p1, v3, v1

    invoke-virtual {v0, v3}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    goto :goto_34

    :cond_1f
    iget-object p2, p0, Landroidx/recyclerview/widget/s;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    new-array v0, v3, [D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-double v3, v3

    aput-wide v3, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-double v2, p1

    aput-wide v2, v0, v1

    invoke-virtual {p2, v0}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    :goto_34
    return-void
.end method


# virtual methods
.method public getSpringEnabled()Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/recyclerview/widget/s;->mMouseEventTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    iget-boolean v3, p0, Landroidx/recyclerview/widget/s;->mSpringEnabled:Z

    if-eqz v3, :cond_1d

    iget-boolean v3, p0, Landroidx/recyclerview/widget/s;->mMouseEvent:Z

    if-eqz v3, :cond_1e

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

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

    const/16 v0, 0x2002

    invoke-static {p1, v0}, La/b;->K(Landroid/view/MotionEvent;I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/s;->mMouseEvent:Z

    if-eqz v0, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/s;->mMouseEventTime:J

    :cond_10
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s;->trackVelocity(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const/16 v0, 0x2002

    invoke-static {p1, v0}, La/b;->K(Landroid/view/MotionEvent;I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/s;->mMouseEvent:Z

    if-eqz v0, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/s;->mMouseEventTime:J

    :cond_10
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/s;->trackVelocity(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOverScrollMode(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/s;->mSpringEnabled:Z

    :cond_9
    return-void
.end method

.method public setSpringEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/s;->mSpringEnabled:Z

    return-void
.end method
