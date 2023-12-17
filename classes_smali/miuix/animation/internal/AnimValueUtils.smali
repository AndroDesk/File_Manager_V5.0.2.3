.class public Lmiuix/animation/internal/AnimValueUtils;
.super Ljava/lang/Object;
.source "AnimValueUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurTargetValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D
    .registers 8

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->signum(D)D

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    .line 8
    move-result-wide p2

    .line 9
    const-wide v2, 0x412e848000000000L  # 1000000.0

    .line 14
    cmpl-double v2, p2, v2

    .line 16
    if-nez v2, :cond_18

    .line 18
    invoke-static {p0, p1}, Lmiuix/animation/utils/CommonUtils;->getSize(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)F

    .line 21
    move-result p0

    .line 22
    float-to-double p0, p0

    .line 23
    mul-double/2addr v0, p0

    .line 24
    return-wide v0

    .line 25
    :cond_18
    instance-of v2, p1, Lmiuix/animation/property/IIntValueProperty;

    .line 27
    if-eqz v2, :cond_24

    .line 29
    check-cast p1, Lmiuix/animation/property/IIntValueProperty;

    .line 31
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    .line 34
    move-result p0

    .line 35
    int-to-double p0, p0

    .line 36
    goto :goto_29

    .line 37
    :cond_24
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 40
    move-result p0

    .line 41
    float-to-double p0, p0

    .line 42
    :goto_29
    const-wide v2, 0x412e854800000000L  # 1000100.0

    .line 47
    cmpl-double p2, p2, v2

    .line 49
    if-nez p2, :cond_33

    .line 51
    mul-double/2addr p0, v0

    .line 52
    :cond_33
    return-wide p0
.end method

.method public static getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D
    .registers 5

    .line 1
    instance-of v0, p1, Lmiuix/animation/property/ISpecificProperty;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    check-cast p1, Lmiuix/animation/property/ISpecificProperty;

    .line 7
    double-to-float p0, p2

    .line 8
    invoke-interface {p1, p0}, Lmiuix/animation/property/ISpecificProperty;->getSpecificValue(F)F

    .line 11
    move-result p0

    .line 12
    float-to-double p0, p0

    .line 13
    return-wide p0

    .line 14
    :cond_d
    invoke-static {p0, p1, p2, p3}, Lmiuix/animation/internal/AnimValueUtils;->getCurTargetValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 17
    move-result-wide p0

    .line 18
    return-wide p0
.end method

.method public static getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D
    .registers 6

    .line 1
    const-wide v0, 0x41dfffffffc00000L  # 2.147483647E9

    .line 6
    cmpl-double v0, p2, v0

    .line 8
    if-nez v0, :cond_11

    .line 10
    check-cast p1, Lmiuix/animation/property/IIntValueProperty;

    .line 12
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    .line 15
    move-result p0

    .line 16
    int-to-double p0, p0

    .line 17
    return-wide p0

    .line 18
    :cond_11
    const-wide v0, 0x47efffffe0000000L  # 3.4028234663852886E38

    .line 23
    cmpl-double v0, p2, v0

    .line 25
    if-nez v0, :cond_20

    .line 27
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 30
    move-result p0

    .line 31
    float-to-double p0, p0

    .line 32
    return-wide p0

    .line 33
    :cond_20
    invoke-static {p0, p1, p2, p3}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 36
    move-result-wide p0

    .line 37
    return-wide p0
.end method

.method public static handleSetToValue(Lmiuix/animation/listener/UpdateInfo;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 3
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 5
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1b

    .line 11
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 13
    iget-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 15
    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 17
    iget-object p0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 19
    const-wide v0, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 24
    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1b
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public static isInvalid(D)Z
    .registers 4

    const-wide v0, 0x7fefffffffffffffL  # Double.MAX_VALUE

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_1e

    const-wide v0, 0x47efffffe0000000L  # 3.4028234663852886E38

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_1e

    const-wide v0, 0x41dfffffffc00000L  # 2.147483647E9

    cmpl-double p0, p0, v0

    if-nez p0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    :goto_1f
    return p0
.end method
