.class Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;
.super Ljava/lang/Object;
.source "DynamicScroller.java"

# interfaces
.implements Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Monitor"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;


# direct methods
.method private constructor <init>(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;->this$0:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;Lmiuix/overscroller/widget/DynamicScroller$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;-><init>(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;->this$0:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 3
    iput p3, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    .line 5
    iget v1, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mStartValue:I

    .line 7
    float-to-int v2, p2

    .line 8
    add-int/2addr v1, v2

    .line 9
    iput v1, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    .line 11
    const/4 v0, 0x5

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x0

    .line 23
    aput-object p1, v0, v1

    .line 25
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x1

    .line 30
    aput-object p1, v0, p2

    .line 32
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x2

    .line 37
    aput-object p1, v0, p2

    .line 39
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;->this$0:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 41
    invoke-static {p1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->access$500(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;)F

    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 48
    move-result-object p1

    .line 49
    const/4 p2, 0x3

    .line 50
    aput-object p1, v0, p2

    .line 52
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;->this$0:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 54
    invoke-static {p1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->access$600(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;)F

    .line 57
    move-result p1

    .line 58
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    move-result-object p1

    .line 62
    const/4 p2, 0x4

    .line 63
    aput-object p1, v0, p2

    .line 65
    const-string p1, "%s updating value(%f), velocity(%f), min(%f), max(%f)"

    .line 67
    invoke-static {p1, v0}, Lmiuix/overscroller/widget/OverScrollLogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method
