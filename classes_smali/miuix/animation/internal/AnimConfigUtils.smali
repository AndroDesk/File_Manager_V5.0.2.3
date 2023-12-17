.class public Lmiuix/animation/internal/AnimConfigUtils;
.super Ljava/lang/Object;
.source "AnimConfigUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chooseSpeed(FF)F
    .registers 4

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return p1

    .line 9
    :cond_8
    float-to-double v0, p1

    .line 10
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    return p0

    .line 17
    :cond_10
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static getDelay(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)J
    .registers 4

    .line 1
    iget-wide v0, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 3
    if-eqz p1, :cond_7

    .line 5
    iget-wide p0, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const-wide/16 p0, 0x0

    .line 10
    :goto_9
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method public static getEase(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    iget-object p1, p1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 5
    if-eqz p1, :cond_b

    .line 7
    sget-object v0, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 9
    if-eq p1, v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    iget-object p1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 14
    :goto_d
    if-nez p1, :cond_11

    .line 16
    sget-object p1, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 18
    :cond_11
    return-object p1
.end method

.method public static getFromSpeed(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)F
    .registers 4

    .line 1
    if-eqz p1, :cond_e

    .line 3
    iget v0, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 5
    float-to-double v0, v0

    .line 6
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_e

    .line 12
    iget p0, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 14
    return p0

    .line 15
    :cond_e
    iget p0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 17
    return p0
.end method

.method public static getTintMode(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)I
    .registers 2

    .line 1
    iget p0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 3
    if-eqz p1, :cond_7

    .line 5
    iget p1, p1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p1, -0x1

    .line 9
    :goto_8
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method
