.class public abstract Lmiuix/springback/trigger/CustomTrigger;
.super Lmiuix/springback/trigger/BaseTrigger;
.source "CustomTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;,
        Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;,
        Lmiuix/springback/trigger/CustomTrigger$ActionComplete;,
        Lmiuix/springback/trigger/CustomTrigger$ActionStart;,
        Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;,
        Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;,
        Lmiuix/springback/trigger/CustomTrigger$Tracking;,
        Lmiuix/springback/trigger/CustomTrigger$Idle;
    }
.end annotation


# static fields
.field private static final ACTION_COMPLETE_HAPTIC_THRESHOLD:I = 0x1388

.field private static final OFFSET_RESET_STATE:F = 0.25f

.field private static final OFFSET_SIMPLE_VELOCITY_Y:F = 1000.0f

.field private static final TAG:Ljava/lang/String; = "CustomTrigger"


# instance fields
.field public final mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

.field private mActionIndex:I

.field public final mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

.field public final mActionTriggered:Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;

.field private mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

.field private mContainer:Landroid/widget/RelativeLayout;

.field public mContext:Landroid/content/Context;

.field private mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

.field private mCurrentState:Lmiuix/springback/trigger/TriggerState;

.field private mEnterTime:J

.field public final mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

.field private mIndicatorContainer:Landroid/widget/FrameLayout;

.field private mIsExitISimpleAction:Z

.field private mIsExitIndeterminateAction:Z

.field private mIsExitIndeterminateUpAction:Z

.field private mIsStartIndeterminate:Z

.field private mIsStartIndeterminateUp:Z

.field public mLastScrollDistance:I

.field public mLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLoadingContainer:Landroid/view/View;

.field private mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

.field private mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

.field private mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

.field private mOnScrollListener:Lmiuix/core/view/ViewCompatOnScrollChangeListener;

.field private mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

.field private mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

.field private mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

.field public mScrollDistance:I

.field private mScrollState:I

.field private mScrollerFinished:Z

.field private mSimpleActionView:Landroid/view/View;

.field public final mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

.field private mUpActionBegin:Z

.field private mUpActionDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

.field private mUpContainer:Landroid/view/View;

.field private mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

.field private mVelocityY:F

