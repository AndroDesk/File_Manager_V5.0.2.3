.class Lcom/miui/maml/ActionCommand$FolmeCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolmeCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$FolmeCommand$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FolmeCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

.field private mConfig:Lcom/miui/maml/data/Expression;

.field private mIsParamsValid:Z

.field private mIsStatesValid:Z

.field private mParams:[Lcom/miui/maml/data/Expression;

.field private mStates:[Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object p1

    .line 8
    const-string v0, "params"

    .line 10
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 23
    move-result-object p1

    .line 24
    const-string v0, "states"

    .line 26
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    .line 36
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 39
    move-result-object p1

    .line 40
    const-string v0, "config"

    .line 42
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mConfig:Lcom/miui/maml/data/Expression;

    .line 52
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 54
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    .line 57
    move-result p1

    .line 58
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsParamsValid:Z

    .line 60
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    .line 62
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    .line 65
    move-result p1

    .line 66
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    .line 68
    const-string p1, "command"

    .line 70
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 80
    move-result p2

    .line 81
    const/4 v0, -0x1

    .line 82
    sparse-switch p2, :sswitch_data_9c

    .line 85
    goto :goto_80

    .line 86
    :sswitch_55
    const-string p2, "setTo"

    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_5e

    .line 94
    goto :goto_80

    .line 95
    :cond_5e
    const/4 v0, 0x3

    .line 96
    goto :goto_80

    .line 97
    :sswitch_60
    const-string p2, "to"

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_69

    .line 105
    goto :goto_80

    .line 106
    :cond_69
    const/4 v0, 0x2

    .line 107
    goto :goto_80

    .line 108
    :sswitch_6b
    const-string p2, "fromTo"

    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_74

    .line 116
    goto :goto_80

    .line 117
    :cond_74
    const/4 v0, 0x1

    .line 118
    goto :goto_80

    .line 119
    :sswitch_76
    const-string p2, "cancel"

    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_7f

    .line 127
    goto :goto_80

    .line 128
    :cond_7f
    const/4 v0, 0x0

    .line 129
    :goto_80
    packed-switch v0, :pswitch_data_ae

    .line 132
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 134
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 136
    goto :goto_9b

    .line 137
    :pswitch_88  #0x3
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->SET_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 139
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 141
    goto :goto_9b

    .line 142
    :pswitch_8d  #0x2
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 144
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 146
    goto :goto_9b

    .line 147
    :pswitch_92  #0x1
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->FROM_TO:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 149
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 151
    goto :goto_9b

    .line 152
    :pswitch_97  #0x0
    sget-object p1, Lcom/miui/maml/ActionCommand$FolmeCommand$Type;->CANCEL:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 154
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 156
    :goto_9b
    return-void

    .line 157
    :sswitch_data_9c
    .sparse-switch
        -0x5185d186 -> :sswitch_76
        -0x4b77203b -> :sswitch_6b
        0xe7b -> :sswitch_60
        0x684367d -> :sswitch_55
    .end sparse-switch

    .line 175
    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_97  #00000000
        :pswitch_92  #00000001
        :pswitch_8d  #00000002
        :pswitch_88  #00000003
    .end packed-switch
.end method

.method private folmeCancel(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsParamsValid:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 7
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeCancel([Lcom/miui/maml/data/Expression;)V

    .line 10
    goto :goto_e

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeCancel([Lcom/miui/maml/data/Expression;)V

    .line 15
    :goto_e
    return-void
.end method

.method private folmeFromTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    .line 3
    if-eqz v0, :cond_26

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-le v1, v2, :cond_26

    .line 11
    const/4 v1, 0x0

    .line 12
    aget-object v0, v0, v1

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    .line 20
    aget-object v1, v1, v2

    .line 22
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mConfig:Lcom/miui/maml/data/Expression;

    .line 28
    if-eqz v2, :cond_22

    .line 30
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 v2, 0x0

    .line 36
    :goto_23
    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeFromTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_26
    return-void
.end method

.method private folmeSetTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    .line 3
    if-eqz v0, :cond_13

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v1, v0

    .line 8
    if-lez v1, :cond_13

    .line 10
    const/4 v1, 0x0

    .line 11
    aget-object v0, v0, v1

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeSetTo(Ljava/lang/String;)V

    .line 20
    :cond_13
    return-void
.end method

.method private folmeTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mStates:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v1, v0

    .line 8
    if-lez v1, :cond_1d

    .line 10
    const/4 v1, 0x0

    .line 11
    aget-object v0, v0, v1

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mConfig:Lcom/miui/maml/data/Expression;

    .line 19
    if-eqz v1, :cond_19

    .line 21
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v1, 0x0

    .line 27
    :goto_1a
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeTo(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_1d
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_33

    .line 7
    instance-of v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_33

    .line 12
    :cond_b
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 14
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type:[I

    .line 16
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$FolmeCommand;->mCommand:Lcom/miui/maml/ActionCommand$FolmeCommand$Type;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    move-result v2

    .line 22
    aget v1, v1, v2

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_30

    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq v1, v2, :cond_2c

    .line 30
    const/4 v2, 0x3

    .line 31
    if-eq v1, v2, :cond_28

    .line 33
    const/4 v2, 0x4

    .line 34
    if-eq v1, v2, :cond_24

    .line 36
    goto :goto_33

    .line 37
    :cond_24
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeCancel(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 40
    goto :goto_33

    .line 41
    :cond_28
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeFromTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 44
    goto :goto_33

    .line 45
    :cond_2c
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeSetTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 48
    goto :goto_33

    .line 49
    :cond_30
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$FolmeCommand;->folmeTo(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 52
    :cond_33
    :goto_33
    return-void
.end method
