.class abstract Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"

# interfaces
.implements Lcom/miui/maml/elements/ITicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ReboundAnimationController"
.end annotation


# instance fields
.field private mBounceStartPointIndex:I

.field private mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

.field private mPreDistance:J

.field public mStartTime:J

.field private mStartX:F

.field private mStartY:F

.field public mTotalDistance:D

.field public final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private getPoint(FFFFJ)Lcom/miui/maml/util/Utils$Point;
    .registers 14

    .line 1
    new-instance v0, Lcom/miui/maml/util/Utils$Point;

    .line 3
    float-to-double v1, p1

    .line 4
    float-to-double p1, p2

    .line 5
    invoke-direct {v0, v1, v2, p1, p2}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 8
    new-instance p1, Lcom/miui/maml/util/Utils$Point;

    .line 10
    float-to-double p2, p3

    .line 11
    float-to-double v1, p4

    .line 12
    invoke-direct {p1, p2, p3, v1, v2}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-static {v0, p1, p2}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 19
    move-result-wide p2

    .line 20
    long-to-double p4, p5

    .line 21
    cmpl-double p6, p4, p2

    .line 23
    if-ltz p6, :cond_1a

    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1

    .line 27
    :cond_1a
    sub-double p4, p2, p4

    .line 29
    div-double/2addr p4, p2

    .line 30
    iget-wide p2, p1, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 32
    iget-wide v1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 34
    sub-double/2addr p2, v1

    .line 35
    mul-double/2addr p2, p4

    .line 36
    iget-wide v3, p1, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 38
    iget-wide v5, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 40
    sub-double/2addr v3, v5

    .line 41
    mul-double/2addr v3, p4

    .line 42
    new-instance p1, Lcom/miui/maml/util/Utils$Point;

    .line 44
    add-double/2addr v1, p2

    .line 45
    add-double/2addr v5, v3

    .line 46
    invoke-direct {p1, v1, v2, v5, v6}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 49
    return-object p1
.end method


# virtual methods
.method public abstract getDistance(J)J
.end method

.method public init()V
    .registers 3

    .line 1
    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 5
    return-void
.end method

.method public isRunning()Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-ltz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public onMove(FF)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;->access$300(Lcom/miui/maml/elements/AdvancedSlider;FF)V

    .line 6
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 7
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$200(Lcom/miui/maml/elements/AdvancedSlider;)V

    .line 10
    return-void
.end method

.method public start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V
    .registers 13

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 5
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 9
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 19
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 26
    move-result v1

    .line 27
    add-float/2addr v0, v1

    .line 28
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 32
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    .line 39
    move-result v0

    .line 40
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 42
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 49
    move-result v1

    .line 50
    add-float/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    .line 53
    const/4 v1, -0x1

    .line 54
    iput v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 56
    const-wide/16 v1, 0x0

    .line 58
    iput-wide v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 60
    new-instance v1, Lcom/miui/maml/util/Utils$Point;

    .line 62
    iget v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    .line 64
    float-to-double v2, v2

    .line 65
    float-to-double v4, v0

    .line 66
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 69
    const/4 v0, 0x1

    .line 70
    if-eqz p1, :cond_ab

    .line 72
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_ab

    .line 78
    move v2, v0

    .line 79
    :goto_4e
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 86
    move-result v3

    .line 87
    if-ge v2, v3, :cond_cc

    .line 89
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 92
    move-result-object v3

    .line 93
    add-int/lit8 v4, v2, -0x1

    .line 95
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 101
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 111
    new-instance v6, Lcom/miui/maml/util/Utils$Point;

    .line 113
    invoke-virtual {v3}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 116
    move-result v7

    .line 117
    float-to-double v7, v7

    .line 118
    invoke-virtual {v3}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 121
    move-result v3

    .line 122
    float-to-double v9, v3

    .line 123
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 126
    new-instance v3, Lcom/miui/maml/util/Utils$Point;

    .line 128
    invoke-virtual {v5}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 131
    move-result v7

    .line 132
    float-to-double v7, v7

    .line 133
    invoke-virtual {v5}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 136
    move-result v5

    .line 137
    float-to-double v9, v5

    .line 138
    invoke-direct {v3, v7, v8, v9, v10}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 141
    const/4 v5, 0x0

    .line 142
    invoke-static {v6, v3, v1, v5}, Lcom/miui/maml/util/Utils;->pointProjectionOnSegment(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)Lcom/miui/maml/util/Utils$Point;

    .line 145
    move-result-object v5

    .line 146
    if-eqz v5, :cond_9f

    .line 148
    iput v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 150
    iget-wide v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 152
    invoke-static {v6, v5, v0}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 155
    move-result-wide v3

    .line 156
    add-double/2addr v3, v1

    .line 157
    iput-wide v3, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 159
    goto :goto_cc

    .line 160
    :cond_9f
    iget-wide v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 162
    invoke-static {v6, v3, v0}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 165
    move-result-wide v6

    .line 166
    add-double/2addr v6, v4

    .line 167
    iput-wide v6, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 169
    add-int/lit8 v2, v2, 0x1

    .line 171
    goto :goto_4e

    .line 172
    :cond_ab
    new-instance p1, Lcom/miui/maml/util/Utils$Point;

    .line 174
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 176
    invoke-static {v2}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 183
    move-result v2

    .line 184
    float-to-double v2, v2

    .line 185
    iget-object v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 187
    invoke-static {v4}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v4}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 194
    move-result v4

    .line 195
    float-to-double v4, v4

    .line 196
    invoke-direct {p1, v2, v3, v4, v5}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 199
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 202
    move-result-wide v0

    .line 203
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 205
    :cond_cc
    :goto_cc
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 207
    const-wide/high16 v2, 0x4008000000000000L  # 3.0

    .line 209
    cmpg-double p1, v0, v2

    .line 211
    if-gez p1, :cond_d8

    .line 213
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 216
    return-void

    .line 217
    :cond_d8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStart()V

    .line 220
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 222
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 225
    return-void
