.class public Lmiuix/androidbasewidget/widget/SpringOperator;
.super Ljava/lang/Object;
.source "SpringOperator.java"


# instance fields
.field private final damping:D

.field private final tension:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p2

    const-wide v2, 0x401921fb54442d18L  # 6.283185307179586

    div-double/2addr v2, v0

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringOperator;->tension:D

    float-to-double p1, p1

    const-wide v2, 0x402921fb54442d18L  # 12.566370614359172

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    iput-wide p1, p0, Lmiuix/androidbasewidget/widget/SpringOperator;->damping:D

    return-void
.end method


# virtual methods
.method public updateVelocity(DFDD)D
    .registers 14

    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringOperator;->damping:D

    float-to-double v2, p3

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v4, v0

    mul-double/2addr v4, p1

    iget-wide p1, p0, Lmiuix/androidbasewidget/widget/SpringOperator;->tension:D

    sub-double/2addr p4, p6

    mul-double/2addr p4, p1

    mul-double/2addr p4, v2

    double-to-float p1, p4

    float-to-double p1, p1

    add-double/2addr v4, p1

    return-wide v4
.end method
