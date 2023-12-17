.class public Lmiuix/animation/physics/AccelerateOperator;
.super Ljava/lang/Object;
.source "AccelerateOperator.java"

# interfaces
.implements Lmiuix/animation/physics/PhysicsOperator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParameters([F[D)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    aget p1, p1, v0

    .line 4
    float-to-double v1, p1

    .line 5
    const-wide v3, 0x408f400000000000L  # 1000.0

    .line 10
    mul-double/2addr v1, v3

    .line 11
    aput-wide v1, p2, v0

    .line 13
    return-void
.end method

.method public varargs updateVelocity(DDDD[D)D
    .registers 10

    mul-double/2addr p3, p7

    add-double/2addr p3, p1

    return-wide p3
.end method