.end method

.method public stopRunning()V
    .registers 3

    .line 1
    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 5
    return-void
.end method

.method public tick(J)V
    .registers 16

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v4, v0, v2

    .line 7
    if-gez v4, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    cmp-long v4, v0, v2

    .line 12
    if-nez v4, :cond_13

    .line 14
    iput-wide p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 16
    iput-wide v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    .line 18
    goto/16 :goto_e6

    .line 20
    :cond_13
    sub-long/2addr p1, v0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->getDistance(J)J

    .line 24
    move-result-wide p1

    .line 25
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 27
    cmp-long v0, v0, v2

    .line 29
    if-gez v0, :cond_1f

    .line 31
    return-void

    .line 32
    :cond_1f
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 34
    if-eqz v0, :cond_b7

    .line 36
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_2b

    .line 42
    goto/16 :goto_b7

    .line 44
    :cond_2b
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 46
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 56
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 63
    move-result v1

    .line 64
    add-float/2addr v0, v1

    .line 65
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 67
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    .line 74
    move-result v1

    .line 75
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 77
    invoke-static {v2}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 84
    move-result v2

    .line 85
    add-float/2addr v1, v2

    .line 86
    iget-wide v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    .line 88
    sub-long v2, p1, v2

    .line 90
    iget v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 92
    :goto_5b
    if-ltz v4, :cond_e4

    .line 94
    iget-object v5, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 96
    invoke-static {v5}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v5

    .line 104
    move-object v12, v5

    .line 105
    check-cast v12, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 107
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 110
    move-result v6

    .line 111
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 114
    move-result v7

    .line 115
    move-object v5, p0

    .line 116
    move v8, v0

    .line 117
    move v9, v1

    .line 118
    move-wide v10, v2

    .line 119
    invoke-direct/range {v5 .. v11}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->getPoint(FFFFJ)Lcom/miui/maml/util/Utils$Point;

    .line 122
    move-result-object v5

    .line 123
    if-nez v5, :cond_ab

    .line 125
    if-nez v4, :cond_82

    .line 127
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 130
    goto :goto_e4

    .line 131
    :cond_82
    new-instance v5, Lcom/miui/maml/util/Utils$Point;

    .line 133
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 136
    move-result v6

    .line 137
    float-to-double v6, v6

    .line 138
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 141
    move-result v8

    .line 142
    float-to-double v8, v8

    .line 143
    invoke-direct {v5, v6, v7, v8, v9}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 146
    new-instance v6, Lcom/miui/maml/util/Utils$Point;

    .line 148
    float-to-double v7, v0

    .line 149
    float-to-double v0, v1

    .line 150
    invoke-direct {v6, v7, v8, v0, v1}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 153
    long-to-double v0, v2

    .line 154
    const/4 v2, 0x1

    .line 155
    invoke-static {v5, v6, v2}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 158
    move-result-wide v2

    .line 159
    sub-double/2addr v0, v2

    .line 160
    double-to-long v2, v0

    .line 161
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 164
    move-result v0

    .line 165
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 168
    move-result v1

    .line 169
    add-int/lit8 v4, v4, -0x1

    .line 171
    goto :goto_5b

    .line 172
    :cond_ab
    iput v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 174
    iget-wide v0, v5, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 176
    double-to-float v0, v0

    .line 177
    iget-wide v1, v5, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 179
    double-to-float v1, v1

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onMove(FF)V

    .line 183
    goto :goto_e4

    .line 184
    :cond_b7
    :goto_b7
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 186
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 193
    move-result v5

    .line 194
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 196
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 203
    move-result v6

    .line 204
    iget v7, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    .line 206
    iget v8, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    .line 208
    move-object v4, p0

    .line 209
    move-wide v9, p1

    .line 210
    invoke-direct/range {v4 .. v10}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->getPoint(FFFFJ)Lcom/miui/maml/util/Utils$Point;

    .line 213
    move-result-object v0

    .line 214
    if-nez v0, :cond_db

    .line 216
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 219
    goto :goto_e4

    .line 220
    :cond_db
    iget-wide v1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 222
    double-to-float v1, v1

    .line 223
    iget-wide v2, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 225
    double-to-float v0, v2

    .line 226
    invoke-virtual {p0, v1, v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onMove(FF)V

    .line 229
    :cond_e4
    :goto_e4
    iput-wide p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    .line 231
    :goto_e6
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 233
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 236
    return-void
.end method
