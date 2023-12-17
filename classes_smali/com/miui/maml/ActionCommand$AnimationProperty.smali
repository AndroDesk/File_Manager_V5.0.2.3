.class Lcom/miui/maml/ActionCommand$AnimationProperty;
.super Lcom/miui/maml/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$AnimationProperty$Type;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "animation"


# instance fields
.field private mPlayParams:[Lcom/miui/maml/data/Expression;

.field private mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/ActionCommand$PropertyCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V

    .line 4
    const-string p1, "play"

    .line 6
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_10

    .line 12
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 14
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 16
    goto :goto_6d

    .line 17
    :cond_10
    const-string p1, "pause"

    .line 19
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1d

    .line 25
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 27
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 29
    goto :goto_6d

    .line 30
    :cond_1d
    const-string p1, "resume"

    .line 32
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2a

    .line 38
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 40
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 42
    goto :goto_6d

    .line 43
    :cond_2a
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    const-string p2, "play("

    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_69

    .line 55
    const-string p1, ")"

    .line 57
    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_69

    .line 63
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 65
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 67
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 70
    move-result-object p1

    .line 71
    const/4 p2, 0x5

    .line 72
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 75
    move-result v0

    .line 76
    add-int/lit8 v0, v0, -0x1

    .line 78
    invoke-virtual {p3, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 82
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 88
    if-eqz p1, :cond_6d

    .line 90
    array-length p2, p1

    .line 91
    const/4 p3, 0x2

    .line 92
    if-eq p2, p3, :cond_6d

    .line 94
    array-length p1, p1

    .line 95
    const/4 p2, 0x4

    .line 96
    if-eq p1, p2, :cond_6d

    .line 98
    const-string p1, "ActionCommand"

    .line 100
    const-string p2, "bad expression format"

    .line 102
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    goto :goto_6d

    .line 106
    :cond_69
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->INVALID:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 108
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 110
    :cond_6d
    :goto_6d
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type:[I

    .line 5
    iget-object v2, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mType:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v1, v2, :cond_88

    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v1, v3, :cond_82

    .line 19
    const/4 v4, 0x3

    .line 20
    if-eq v1, v4, :cond_7c

    .line 22
    const/4 v5, 0x4

    .line 23
    if-eq v1, v5, :cond_1a

    .line 25
    goto/16 :goto_8d

    .line 27
    :cond_1a
    const-wide/16 v5, 0x0

    .line 29
    const-wide/16 v7, -0x1

    .line 31
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 33
    array-length v9, v1

    .line 34
    const-wide/16 v10, 0x0

    .line 36
    const/4 v12, 0x0

    .line 37
    if-lez v9, :cond_31

    .line 39
    aget-object v1, v1, v12

    .line 41
    if-nez v1, :cond_2c

    .line 43
    move-wide v5, v10

    .line 44
    goto :goto_30

    .line 45
    :cond_2c
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 48
    move-result-wide v5

    .line 49
    :goto_30
    double-to-long v5, v5

    .line 50
    :cond_31
    move-wide v14, v5

    .line 51
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 53
    array-length v5, v1

    .line 54
    if-le v5, v2, :cond_43

    .line 56
    aget-object v1, v1, v2

    .line 58
    if-nez v1, :cond_3e

    .line 60
    const-wide/high16 v5, -0x4010000000000000L  # -1.0

    .line 62
    goto :goto_42

    .line 63
    :cond_3e
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 66
    move-result-wide v5

    .line 67
    :goto_42
    double-to-long v7, v5

    .line 68
    :cond_43
    move-wide/from16 v16, v7

    .line 70
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 72
    array-length v5, v1

    .line 73
    if-le v5, v3, :cond_5c

    .line 75
    aget-object v1, v1, v3

    .line 77
    if-nez v1, :cond_50

    .line 79
    :cond_4e
    move v1, v12

    .line 80
    goto :goto_59

    .line 81
    :cond_50
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 84
    move-result-wide v5

    .line 85
    cmpl-double v1, v5, v10

    .line 87
    if-lez v1, :cond_4e

    .line 89
    move v1, v2

    .line 90
    :goto_59
    move/from16 v18, v1

    .line 92
    goto :goto_5e

    .line 93
    :cond_5c
    move/from16 v18, v12

    .line 95
    :goto_5e
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$AnimationProperty;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 97
    array-length v3, v1

    .line 98
    if-le v3, v4, :cond_74

    .line 100
    aget-object v1, v1, v4

    .line 102
    if-nez v1, :cond_69

    .line 104
    :cond_67
    move v2, v12

    .line 105
    goto :goto_71

    .line 106
    :cond_69
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 109
    move-result-wide v3

    .line 110
    cmpl-double v1, v3, v10

    .line 112
    if-lez v1, :cond_67

    .line 114
    :goto_71
    move/from16 v19, v2

    .line 116
    goto :goto_76

    .line 117
    :cond_74
    move/from16 v19, v12

    .line 119
    :goto_76
    iget-object v13, v0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 121
    invoke-virtual/range {v13 .. v19}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    .line 124
    goto :goto_8d

    .line 125
    :cond_7c
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 127
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim()V

    .line 130
    goto :goto_8d

    .line 131
    :cond_82
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 133
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim()V

    .line 136
    goto :goto_8d

    .line 137
    :cond_88
    iget-object v1, v0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 139
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->playAnim()V

    .line 142
    :goto_8d
    return-void
.end method
