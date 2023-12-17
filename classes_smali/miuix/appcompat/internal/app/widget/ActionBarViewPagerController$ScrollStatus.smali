.class Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollStatus"
.end annotation


# static fields
.field private static final THRESHOLD:F = 1.0E-4f


# instance fields
.field public mFromPos:I

.field private mOffsetAtScroll:F

.field private mPosAtScroll:I

.field public mScrollBegin:Z

.field public mScrollEnd:Z

.field public mToPos:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mPosAtScroll:I

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;-><init>()V

    return-void
.end method

.method private onScrollBegin(IF)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mScrollBegin:Z

    .line 4
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mOffsetAtScroll:F

    .line 6
    cmpl-float p2, p2, v1

    .line 8
    if-lez p2, :cond_a

    .line 10
    const/4 v0, 0x1

    .line 11
    :cond_a
    if-eqz v0, :cond_e

    .line 13
    move p2, p1

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    add-int/lit8 p2, p1, 0x1

    .line 17
    :goto_10
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mFromPos:I

    .line 19
    if-eqz v0, :cond_16

    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 23
    :cond_16
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mToPos:I

    .line 25
    return-void
.end method

.method private onScrollEnd()V
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mToPos:I

    .line 3
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mFromPos:I

    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mPosAtScroll:I

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mOffsetAtScroll:F

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mScrollEnd:Z

    .line 14
    return-void
.end method

.method private onScrollPositionChange(IF)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mPosAtScroll:I

    .line 3
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mOffsetAtScroll:F

    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mScrollBegin:Z

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mScrollEnd:Z

    .line 11
    return-void
.end method


# virtual methods
.method public update(IF)V
    .registers 4

    .line 1
    const v0, 0x38d1b717  # 1.0E-4f

    .line 4
    cmpg-float v0, p2, v0

    .line 6
    if-gez v0, :cond_b

    .line 8
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->onScrollEnd()V

    .line 11
    goto :goto_1a

    .line 12
    :cond_b
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mPosAtScroll:I

    .line 14
    if-eq v0, p1, :cond_13

    .line 16
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->onScrollPositionChange(IF)V

    .line 19
    goto :goto_1a

    .line 20
    :cond_13
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->mScrollBegin:Z

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$ScrollStatus;->onScrollBegin(IF)V

    .line 27
    :cond_1a
    :goto_1a
    return-void
.end method
