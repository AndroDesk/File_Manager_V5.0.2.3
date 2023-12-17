.class Lmiuix/animation/internal/AnimRunnerTask;
.super Ljava/lang/Object;
.source "AnimRunnerTask.java"


# static fields
.field public static final animDataLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiuix/animation/internal/AnimData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    sput-object v0, Lmiuix/animation/internal/AnimRunnerTask;->animDataLocal:Ljava/lang/ThreadLocal;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAnimationFrame(Lmiuix/animation/internal/AnimTask;JJZZ)V
    .registers 27

    .line 1
    sget-object v0, Lmiuix/animation/internal/AnimRunnerTask;->animDataLocal:Ljava/lang/ThreadLocal;

    .line 3
    const-class v1, Lmiuix/animation/internal/AnimData;

    .line 5
    invoke-static {v0, v1}, Lmiuix/animation/utils/CommonUtils;->getLocal(Ljava/lang/ThreadLocal;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/animation/internal/AnimData;

    .line 11
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 14
    move-result v1

    .line 15
    iput-boolean v1, v0, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    .line 17
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    .line 24
    move-result-wide v10

    .line 25
    move-object/from16 v12, p0

    .line 27
    :goto_1a
    if-eqz v12, :cond_cd

    .line 29
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 31
    const/4 v2, 0x0

    .line 32
    iput v2, v1, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 34
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    .line 37
    move-result v1

    .line 38
    const/4 v13, 0x1

    .line 39
    xor-int/lit8 v14, v1, 0x1

    .line 41
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 43
    iget-object v15, v1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 45
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 47
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 49
    instance-of v9, v1, Lmiuix/animation/ViewTarget;

    .line 51
    iget v1, v12, Lmiuix/animation/internal/AnimTask;->startPos:I

    .line 53
    invoke-virtual {v12}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    .line 56
    move-result v2

    .line 57
    add-int v7, v2, v1

    .line 59
    move v8, v1

    .line 60
    :goto_3b
    if-ge v8, v7, :cond_c4

    .line 62
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    move-object v5, v1

    .line 67
    check-cast v5, Lmiuix/animation/listener/UpdateInfo;

    .line 69
    if-nez v5, :cond_4e

    .line 71
    move/from16 v17, v7

    .line 73
    move/from16 v18, v8

    .line 75
    move/from16 v19, v9

    .line 77
    goto/16 :goto_bc

    .line 79
    :cond_4e
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 81
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 83
    iget-object v2, v5, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 85
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;

    .line 92
    move-result-object v4

    .line 93
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 95
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 97
    invoke-virtual {v0, v5, v1, v4}, Lmiuix/animation/internal/AnimData;->from(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    .line 100
    if-eqz v14, :cond_77

    .line 102
    iget-object v3, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 104
    move-object v1, v12

    .line 105
    move-object v2, v0

    .line 106
    move-object/from16 v16, v5

    .line 108
    move-wide/from16 v5, p1

    .line 110
    move/from16 v17, v7

    .line 112
    move/from16 v18, v8

    .line 114
    move-wide/from16 v7, p3

    .line 116
    invoke-static/range {v1 .. v8}, Lmiuix/animation/internal/AnimRunnerTask;->setup(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/base/AnimSpecialConfig;JJ)V

    .line 119
    goto :goto_7d

    .line 120
    :cond_77
    move-object/from16 v16, v5

    .line 122
    move/from16 v17, v7

    .line 124
    move/from16 v18, v8

    .line 126
    :goto_7d
    iget-byte v1, v0, Lmiuix/animation/internal/AnimData;->op:B

    .line 128
    if-ne v1, v13, :cond_8c

    .line 130
    iget-object v3, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 132
    move-object v1, v12

    .line 133
    move-object v2, v0

    .line 134
    move-wide/from16 v4, p1

    .line 136
    move-wide/from16 v6, p3

    .line 138
    invoke-static/range {v1 .. v7}, Lmiuix/animation/internal/AnimRunnerTask;->startAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;JJ)V

    .line 141
    :cond_8c
    iget-byte v1, v0, Lmiuix/animation/internal/AnimData;->op:B

    .line 143
    const/4 v2, 0x2

    .line 144
    if-ne v1, v2, :cond_a0

    .line 146
    iget-object v3, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 148
    move-object v1, v12

    .line 149
    move-object v2, v0

    .line 150
    move-wide/from16 v4, p1

    .line 152
    move-wide/from16 v6, p3

    .line 154
    move/from16 v19, v9

    .line 156
    move-wide v8, v10

    .line 157
    invoke-static/range {v1 .. v9}, Lmiuix/animation/internal/AnimRunnerTask;->updateAnimation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;JJJ)V

    .line 160
    goto :goto_a2

    .line 161
    :cond_a0
    move/from16 v19, v9

    .line 163
    :goto_a2
    move-object/from16 v1, v16

    .line 165
    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimData;->to(Lmiuix/animation/listener/UpdateInfo;)V

    .line 168
    if-eqz p5, :cond_bc

    .line 170
    if-eqz p6, :cond_bc

    .line 172
    if-nez v19, :cond_bc

    .line 174
    iget-wide v2, v0, Lmiuix/animation/internal/AnimData;->value:D

    .line 176
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 179
    move-result v2

    .line 180
    if-nez v2, :cond_bc

    .line 182
    iget-object v2, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 184
    iget-object v2, v2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 186
    invoke-virtual {v1, v2}, Lmiuix/animation/listener/UpdateInfo;->setTargetValue(Lmiuix/animation/IAnimTarget;)V

    .line 189
    :cond_bc
    :goto_bc
    add-int/lit8 v8, v18, 0x1

    .line 191
    move/from16 v7, v17

    .line 193
    move/from16 v9, v19

    .line 195
    goto/16 :goto_3b

    .line 197
    :cond_c4
    invoke-virtual {v12}, Lmiuix/animation/utils/LinkNode;->remove()Lmiuix/animation/utils/LinkNode;

    .line 200
    move-result-object v1

    .line 201
    move-object v12, v1

    .line 202
    check-cast v12, Lmiuix/animation/internal/AnimTask;

    .line 204
    goto/16 :goto_1a

    .line 206
    :cond_cd
    return-void