.field public final mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/BaseTrigger;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityY:F

    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollerFinished:Z

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionBegin:Z

    .line 13
    const-wide/16 v1, -0x1

    .line 15
    iput-wide v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mEnterTime:J

    .line 17
    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionIndex:I

    .line 20
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateAction:Z

    .line 22
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateUpAction:Z

    .line 24
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitISimpleAction:Z

    .line 26
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsStartIndeterminate:Z

    .line 28
    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsStartIndeterminateUp:Z

    .line 30
    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$1;

    .line 32
    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$1;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    .line 35
    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 37
    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$2;

    .line 39
    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$2;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    .line 42
    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

    .line 44
    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$3;

    .line 46
    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$3;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    .line 49
    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnScrollListener:Lmiuix/core/view/ViewCompatOnScrollChangeListener;

    .line 51
    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$4;

    .line 53
    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$4;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    .line 56
    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    .line 58
    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$5;

    .line 60
    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$5;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    .line 63
    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    .line 65
    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$Idle;

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$Idle;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    .line 71
    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    .line 73
    new-instance v2, Lmiuix/springback/trigger/CustomTrigger$Tracking;

    .line 75
    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$Tracking;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    .line 78
    iput-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    .line 80
    new-instance v2, Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    .line 82
    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$ActionStart;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    .line 85
    iput-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    .line 87
    new-instance v2, Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    .line 89
    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$ActionComplete;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    .line 92
    iput-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    .line 94
    new-instance v2, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    .line 96
    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    .line 99
    iput-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    .line 101
    new-instance v2, Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;

    .line 103
    invoke-direct {v2, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    .line 106
    iput-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionTriggered:Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;

    .line 108
    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    .line 110
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->init(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public static synthetic access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lmiuix/springback/trigger/CustomTrigger;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsStartIndeterminate:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1102(Lmiuix/springback/trigger/CustomTrigger;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsStartIndeterminate:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1200(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lmiuix/springback/trigger/CustomTrigger;)J
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/springback/trigger/CustomTrigger;->getActionIntervalTime()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static synthetic access$1400(Lmiuix/springback/trigger/CustomTrigger;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/springback/trigger/CustomTrigger;->resetEnterTime()V

    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsStart(Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 4
    return-void
.end method

.method public static synthetic access$1600(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsExit(Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsTriggered(Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 4
    return-void
.end method

.method public static synthetic access$1800(Lmiuix/springback/trigger/CustomTrigger;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionBegin:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1802(Lmiuix/springback/trigger/CustomTrigger;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionBegin:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1902(Lmiuix/springback/trigger/CustomTrigger;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mEnterTime:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$200(Lmiuix/springback/trigger/CustomTrigger;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollState:I

    .line 3
    return p0
.end method

.method public static synthetic access$2000(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsEntered(Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 4
    return-void
.end method

.method public static synthetic access$202(Lmiuix/springback/trigger/CustomTrigger;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollState:I

    .line 3
    return p1
.end method

.method public static synthetic access$2100(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsActivated(Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 4
    return-void
.end method

.method public static synthetic access$2200(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsAnimator(Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 4
    return-void
.end method

.method public static synthetic access$2300(Lmiuix/springback/trigger/CustomTrigger;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionIndex:I

    .line 3
    return p0
.end method

.method public static synthetic access$2302(Lmiuix/springback/trigger/CustomTrigger;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionIndex:I

    .line 3
    return p1
.end method

.method public static synthetic access$302(Lmiuix/springback/trigger/CustomTrigger;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollerFinished:Z

    .line 3
    return p1
.end method

.method public static synthetic access$400(Lmiuix/springback/trigger/CustomTrigger;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsStartIndeterminateUp:Z

    .line 3
    return p0
.end method

.method public static synthetic access$402(Lmiuix/springback/trigger/CustomTrigger;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsStartIndeterminateUp:Z

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/animation/utils/VelocityMonitor;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/springback/trigger/CustomTrigger;)F
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityY:F

    .line 3
    return p0
.end method

.method public static synthetic access$602(Lmiuix/springback/trigger/CustomTrigger;F)F
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityY:F

    .line 3
    return p1
.end method

.method public static synthetic access$700(Lmiuix/springback/trigger/CustomTrigger;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 3
    return-object p0
.end method

.method public static synthetic access$802(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)Lmiuix/springback/trigger/BaseTrigger$Action;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 3
    return-object p1
.end method

.method public static synthetic access$900(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)F
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->actionRestartOffsetPoint(Lmiuix/springback/trigger/BaseTrigger$Action;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private actionRestartOffsetPoint(Lmiuix/springback/trigger/BaseTrigger$Action;)F
    .registers 5

    .line 1
    if-eqz p1, :cond_b

    .line 3
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-direct {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateViewRestartOffsetPoint()F

    .line 10
    move-result v0

    .line 11
    goto :goto_23

    .line 12
    :cond_b
    if-eqz p1, :cond_16

    .line 14
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 16
    if-eqz v0, :cond_16

    .line 18
    invoke-direct {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpViewRestartOffsetPoint()F

    .line 21
    move-result v0

    .line 22
    goto :goto_23

    .line 23
    :cond_16
    if-eqz p1, :cond_21

    .line 25
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 27
    if-eqz v0, :cond_21

    .line 29
    invoke-direct {p0}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleViewRestartOffsetPoint()F

    .line 32
    move-result v0

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    const/high16 v0, -0x40800000  # -1.0f

    .line 36
    :goto_23
    const/4 v1, 0x0

    .line 37
    cmpg-float v0, v0, v1

    .line 39
    if-gez v0, :cond_62

    .line 41
    iget v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 43
    const/high16 v2, 0x3e800000  # 0.25f

    .line 45
    if-gez v0, :cond_52

    .line 47
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 50
    move-result-object v0

    .line 51
    if-ne p1, v0, :cond_52

    .line 53
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_52

    .line 59
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 62
    move-result-object p1

    .line 63
    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 65
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 68
    move-result-object v0

    .line 69
    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 71
    sub-int/2addr p1, v0

    .line 72
    int-to-float p1, p1

    .line 73
    mul-float/2addr p1, v2

    .line 74
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 77
    move-result-object v0

    .line 78
    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 80
    :goto_4f
    int-to-float v0, v0

    .line 81
    add-float/2addr p1, v0

    .line 82
    return p1

    .line 83
    :cond_52
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 85
    if-eqz v0, :cond_62

    .line 87
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 89
    if-eqz p1, :cond_62

    .line 91
    iget p1, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 93
    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 95
    sub-int/2addr p1, v0

    .line 96
    int-to-float p1, p1

    .line 97
    mul-float/2addr p1, v2

    .line 98
    goto :goto_4f

    .line 99
    :cond_62
    return v1
.end method

.method private getActionIntervalTime()J
    .registers 5

    .line 1
    iget-wide v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mEnterTime:J

    .line 3
    const-wide/16 v2, -0x1

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-nez v0, :cond_b

    .line 9
    const-wide/16 v0, 0x0

    .line 11
    return-wide v0

    .line 12
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mEnterTime:J

    .line 18
    sub-long/2addr v0, v2

    .line 19
    return-wide v0
.end method

.method private getIndeterminateUpViewRestartOffsetPoint()F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->getViewRestartOffsetPoint()F

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method private getIndeterminateViewRestartOffsetPoint()F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->getViewRestartOffsetPoint()F

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method private getSimpleViewRestartOffsetPoint()F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->getViewRestartOffsetPoint()F

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 9
    new-instance p1, Lmiuix/animation/utils/VelocityMonitor;

    .line 11
    invoke-direct {p1}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    .line 14
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 16
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 18
    sget v0, Lmiuix/springback/R$layout;->miuix_sbl_trigger_layout:I

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 27
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    .line 29
    sget v0, Lmiuix/springback/R$id;->indicator_container:I

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/FrameLayout;

    .line 37
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    .line 39
    return-void
.end method

.method private notifyIndeterminateUpViewActivated(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewActivated(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateUpViewActivating(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewActivating(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateUpViewEntered(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewEntered(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateUpViewEntering(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewEntering(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateUpViewExit(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewExit(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateUpViewFinished(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewFinished(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateUpViewStart(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewStart(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateUpViewStarting(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewStarting(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateUpViewTriggered(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewTriggered(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateViewActivated(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewActivated(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateViewActivating(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewActivating(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateViewEntered(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewEntered(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateViewEntering(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewEntering(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateViewExit(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewExit(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateViewFinished(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewFinished(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateViewStart(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewStart(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateViewStarting(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewStarting(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyIndeterminateViewTriggered(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewTriggered(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifySimpleViewActivated(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewActivated(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifySimpleViewActivating(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewActivating(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifySimpleViewEntered(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewEntered(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifySimpleViewEntering(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewEntering(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifySimpleViewExit(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewExit(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifySimpleViewFinished(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewFinished(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifySimpleViewStart(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewStart(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifySimpleViewStarting(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewStarting(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifySimpleViewTriggered(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewTriggered(I)V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyViewsActivated(Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .registers 4

    .line 1
    if-eqz p1, :cond_a

    .line 3
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewActivated(I)V

    .line 10
    goto :goto_1d

    .line 11
    :cond_a
    if-eqz p1, :cond_14

    .line 13
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 15
    if-eqz v0, :cond_14

    .line 17
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewActivated(I)V

    .line 20
    goto :goto_1d

    .line 21
    :cond_14
    if-eqz p1, :cond_1d

    .line 23
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 25
    if-eqz p1, :cond_1d

    .line 27
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewActivated(I)V

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method private notifyViewsAnimator(Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .registers 5

    .line 1
    if-eqz p1, :cond_30

    .line 3
    instance-of p2, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 5
    if-eqz p2, :cond_30

    .line 7
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 10
    move-result p2

    .line 11
    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 13
    if-ge p2, v0, :cond_11

    .line 15
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewStarting(I)V

    .line 18
    :cond_11
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 21
    move-result p2

    .line 22
    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 24
    if-lt p2, v0, :cond_24

    .line 26
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 29
    move-result p2

    .line 30
    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 32
    if-ge p2, v0, :cond_24

    .line 34
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewEntering(I)V

    .line 37
    :cond_24
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 40
    move-result p2

    .line 41
    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 43
    if-lt p2, p1, :cond_8f

    .line 45
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewActivating(I)V

    .line 48
    goto :goto_8f

    .line 49
    :cond_30
    if-eqz p1, :cond_60

    .line 51
    instance-of p2, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 53
    if-eqz p2, :cond_60

    .line 55
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 58
    move-result p2

    .line 59
    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 61
    if-ge p2, v0, :cond_41

    .line 63
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewStarting(I)V

    .line 66
    :cond_41
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 69
    move-result p2

    .line 70
    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 72
    if-lt p2, v0, :cond_54

    .line 74
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 77
    move-result p2

    .line 78
    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 80
    if-ge p2, v0, :cond_54

    .line 82
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewEntering(I)V

    .line 85
    :cond_54
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 88
    move-result p2

    .line 89
    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 91
    if-lt p2, p1, :cond_8f

    .line 93
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewActivating(I)V

    .line 96
    goto :goto_8f

    .line 97
    :cond_60
    if-eqz p1, :cond_8f

    .line 99
    instance-of p2, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 101
    if-eqz p2, :cond_8f

    .line 103
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 106
    move-result p2

    .line 107
    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 109
    if-ge p2, v0, :cond_71

    .line 111
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewStarting(I)V

    .line 114
    :cond_71
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 117
    move-result p2

    .line 118
    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    .line 120
    if-lt p2, v0, :cond_84

    .line 122
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 125
    move-result p2

    .line 126
    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 128
    if-ge p2, v0, :cond_84

    .line 130
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewEntering(I)V

    .line 133
    :cond_84
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 136
    move-result p2

    .line 137
    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    .line 139
    if-lt p2, p1, :cond_8f

    .line 141
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewActivating(I)V

    .line 144
    :cond_8f
    :goto_8f
    return-void
.end method

.method private notifyViewsEntered(Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .registers 4

    .line 1
    if-eqz p1, :cond_a

    .line 3
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewEntered(I)V

    .line 10
    goto :goto_1d

    .line 11
    :cond_a
    if-eqz p1, :cond_14

    .line 13
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 15
    if-eqz v0, :cond_14

    .line 17
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewEntered(I)V

    .line 20
    goto :goto_1d

    .line 21
    :cond_14
    if-eqz p1, :cond_1d

    .line 23
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 25
    if-eqz p1, :cond_1d

    .line 27
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewEntered(I)V

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method private notifyViewsExit(Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .registers 4

    .line 1
    if-eqz p1, :cond_a

    .line 3
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewExit(I)V

    .line 10
    goto :goto_1d

    .line 11
    :cond_a
    if-eqz p1, :cond_14

    .line 13
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 15
    if-eqz v0, :cond_14

    .line 17
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewExit(I)V

    .line 20
    goto :goto_1d

    .line 21
    :cond_14
    if-eqz p1, :cond_1d

    .line 23
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 25
    if-eqz p1, :cond_1d

    .line 27
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewExit(I)V

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method private notifyViewsStart(Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .registers 5

    .line 1
    if-eqz p1, :cond_c

    .line 3
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 5
    if-eqz v0, :cond_c

    .line 7
    if-eq p2, p1, :cond_c

    .line 9
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewStart(I)V

    .line 12
    goto :goto_23

    .line 13
    :cond_c
    if-eqz p1, :cond_18

    .line 15
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 17
    if-eqz v0, :cond_18

    .line 19
    if-eq p2, p1, :cond_18

    .line 21
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewStart(I)V

    .line 24
    goto :goto_23

    .line 25
    :cond_18
    if-eqz p1, :cond_23

    .line 27
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 29
    if-eqz v0, :cond_23

    .line 31
    if-eq p2, p1, :cond_23

    .line 33
    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewStart(I)V

    .line 36
    :cond_23
    :goto_23
    return-void
.end method

.method private notifyViewsTriggered(Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .registers 4

    .line 1
    if-eqz p1, :cond_a

    .line 3
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewTriggered(I)V

    .line 10
    goto :goto_1d

    .line 11
    :cond_a
    if-eqz p1, :cond_14

    .line 13
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 15
    if-eqz v0, :cond_14

    .line 17
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewTriggered(I)V

    .line 20
    goto :goto_1d

    .line 21
    :cond_14
    if-eqz p1, :cond_1d

    .line 23
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 25
    if-eqz p1, :cond_1d

    .line 27
    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewTriggered(I)V

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method private resetEnterTime()V
    .registers 3

    .line 1
    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mEnterTime:J

    .line 5
    return-void
.end method


# virtual methods
.method public addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lmiuix/springback/trigger/BaseTrigger;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    .line 4
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_38

    .line 10
    iput-boolean v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateUpAction:Z

    .line 12
    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 14
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    .line 16
    iput-object v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    .line 18
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    .line 20
    if-nez v0, :cond_b7

    .line 22
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 24
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 26
    invoke-virtual {p1, v0, v1}, Lmiuix/springback/trigger/BaseTrigger$Action;->onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    .line 32
    if-nez p1, :cond_2b

    .line 34
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 36
    sget v0, Lmiuix/springback/R$layout;->miuix_sbl_trigger_up_layout:I

    .line 38
    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    .line 44
    :cond_2b
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 46
    if-eqz p1, :cond_b7

    .line 48
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    .line 50
    if-eqz v0, :cond_b7

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    goto/16 :goto_b7

    .line 57
    :cond_38
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 59
    if-eqz v0, :cond_87

    .line 61
    iput-boolean v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateAction:Z

    .line 63
    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 65
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    .line 67
    iput-object v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    .line 69
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    .line 71
    if-nez v0, :cond_b7

    .line 73
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 75
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    .line 77
    invoke-virtual {p1, v0, v1}, Lmiuix/springback/trigger/BaseTrigger$Action;->onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    .line 83
    if-nez p1, :cond_7b

    .line 85
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 87
    sget v0, Lmiuix/springback/R$layout;->miuix_sbl_trigger_loading_progress:I

    .line 89
    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    move-result-object p1

    .line 93
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 95
    sget v1, Lmiuix/springback/R$layout;->miuix_sbl_trigger_tracking_progress:I

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 103
    sget v3, Lmiuix/springback/R$layout;->miuix_sbl_trigger_tracking_progress_label:I

    .line 105
    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 108
    move-result-object v1

    .line 109
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    .line 111
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    :cond_7b
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    .line 126
    if-eqz p1, :cond_b7

    .line 128
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    .line 130
    if-eqz v0, :cond_b7

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    goto :goto_b7

    .line 136
    :cond_87
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 138
    if-eqz v0, :cond_b7

    .line 140
    iput-boolean v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitISimpleAction:Z

    .line 142
    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 144
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    .line 146
    if-nez v0, :cond_b7

    .line 148
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 150
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    .line 152
    invoke-virtual {p1, v0, v1}, Lmiuix/springback/trigger/BaseTrigger$Action;->onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 155
    move-result-object p1

    .line 156
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    .line 158
    if-nez p1, :cond_ac

    .line 160
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 162
    sget v0, Lmiuix/springback/R$layout;->miuix_sbl_simple_indicator:I

    .line 164
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    .line 166
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 170
    move-result-object p1

    .line 171
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    .line 173
    :cond_ac
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    .line 175
    if-eqz p1, :cond_b7

    .line 177
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    .line 179
    if-eqz v0, :cond_b7

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 184
    :cond_b7
    :goto_b7
    return-void
.end method

.method public attach(Lmiuix/springback/view/SpringBackLayout;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->springBackEnable()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_a

    .line 8
    invoke-virtual {p1, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 11
    :cond_a
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 13
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v0, :cond_37

    .line 23
    move v0, v2

    .line 24
    move v3, v0

    .line 25
    :goto_18
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 27
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    move-result v4

    .line 31
    if-ge v0, v4, :cond_2e

    .line 33
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 35
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    move-result-object v4

    .line 39
    iget-object v5, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    .line 41
    if-ne v4, v5, :cond_2b

    .line 43
    move v3, v1

    .line 44
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    .line 46
    goto :goto_18

    .line 47
    :cond_2e
    if-nez v3, :cond_37

    .line 49
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 51
    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    .line 53
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    :cond_37
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    .line 58
    if-eqz v0, :cond_5b

    .line 60
    move v0, v2

    .line 61
    :goto_3c
    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    .line 63
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 66
    move-result v3

    .line 67
    if-ge v2, v3, :cond_52

    .line 69
    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    .line 71
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 74
    move-result-object v3

    .line 75
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    .line 77
    if-ne v3, v4, :cond_4f

    .line 79
    move v0, v1

    .line 80
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_3c

    .line 83
    :cond_52
    if-nez v0, :cond_5b

    .line 85
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    .line 87
    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    :cond_5b
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 97
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

    .line 99
    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setOnSpringListener(Lmiuix/springback/view/SpringBackLayout$OnSpringListener;)V

    .line 102
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnScrollListener:Lmiuix/core/view/ViewCompatOnScrollChangeListener;

    .line 104
    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->addOnScrollChangeListener(Lmiuix/core/view/ViewCompatOnScrollChangeListener;)V

    .line 107
    return-void
.end method

.method public getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 3
    return-object v0
.end method

.method public getCurrentState()Lmiuix/springback/trigger/TriggerState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    .line 3
    return-object v0
.end method

.method public getIndeterminateUpView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getIndeterminateView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getIndicatorContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    .line 3
    return-object v0
.end method

.method public getRootContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    .line 3
    return-object v0
.end method

.method public getSimpleActionView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public isActionRunning()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x0

    return v0
.end method

.method public isActionRunning(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    if-ne v0, p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public isExitIndeterminateAction()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateAction:Z

    .line 3
    return v0
.end method

.method public isExitIndeterminateUpAction()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateUpAction:Z

    .line 3
    return v0
.end method

.method public isExitSimpleAction()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitISimpleAction:Z

    .line 3
    return v0
.end method

.method public abstract onSpringBackLayoutChange(Landroid/view/View;IIIIIIII)V
.end method

.method public abstract onSpringBackScrolled(Lmiuix/springback/view/SpringBackLayout;III)V
.end method

.method public removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lmiuix/springback/trigger/BaseTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1a

    .line 9
    instance-of v3, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 11
    if-eqz v3, :cond_1a

    .line 13
    iput-boolean v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateUpAction:Z

    .line 15
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    .line 17
    if-eqz p1, :cond_41

    .line 19
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 21
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    iput-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    .line 26
    goto :goto_41

    .line 27
    :cond_1a
    if-eqz v0, :cond_2e

    .line 29
    instance-of v3, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 31
    if-eqz v3, :cond_2e

    .line 33
    iput-boolean v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitIndeterminateAction:Z

    .line 35
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    .line 37
    if-eqz p1, :cond_41

    .line 39
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    .line 41
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 44
    iput-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    .line 46
    goto :goto_41

    .line 47
    :cond_2e
    if-eqz v0, :cond_41

    .line 49
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 51
    if-eqz p1, :cond_41

    .line 53
    iput-boolean v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mIsExitISimpleAction:Z

    .line 55
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    .line 57
    if-eqz p1, :cond_41

    .line 59
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    .line 61
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 64
    iput-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    .line 66
    :cond_41
    :goto_41
    return v0
.end method

.method public setOnActionDataListener(Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    .line 3
    return-void
.end method

.method public setOnIndeterminateActionViewListener(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    .line 3
    return-void
.end method

.method public setOnIndeterminateUpActionViewListener(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    .line 3
    return-void
.end method

.method public setOnSimpleActionViewListener(Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    .line 3
    return-void
.end method

.method public setOnUpActionDataListener(Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    .line 3
    return-void
.end method

.method public transition(Lmiuix/springback/trigger/TriggerState;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    .line 3
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    .line 5
    if-ne p1, v0, :cond_3b

    .line 7
    iget-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollerFinished:Z

    .line 9
    if-eqz p1, :cond_30

    .line 11
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 13
    if-eqz p1, :cond_30

    .line 15
    invoke-virtual {p1}, Lmiuix/springback/trigger/BaseTrigger$Action;->notifyFinished()V

    .line 18
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 20
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 22
    if-eqz v0, :cond_1d

    .line 24
    iget p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 26
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewFinished(I)V

    .line 29
    goto :goto_30

    .line 30
    :cond_1d
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 32
    if-eqz v0, :cond_27

    .line 34
    iget p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 36
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewFinished(I)V

    .line 39
    goto :goto_30

    .line 40
    :cond_27
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 42
    if-eqz p1, :cond_30

    .line 44
    iget p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    .line 46
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewFinished(I)V

    .line 49
    :cond_30
    :goto_30
    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 52
    const/4 p1, -0x1

    .line 53
    iput p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionIndex:I

    .line 55
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 57
    invoke-virtual {p1}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    .line 60
    :cond_3b
    return-void
.end method
