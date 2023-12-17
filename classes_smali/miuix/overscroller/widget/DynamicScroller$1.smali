.class Lmiuix/overscroller/widget/DynamicScroller$1;
.super Ljava/lang/Object;
.source "DynamicScroller.java"

# interfaces
.implements Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/overscroller/widget/DynamicScroller;->doFling(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/overscroller/widget/DynamicScroller;

.field public final synthetic val$max:I

.field public final synthetic val$min:I

.field public final synthetic val$over:I


# direct methods
.method public constructor <init>(Lmiuix/overscroller/widget/DynamicScroller;III)V
    .registers 5

    .line 1
    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    .line 3
    iput p2, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$min:I

    .line 5
    iput p3, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$max:I

    .line 7
    iput p4, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$over:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public whenFinished(FF)Z
    .registers 11

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    move-result-object p2

    .line 15
    const/4 v1, 0x1

    .line 16
    aput-object p2, v0, v1

    .line 18
    iget p2, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$min:I

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p2

    .line 24
    const/4 v3, 0x2

    .line 25
    aput-object p2, v0, v3

    .line 27
    iget p2, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$max:I

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p2

    .line 33
    const/4 v3, 0x3

    .line 34
    aput-object p2, v0, v3

    .line 36
    const-string p2, "fling finished: value(%f), velocity(%f), scroller boundary(%d, %d)"

    .line 38
    invoke-static {p2, v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object p2, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    .line 43
    invoke-static {p2}, Lmiuix/overscroller/widget/DynamicScroller;->access$100(Lmiuix/overscroller/widget/DynamicScroller;)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 46
    move-result-object p2

    .line 47
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    .line 49
    invoke-static {v0}, Lmiuix/overscroller/widget/DynamicScroller;->access$000(Lmiuix/overscroller/widget/DynamicScroller;)Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 52
    move-result-object v0

    .line 53
    iget v0, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    .line 55
    int-to-float v0, v0

    .line 56
    invoke-virtual {p2, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 59
    iget-object p2, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    .line 61
    invoke-static {p2}, Lmiuix/overscroller/widget/DynamicScroller;->access$100(Lmiuix/overscroller/widget/DynamicScroller;)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 64
    move-result-object p2

    .line 65
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    .line 67
    invoke-static {v0}, Lmiuix/overscroller/widget/DynamicScroller;->access$000(Lmiuix/overscroller/widget/DynamicScroller;)Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 70
    move-result-object v0

    .line 71
    iget v0, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    .line 73
    invoke-virtual {p2, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 76
    iget-object p2, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    .line 78
    invoke-static {p2}, Lmiuix/overscroller/widget/DynamicScroller;->access$100(Lmiuix/overscroller/widget/DynamicScroller;)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    .line 85
    move-result p2

    .line 86
    float-to-int p1, p1

    .line 87
    if-eqz p1, :cond_89

    .line 89
    iget p1, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$max:I

    .line 91
    int-to-float p1, p1

    .line 92
    cmpl-float p1, p2, p1

    .line 94
    if-gtz p1, :cond_66

    .line 96
    iget p1, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$min:I

    .line 98
    int-to-float p1, p1

    .line 99
    cmpg-float p1, p2, p1

    .line 101
    if-gez p1, :cond_89

    .line 103
    :cond_66
    const-string p1, "fling destination beyound boundary, start spring"

    .line 105
    invoke-static {p1}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    .line 110
    invoke-static {p1}, Lmiuix/overscroller/widget/DynamicScroller;->access$200(Lmiuix/overscroller/widget/DynamicScroller;)V

    .line 113
    iget-object v2, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    .line 115
    const/4 v3, 0x2

    .line 116
    invoke-virtual {v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getCurrentPosition()I

    .line 119
    move-result v4

    .line 120
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    .line 122
    invoke-virtual {p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getCurrVelocity()F

    .line 125
    move-result v5

    .line 126
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    .line 128
    invoke-virtual {p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getFinal()I

    .line 131
    move-result v6

    .line 132
    iget v7, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$over:I

    .line 134
    invoke-static/range {v2 .. v7}, Lmiuix/overscroller/widget/DynamicScroller;->access$300(Lmiuix/overscroller/widget/DynamicScroller;IIFII)V

    .line 137
    return v1

    .line 138
    :cond_89
    const-string p1, "fling finished, no more work."

    .line 140
    invoke-static {p1}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 143
    return v2
.end method