.end method

.method private static evaluateValue(Lmiuix/animation/internal/AnimData;F)D
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 3
    invoke-static {v0}, Lmiuix/animation/internal/AnimRunnerTask;->getEvaluator(Lmiuix/animation/property/FloatProperty;)Landroid/animation/TypeEvaluator;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/animation/IntEvaluator;

    .line 9
    if-eqz v1, :cond_23

    .line 11
    check-cast v0, Landroid/animation/IntEvaluator;

    .line 13
    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 15
    double-to-int v1, v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 22
    double-to-int p0, v2

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p1, v1, p0}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    .line 34
    move-result-wide p0

    .line 35
    return-wide p0

    .line 36
    :cond_23
    check-cast v0, Landroid/animation/FloatEvaluator;

    .line 38
    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 40
    double-to-float v1, v1

    .line 41
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 44
    move-result-object v1

    .line 45
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 47
    double-to-float p0, v2

    .line 48
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p1, v1, p0}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Float;->doubleValue()D

    .line 59
    move-result-wide p0

    .line 60
    return-wide p0
.end method

.method private static finishProperty(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V
    .registers 3

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1, v0}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 5
    iget-object p0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 7
    iget p1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 11
    iput p1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 13
    return-void
.end method

.method private static getEvaluator(Lmiuix/animation/property/FloatProperty;)Landroid/animation/TypeEvaluator;
    .registers 2

    .line 1
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    .line 3
    if-ne p0, v0, :cond_b

    .line 5
    instance-of v0, p0, Lmiuix/animation/property/ColorProperty;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    sget-object p0, Lmiuix/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 11
    return-object p0

    .line 12
    :cond_b
    instance-of p0, p0, Lmiuix/animation/property/IIntValueProperty;

    .line 14
    if-eqz p0, :cond_15

    .line 16
    new-instance p0, Landroid/animation/IntEvaluator;

    .line 18
    invoke-direct {p0}, Landroid/animation/IntEvaluator;-><init>()V

    .line 21
    return-object p0

    .line 22
    :cond_15
    new-instance p0, Landroid/animation/FloatEvaluator;

    .line 24
    invoke-direct {p0}, Landroid/animation/FloatEvaluator;-><init>()V

    .line 27
    return-object p0
