.class Lcom/miui/maml/ActionCommand$AnimationCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimationCommand"


# instance fields
.field private mAllAni:Z

.field private mAniTags:[Ljava/lang/String;

.field private mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

.field private mPlayParams:[Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 4
    const-string p1, "command"

    .line 6
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string v0, "play"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_17

    .line 19
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 21
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 23
    goto :goto_73

    .line 24
    :cond_17
    const-string v0, "pause"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_24

    .line 32
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 34
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 36
    goto :goto_73

    .line 37
    :cond_24
    const-string v0, "resume"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_31

    .line 45
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 47
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 49
    goto :goto_73

    .line 50
    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    const-string v2, "play("

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_6f

    .line 62
    const-string v0, ")"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_6f

    .line 70
    sget-object v0, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 72
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 74
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 77
    move-result-object v0

    .line 78
    const/4 v2, 0x5

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 82
    move-result v3

    .line 83
    sub-int/2addr v3, v1

    .line 84
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 91
    move-result-object p1

    .line 92
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 94
    if-eqz p1, :cond_73

    .line 96
    array-length v0, p1

    .line 97
    const/4 v2, 0x2

    .line 98
    if-eq v0, v2, :cond_73

    .line 100
    array-length p1, p1

    .line 101
    const/4 v0, 0x4

    .line 102
    if-eq p1, v0, :cond_73

    .line 104
    const-string p1, "ActionCommand"

    .line 106
    const-string v0, "bad expression format"

    .line 108
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    goto :goto_73

    .line 112
    :cond_6f
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 114
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 116
    :cond_73
    :goto_73
    const-string p1, "tags"

    .line 118
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    const-string p2, "."

    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_84

    .line 130
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    .line 132
    goto :goto_92

    .line 133
    :cond_84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    move-result p2

    .line 137
    if-nez p2, :cond_92

    .line 139
    const-string p2, ","

    .line 141
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    .line 147
    :cond_92
    :goto_92
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 16

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Lcom/miui/maml/elements/ScreenElement;

    .line 8
    if-nez v1, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 13
    sget-object v2, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 15
    if-eq v0, v2, :cond_14

    .line 17
    sget-object v2, Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 19
    if-ne v0, v2, :cond_21

    .line 21
    :cond_14
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    .line 23
    if-nez v0, :cond_1c

    .line 25
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    .line 27
    if-eqz v0, :cond_21

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 34
    :cond_21
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    .line 36
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimationCommand$CommandType;

    .line 38
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 41
    move-result v2

    .line 42
    aget v0, v0, v2

    .line 44
    const/4 v2, 0x1

    .line 45
    if-eq v0, v2, :cond_9a

    .line 47
    const/4 v3, 0x2

    .line 48
    if-eq v0, v3, :cond_96

    .line 50
    const/4 v4, 0x3

    .line 51
    if-eq v0, v4, :cond_92

    .line 53
    const/4 v5, 0x4

    .line 54
    if-eq v0, v5, :cond_39

    .line 56
    goto/16 :goto_9d

    .line 58
    :cond_39
    const-wide/16 v5, 0x0

    .line 60
    const-wide/16 v7, -0x1

    .line 62
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 64
    array-length v9, v0

    .line 65
    const-wide/16 v10, 0x0

    .line 67
    const/4 v12, 0x0

    .line 68
    if-lez v9, :cond_50

    .line 70
    aget-object v0, v0, v12

    .line 72
    if-nez v0, :cond_4b

    .line 74
    move-wide v5, v10

    .line 75
    goto :goto_4f

    .line 76
    :cond_4b
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 79
    move-result-wide v5

    .line 80
    :goto_4f
    double-to-long v5, v5

    .line 81
    :cond_50
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 83
    array-length v9, v0

    .line 84
    if-le v9, v2, :cond_61

    .line 86
    aget-object v0, v0, v2

    .line 88
    if-nez v0, :cond_5c

    .line 90
    const-wide/high16 v7, -0x4010000000000000L  # -1.0

    .line 92
    goto :goto_60

    .line 93
    :cond_5c
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 96
    move-result-wide v7

    .line 97
    :goto_60
    double-to-long v7, v7

    .line 98
    :cond_61
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 100
    array-length v9, v0

    .line 101
    if-le v9, v3, :cond_75

    .line 103
    aget-object v0, v0, v3

    .line 105
    if-nez v0, :cond_6b

    .line 107
    goto :goto_75

    .line 108
    :cond_6b
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 111
    move-result-wide v13

    .line 112
    cmpl-double v0, v13, v10

    .line 114
    if-lez v0, :cond_75

    .line 116
    move v0, v2

    .line 117
    goto :goto_76

    .line 118
    :cond_75
    :goto_75
    move v0, v12

    .line 119
    :goto_76
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lcom/miui/maml/data/Expression;

    .line 121
    array-length v9, v3

    .line 122
    if-le v9, v4, :cond_8a

    .line 124
    aget-object v3, v3, v4

    .line 126
    if-nez v3, :cond_81

    .line 128
    :cond_7f
    move v2, v12

    .line 129
    goto :goto_89

    .line 130
    :cond_81
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 133
    move-result-wide v3

    .line 134
    cmpl-double v3, v3, v10

    .line 136
    if-lez v3, :cond_7f

    .line 138
    :goto_89
    move v12, v2

    .line 139
    :cond_8a
    move-wide v2, v5

    .line 140
    move-wide v4, v7

    .line 141
    move v6, v0

    .line 142
    move v7, v12

    .line 143
    invoke-virtual/range {v1 .. v7}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    .line 146
    goto :goto_9d

    .line 147
    :cond_92
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim()V

    .line 150
    goto :goto_9d

    .line 151
    :cond_96
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim()V

    .line 154
    goto :goto_9d

    .line 155
    :cond_9a
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->playAnim()V

    .line 158
    :goto_9d
    return-void
.end method
