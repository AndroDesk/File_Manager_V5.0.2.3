.class public Lmiuix/animation/listener/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# instance fields
.field public final animInfo:Lmiuix/animation/internal/AnimInfo;

.field public volatile frameCount:I

.field public volatile isCompleted:Z

.field public final property:Lmiuix/animation/property/FloatProperty;

.field public final useInt:Z

.field public volatile velocity:D


# direct methods
.method public constructor <init>(Lmiuix/animation/property/FloatProperty;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/animation/internal/AnimInfo;

    .line 6
    invoke-direct {v0}, Lmiuix/animation/internal/AnimInfo;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 11
    iput-object p1, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 13
    instance-of p1, p1, Lmiuix/animation/property/IIntValueProperty;

    .line 15
    iput-boolean p1, p0, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    .line 17
    return-void
.end method

.method public static findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;",
            "Lmiuix/animation/property/FloatProperty;",
            ")",
            "Lmiuix/animation/listener/UpdateInfo;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_19

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lmiuix/animation/listener/UpdateInfo;

    .line 17
    iget-object v1, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_4

    .line 25
    return-object v0

    .line 26
    :cond_19
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lmiuix/animation/listener/UpdateInfo;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1d

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lmiuix/animation/listener/UpdateInfo;

    .line 17
    iget-object v1, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 19
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_4

    .line 29
    return-object v0

    .line 30
    :cond_1d
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method


# virtual methods
.method public getFloatValue()F
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 3
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 5
    const-wide v2, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 10
    cmpl-double v2, v0, v2

    .line 12
    if-eqz v2, :cond_f

    .line 14
    double-to-float v0, v0

    .line 15
    return v0

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 18
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 20
    const-wide v2, 0x47efffffe0000000L  # 3.4028234663852886E38

    .line 25
    cmpl-double v0, v0, v2

    .line 27
    if-ltz v0, :cond_1d

    .line 29
    goto :goto_21

    .line 30
    :cond_1d
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 32
    iget-wide v2, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 34
    :goto_21
    double-to-float v0, v2

    .line 35
    const v1, 0x7f7fffff  # Float.MAX_VALUE

    .line 38
    cmpl-float v1, v0, v1

    .line 40
    if-nez v1, :cond_54

    .line 42
    const-string v0, "warning value is Float.MAX_VALUE !! correct to startValue "

    .line 44
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 50
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, " "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x0

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 75
    iget-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 77
    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 79
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 81
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 83
    double-to-float v0, v0

    .line 84
    return v0

    .line 85
    :cond_54
    const v1, -0x800001

    .line 88
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 91
    move-result v0

    .line 92
    return v0
.end method

.method public getIntValue()I
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 3
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 5
    const-wide v2, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 10
    cmpl-double v4, v0, v2

    .line 12
    if-eqz v4, :cond_f

    .line 14
    double-to-int v0, v0

    .line 15
    return v0

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 18
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 20
    cmpl-double v0, v0, v2

    .line 22
    const v1, 0x7fffffff

    .line 25
    if-ltz v0, :cond_1c

    .line 27
    move v0, v1

    .line 28
    goto :goto_21

    .line 29
    :cond_1c
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 31
    iget-wide v2, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 33
    double-to-int v0, v2

    .line 34
    :goto_21
    if-ne v0, v1, :cond_4e

    .line 36
    const-string v0, "warning value is Integer.MAX_VALUE !! correct to startValue "

    .line 38
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 44
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, " "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    const/4 v1, 0x0

    .line 62
    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 69
    iget-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 71
    iput-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 73
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 75
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 77
    double-to-int v0, v0

    .line 78
    return v0

    .line 79
    :cond_4e
    const v1, -0x7fffffff

    .line 82
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 85
    move-result v0

    .line 86
    return v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 3
    instance-of v0, v0, Lmiuix/animation/property/IIntValueProperty;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 12
    :goto_b
    return-object v0
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Float;

    .line 3
    if-eq p1, v0, :cond_24

    .line 5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 7
    if-ne p1, v0, :cond_9

    .line 9
    goto :goto_24

    .line 10
    :cond_9
    const-class v0, Ljava/lang/Double;

    .line 12
    if-eq p1, v0, :cond_1b

    .line 14
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 16
    if-ne p1, v0, :cond_12

    .line 18
    goto :goto_1b

    .line 19
    :cond_12
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 22
    move-result p1

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1b
    :goto_1b
    iget-object p1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 30
    iget-wide v0, p1, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public reset()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 4
    iput v0, p0, Lmiuix/animation/listener/UpdateInfo;->frameCount:I

    .line 6
    return-void
.end method

.method public setOp(B)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_a

    .line 5
    const/4 v2, 0x2

    .line 6
    if-le p1, v2, :cond_8

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    move v2, v0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    :goto_a
    move v2, v1

    .line 12
    :goto_b
    iput-boolean v2, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 14
    iget-boolean v2, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 16
    if-eqz v2, :cond_1f

    .line 18
    iget-object v2, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 20
    iget-byte v2, v2, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 22
    invoke-static {v2}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1f

    .line 28
    iget-object v2, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 30
    iput-boolean v1, v2, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    .line 32
    :cond_1f
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 34
    iput-byte p1, v1, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 36
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_4b

    .line 42
    const-string v1, "---- UpdateInfo setOp "

    .line 44
    const-string v2, " justEnd "

    .line 46
    invoke-static {v1, p1, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object p1

    .line 50
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 52
    iget-boolean v1, v1, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, " isCompleted "

    .line 59
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-boolean v1, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_4b
    return-void
.end method

.method public setTargetValue(Lmiuix/animation/IAnimTarget;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 7
    check-cast v0, Lmiuix/animation/property/IIntValueProperty;

    .line 9
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1, v0, v1}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    .line 16
    goto :goto_19

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 19
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1, v0, v1}, Lmiuix/animation/IAnimTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    .line 26
    :goto_19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "UpdateInfo{, id="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", property="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", velocity="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-wide v1, p0, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", op = "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 41
    iget-byte v1, v1, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", startValue = "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 53
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ", targetValue = "

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 65
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", setToValue = "

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 77
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", value = "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 89
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", startTime = "

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 101
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->startTime:J

    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", useInt="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-boolean v1, p0, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", frameCount="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v1, p0, Lmiuix/animation/listener/UpdateInfo;->frameCount:I

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", isCompleted="

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-boolean v1, p0, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    const/16 v1, 0x7d

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    return-object v0
.end method