.end method

.method private static initAnimation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;JJ)Z
    .registers 11

    .line 1
    invoke-static {p1}, Lmiuix/animation/internal/AnimRunnerTask;->setValues(Lmiuix/animation/internal/AnimData;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ", value = "

    .line 7
    const-string v2, ", property = "

    .line 9
    const-string v3, "miuix_anim"

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v0, :cond_51

    .line 14
    iget-boolean p2, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    .line 16
    if-eqz p2, :cond_4d

    .line 18
    const-string p2, "StartTask, set start value failed, break, tag = "

    .line 20
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object p2

    .line 24
    iget-object p3, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 26
    iget-object p3, p3, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object p3, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 36
    invoke-virtual {p3}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string p3, ", start value = "

    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 50
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 53
    const-string p3, ", target value = "

    .line 55
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 60
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->value:D

    .line 68
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 75
    invoke-static {v3, p2}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_4d
    invoke-static {p0, p1}, Lmiuix/animation/internal/AnimRunnerTask;->finishProperty(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V

    .line 81
    return v4

    .line 82
    :cond_51
    invoke-static {p1}, Lmiuix/animation/internal/AnimRunnerTask;->isValueInvalid(Lmiuix/animation/internal/AnimData;)Z

    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_ac

    .line 88
    iget-boolean p2, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    .line 90
    if-eqz p2, :cond_a1

    .line 92
    const-string p2, "StartTask, values invalid, break, tag = "

    .line 94
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    move-result-object p2

    .line 98
    iget-object p3, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 100
    iget-object p3, p3, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 102
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object p3, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 110
    invoke-virtual {p3}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 113
    move-result-object p3

    .line 114
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string p3, ", startValue = "

    .line 119
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 124
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 127
    const-string p3, ", targetValue = "

    .line 129
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 134
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->value:D

    .line 142
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 145
    const-string p3, ", velocity = "

    .line 147
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 152
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p2

    .line 159
    invoke-static {v3, p2}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_a1
    invoke-virtual {p1}, Lmiuix/animation/internal/AnimData;->reset()V

    .line 165
    iget-wide p2, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 167
    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->value:D

    .line 169
    invoke-static {p0, p1}, Lmiuix/animation/internal/AnimRunnerTask;->finishProperty(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V

    .line 172
    return v4

    .line 173
    :cond_ac
    sub-long/2addr p2, p4

    .line 174
    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 176
    iput v4, p1, Lmiuix/animation/internal/AnimData;->frameCount:I

    .line 178
    const/4 p0, 0x2

    .line 179
    invoke-virtual {p1, p0}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 182
    const/4 p0, 0x1

    .line 183
    return p0
.end method

.method private static isValueInvalid(Lmiuix/animation/internal/AnimData;)Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 3
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 5
    cmpl-double v0, v0, v2

    .line 7
    if-nez v0, :cond_19

    .line 9
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 14
    move-result-wide v0

    .line 15
    const-wide v2, 0x4030aaaaa0000000L  # 16.66666603088379

    .line 20
    cmpg-double p0, v0, v2

    .line 22
    if-gez p0, :cond_19

    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p0, 0x0

    .line 27
    :goto_1a
    return p0
.end method

.method private static regulateProgress(F)F
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_7

    return v0

    :cond_7
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_d

    return v0

    :cond_d
    return p0
.end method

.method private static setStartData(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p1, Lmiuix/animation/internal/AnimData;->progress:D

    .line 5
    invoke-virtual {p1}, Lmiuix/animation/internal/AnimData;->reset()V

    .line 8
    iget-boolean v0, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    .line 10
    if-eqz v0, :cond_8c

    .line 12
    const-string v0, "+++++ start anim, target = "

    .line 14
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 20
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, ", tag = "

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object p0, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 32
    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    const-string p0, ", property = "

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object p0, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 44
    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string p0, ", op = "

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-byte p0, p1, Lmiuix/animation/internal/AnimData;->op:B

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string p0, ", ease = "

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object p0, p1, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    const-string p0, ", delay = "

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    const-string p0, ", start value = "

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 91
    const-string p0, ", target value = "

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 101
    const-string p0, ", value = "

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->value:D

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 111
    const-string p0, ", progress = "

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->progress:D

    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 121
    const-string p0, ", velocity = "

    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-wide p0, p1, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 128
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p0

    .line 135
    const/4 p1, 0x0

    .line 136
    new-array p1, p1, [Ljava/lang/Object;

    .line 138
    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_8c
    return-void
.end method

.method private static setValues(Lmiuix/animation/internal/AnimData;)Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 3
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_16

    .line 10
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 12
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_15

    .line 18
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 20
    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 22
    :cond_15
    return v1

    .line 23
    :cond_16
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 25
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_23

    .line 31
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 33
    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 35
    return v1

    .line 36
    :cond_23
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public static setup(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/base/AnimSpecialConfig;JJ)V
    .registers 13

    .line 1
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 3
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_14

    .line 9
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 11
    iget-object v2, p2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 13
    iget-object v3, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 15
    invoke-static {v2, v3, v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 21
    :cond_14
    sub-long/2addr p4, p6

    .line 22
    iput-wide p4, p1, Lmiuix/animation/internal/AnimData;->initTime:J

    .line 24
    iget-object p6, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 26
    iget p7, p6, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 28
    const/4 v0, 0x1

    .line 29
    add-int/2addr p7, v0

    .line 30
    iput p7, p6, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 32
    iget-byte p7, p1, Lmiuix/animation/internal/AnimData;->op:B

    .line 34
    const/4 v1, 0x2

    .line 35
    if-ne p7, v1, :cond_3a

    .line 37
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 39
    const-wide/16 v3, 0x0

    .line 41
    cmp-long p7, v1, v3

    .line 43
    if-lez p7, :cond_2d

    .line 45
    goto :goto_3a

    .line 46
    :cond_2d
    iput-wide p4, p1, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 48
    iput-wide v3, p1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 50
    iget p2, p6, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 52
    sub-int/2addr p2, v0

    .line 53
    iput p2, p6, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 55
    invoke-static {p0, p1}, Lmiuix/animation/internal/AnimRunnerTask;->setStartData(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V

    .line 58
    goto :goto_4d

    .line 59
    :cond_3a
    :goto_3a
    invoke-virtual {p1, v0}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 62
    iget-object p0, p2, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 64
    invoke-static {p0, p3}, Lmiuix/animation/internal/AnimConfigUtils;->getFromSpeed(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)F

    .line 67
    move-result p0

    .line 68
    const p2, 0x7f7fffff  # Float.MAX_VALUE

    .line 71
    cmpl-float p2, p0, p2

    .line 73
    if-eqz p2, :cond_4d

    .line 75
    float-to-double p2, p0

    .line 76
    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 78
    :cond_4d
    :goto_4d
    return-void
.end method

.method public static startAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;JJ)V
    .registers 13

    .line 1
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-lez v0, :cond_6a

    .line 9
    iget-boolean v0, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    .line 11
    if-eqz v0, :cond_4d

    .line 13
    const-string v0, "StartTask, tag = "

    .line 15
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 21
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", property = "

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 33
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ", delay = "

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, ", initTime = "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->initTime:J

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ", totalT = "

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x0

    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_4d
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->initTime:J

    .line 80
    iget-wide v2, p1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 82
    add-long/2addr v0, v2

    .line 83
    cmp-long v0, p3, v0

    .line 85
    if-gez v0, :cond_57

    .line 87
    return-void

    .line 88
    :cond_57
    iget-object p2, p2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 90
    iget-object v0, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 92
    const-wide v1, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 97
    invoke-static {p2, v0, v1, v2}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 100
    move-result-wide v3

    .line 101
    cmpl-double p2, v3, v1

    .line 103
    if-eqz p2, :cond_6a

    .line 105
    iput-wide v3, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 107
    :cond_6a
    iget-object p2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 109
    iget v0, p2, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 111
    add-int/lit8 v0, v0, -0x1

    .line 113
    iput v0, p2, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 115
    move-object v0, p0

    .line 116
    move-object v1, p1

    .line 117
    move-wide v2, p3

    .line 118
    move-wide v4, p5

    .line 119
    invoke-static/range {v0 .. v5}, Lmiuix/animation/internal/AnimRunnerTask;->initAnimation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;JJ)Z

    .line 122
    move-result p2

    .line 123
    if-nez p2, :cond_7d

    .line 125
    return-void

    .line 126
    :cond_7d
    invoke-static {p0, p1}, Lmiuix/animation/internal/AnimRunnerTask;->setStartData(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V

    .line 129
    return-void
.end method

.method private static updateAnimation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;JJJ)V
    .registers 24

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v9, p1

    .line 4
    move-object/from16 v1, p2

    .line 6
    iget-object v2, v0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 8
    iget v3, v2, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 10
    const/4 v10, 0x1

    .line 11
    add-int/2addr v3, v10

    .line 12
    iput v3, v2, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 14
    iget v2, v9, Lmiuix/animation/internal/AnimData;->frameCount:I

    .line 16
    add-int/2addr v2, v10

    .line 17
    iput v2, v9, Lmiuix/animation/internal/AnimData;->frameCount:I

    .line 19
    iget-object v2, v9, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 21
    sget-object v3, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 23
    if-eq v2, v3, :cond_42

    .line 25
    sget-object v3, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    .line 27
    if-eq v2, v3, :cond_42

    .line 29
    instance-of v2, v2, Lmiuix/animation/property/ColorProperty;

    .line 31
    if-eqz v2, :cond_21

    .line 33
    goto :goto_42

    .line 34
    :cond_21
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 36
    move-object/from16 v2, p1

    .line 38
    move-wide/from16 v3, p3

    .line 40
    move-wide/from16 v5, p5

    .line 42
    move-wide/from16 v7, p7

    .line 44
    invoke-static/range {v1 .. v8}, Lmiuix/animation/styles/PropertyStyle;->doAnimationFrame(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJJ)V

    .line 47
    iget-object v1, v9, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 49
    iget v1, v1, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 51
    invoke-static {v1}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_88

    .line 57
    iget-wide v1, v9, Lmiuix/animation/internal/AnimData;->progress:D

    .line 59
    double-to-float v1, v1

    .line 60
    invoke-static {v9, v1}, Lmiuix/animation/internal/AnimRunnerTask;->evaluateValue(Lmiuix/animation/internal/AnimData;F)D

    .line 63
    move-result-wide v1

    .line 64
    iput-wide v1, v9, Lmiuix/animation/internal/AnimData;->value:D

    .line 66
    goto :goto_88

    .line 67
    :cond_42
    :goto_42
    iget-wide v11, v9, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 69
    iget-wide v13, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 71
    const-wide/16 v2, 0x0

    .line 73
    iput-wide v2, v9, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 75
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 77
    iput-wide v2, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 79
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->progress:D

    .line 81
    iput-wide v2, v9, Lmiuix/animation/internal/AnimData;->value:D

    .line 83
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 85
    move-object/from16 v2, p1

    .line 87
    move-wide/from16 v3, p3

    .line 89
    move-wide/from16 v5, p5

    .line 91
    move-wide/from16 v7, p7

    .line 93
    invoke-static/range {v1 .. v8}, Lmiuix/animation/styles/PropertyStyle;->doAnimationFrame(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJJ)V

    .line 96
    iget-wide v1, v9, Lmiuix/animation/internal/AnimData;->value:D

    .line 98
    double-to-float v1, v1

    .line 99
    invoke-static {v1}, Lmiuix/animation/internal/AnimRunnerTask;->regulateProgress(F)F

    .line 102
    move-result v1

    .line 103
    float-to-double v1, v1

    .line 104
    iput-wide v1, v9, Lmiuix/animation/internal/AnimData;->progress:D

    .line 106
    iput-wide v11, v9, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 108
    iput-wide v13, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 110
    sget-object v3, Lmiuix/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 112
    double-to-float v1, v1

    .line 113
    double-to-int v2, v11

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v2

    .line 118
    iget-wide v4, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 120
    double-to-int v4, v4

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v3, v1, v2, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Ljava/lang/Integer;

    .line 131
    invoke-virtual {v1}, Ljava/lang/Integer;->doubleValue()D

    .line 134
    move-result-wide v1

    .line 135
    iput-wide v1, v9, Lmiuix/animation/internal/AnimData;->value:D

    .line 137
    :cond_88
    :goto_88
    iget-byte v1, v9, Lmiuix/animation/internal/AnimData;->op:B

    .line 139
    const/4 v2, 0x3

    .line 140
    if-ne v1, v2, :cond_96

    .line 142
    iput-boolean v10, v9, Lmiuix/animation/internal/AnimData;->justEnd:Z

    .line 144
    iget-object v1, v0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 146
    iget v2, v1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 148
    add-int/2addr v2, v10

    .line 149
    iput v2, v1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 151
    :cond_96
    iget-boolean v1, v9, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    .line 153
    if-eqz v1, :cond_14b

    .line 155
    const-string v1, "----- update anim, target = "

    .line 157
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    move-result-object v1

    .line 161
    iget-object v2, v0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 163
    iget-object v2, v2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    const-string v2, ", info.id = "

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v2, v0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 175
    iget v2, v2, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const-string v2, ", tag = "

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v2, v0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 187
    iget-object v2, v2, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    const-string v2, " "

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v0, v0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 199
    iget-object v0, v0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 204
    move-result v0

    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    const-string v0, ", property = "

    .line 210
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v0, v9, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 215
    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v0, ", op = "

    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-byte v0, v9, Lmiuix/animation/internal/AnimData;->op:B

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    const-string v0, ", justEnd = "

    .line 234
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-boolean v0, v9, Lmiuix/animation/internal/AnimData;->justEnd:Z

    .line 239
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 242
    const-string v0, ", init time = "

    .line 244
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->initTime:J

    .line 249
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 252
    const-string v0, ", start time = "

    .line 254
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 259
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 262
    const-string v0, ", start value = "

    .line 264
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 269
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 272
    const-string v0, ", target value = "

    .line 274
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 279
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 282
    const-string v0, ", value = "

    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->value:D

    .line 289
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 292
    const-string v0, ", progress = "

    .line 294
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->progress:D

    .line 299
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 302
    const-string v0, ", velocity = "

    .line 304
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 309
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 312
    const-string v0, ", delta = "

    .line 314
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    move-wide/from16 v2, p5

    .line 319
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object v0

    .line 326
    const/4 v1, 0x0

    .line 327
    new-array v1, v1, [Ljava/lang/Object;

    .line 329
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    :cond_14b
    return-void
.end method
