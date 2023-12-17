.class Lcom/miui/maml/ActionCommand$VideoCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VideoCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

.field private mLooping:Lcom/miui/maml/data/Expression;

.field private mPath:Lcom/miui/maml/data/Expression;

.field private mScaleMode:Lcom/miui/maml/data/Expression;

.field private mTime:Lcom/miui/maml/data/Expression;

.field private mVolume:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object p1

    .line 8
    const-string v0, "command"

    .line 10
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "path"

    .line 16
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mPath:Lcom/miui/maml/data/Expression;

    .line 26
    const-string v1, "volume"

    .line 28
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mVolume:Lcom/miui/maml/data/Expression;

    .line 38
    const-string v1, "scaleMode"

    .line 40
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mScaleMode:Lcom/miui/maml/data/Expression;

    .line 50
    const-string v1, "loop"

    .line 52
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mLooping:Lcom/miui/maml/data/Expression;

    .line 62
    const-string v1, "time"

    .line 64
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 68
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mTime:Lcom/miui/maml/data/Expression;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 80
    move-result p1

    .line 81
    const/4 p2, -0x1

    .line 82
    sparse-switch p1, :sswitch_data_ac

    .line 85
    goto :goto_8b

    .line 86
    :sswitch_55
    const-string p1, "setVolume"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_5e

    .line 94
    goto :goto_8b

    .line 95
    :cond_5e
    const/4 p2, 0x4

    .line 96
    goto :goto_8b

    .line 97
    :sswitch_60
    const-string p1, "pause"

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_69

    .line 105
    goto :goto_8b

    .line 106
    :cond_69
    const/4 p2, 0x3

    .line 107
    goto :goto_8b

    .line 108
    :sswitch_6b
    const-string p1, "play"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_74

    .line 116
    goto :goto_8b

    .line 117
    :cond_74
    const/4 p2, 0x2

    .line 118
    goto :goto_8b

    .line 119
    :sswitch_76
    const-string p1, "seekTo"

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_7f

    .line 127
    goto :goto_8b

    .line 128
    :cond_7f
    const/4 p2, 0x1

    .line 129
    goto :goto_8b

    .line 130
    :sswitch_81
    const-string p1, "config"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_8a

    .line 138
    goto :goto_8b

    .line 139
    :cond_8a
    const/4 p2, 0x0

    .line 140
    :goto_8b
    packed-switch p2, :pswitch_data_c2

    .line 143
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 145
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 147
    goto :goto_ab

    .line 148
    :pswitch_93  #0x4
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 150
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 152
    goto :goto_ab

    .line 153
    :pswitch_98  #0x3
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 155
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 157
    goto :goto_ab

    .line 158
    :pswitch_9d  #0x2
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 160
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 162
    goto :goto_ab

    .line 163
    :pswitch_a2  #0x1
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 165
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 167
    goto :goto_ab

    .line 168
    :pswitch_a7  #0x0
    sget-object p1, Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 170
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 172
    :goto_ab
    return-void

    .line 173
    :sswitch_data_ac
    .sparse-switch
        -0x50c07cbe -> :sswitch_81
        -0x3603e4ed -> :sswitch_76
        0x348b34 -> :sswitch_6b
        0x65825f6 -> :sswitch_60
        0x27f73e1c -> :sswitch_55
    .end sparse-switch

    .line 195
    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_a7  #00000000
        :pswitch_a2  #00000001
        :pswitch_9d  #00000002
        :pswitch_98  #00000003
        :pswitch_93  #00000004
    .end packed-switch
.end method


# virtual methods
.method public doPerform()V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_71

    .line 7
    instance-of v1, v0, Lcom/miui/maml/elements/video/VideoElement;

    .line 9
    if-nez v1, :cond_c

    .line 11
    goto/16 :goto_71

    .line 13
    :cond_c
    check-cast v0, Lcom/miui/maml/elements/video/VideoElement;

    .line 15
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType:[I

    .line 17
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mCommand:Lcom/miui/maml/ActionCommand$VideoCommand$CommandType;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result v2

    .line 23
    aget v1, v1, v2

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eq v1, v2, :cond_6e

    .line 28
    const/4 v3, 0x2

    .line 29
    if-eq v1, v3, :cond_6a

    .line 31
    const/4 v3, 0x3

    .line 32
    if-eq v1, v3, :cond_5d

    .line 34
    const/4 v3, 0x4

    .line 35
    if-eq v1, v3, :cond_50

    .line 37
    const/4 v3, 0x5

    .line 38
    if-eq v1, v3, :cond_28

    .line 40
    goto :goto_71

    .line 41
    :cond_28
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mLooping:Lcom/miui/maml/data/Expression;

    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v1, :cond_38

    .line 46
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 49
    move-result-wide v4

    .line 50
    const-wide/16 v6, 0x0

    .line 52
    cmpl-double v1, v4, v6

    .line 54
    if-lez v1, :cond_38

    .line 56
    move v3, v2

    .line 57
    :cond_38
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mScaleMode:Lcom/miui/maml/data/Expression;

    .line 59
    if-eqz v1, :cond_41

    .line 61
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 64
    move-result-wide v1

    .line 65
    double-to-int v2, v1

    .line 66
    :cond_41
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mPath:Lcom/miui/maml/data/Expression;

    .line 68
    if-eqz v1, :cond_4a

    .line 70
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    goto :goto_4c

    .line 75
    :cond_4a
    const-string v1, ""

    .line 77
    :goto_4c
    invoke-virtual {v0, v3, v2, v1}, Lcom/miui/maml/elements/video/VideoElement;->config(ZILjava/lang/String;)V

    .line 80
    goto :goto_71

    .line 81
    :cond_50
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mVolume:Lcom/miui/maml/data/Expression;

    .line 83
    if-eqz v1, :cond_71

    .line 85
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 88
    move-result-wide v1

    .line 89
    double-to-float v1, v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/video/VideoElement;->setVolume(F)V

    .line 93
    goto :goto_71

    .line 94
    :cond_5d
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VideoCommand;->mTime:Lcom/miui/maml/data/Expression;

    .line 96
    if-eqz v1, :cond_71

    .line 98
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 101
    move-result-wide v1

    .line 102
    double-to-int v1, v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/video/VideoElement;->seekTo(I)V

    .line 106
    goto :goto_71

    .line 107
    :cond_6a
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/VideoElement;->pause()V

    .line 110
    goto :goto_71

    .line 111
    :cond_6e
    invoke-virtual {v0}, Lcom/miui/maml/elements/video/VideoElement;->play()V

    .line 114
    :cond_71
    :goto_71
    return-void
.end method
