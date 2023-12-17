.class Lcom/miui/maml/ActionCommand$AnimConfigCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimConfigCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimConfigCommand"


# instance fields
.field private mAttr:Lcom/miui/maml/data/Expression;

.field private mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

.field private mSubName:Lcom/miui/maml/data/Expression;

.field private mValuesExp:[Lcom/miui/maml/data/Expression;


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
    const-string v0, "subNameExp"

    .line 10
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mSubName:Lcom/miui/maml/data/Expression;

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 23
    move-result-object p1

    .line 24
    const-string v0, "attrExp"

    .line 26
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mAttr:Lcom/miui/maml/data/Expression;

    .line 36
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 39
    move-result-object p1

    .line 40
    const-string v0, "valuesExp"

    .line 42
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    .line 52
    const-string p1, "command"

    .line 54
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 64
    move-result p2

    .line 65
    const/4 v0, -0x1

    .line 66
    sparse-switch p2, :sswitch_data_7c

    .line 69
    goto :goto_65

    .line 70
    :sswitch_45
    const-string p2, "clear"

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_4e

    .line 78
    goto :goto_65

    .line 79
    :cond_4e
    const/4 v0, 0x2

    .line 80
    goto :goto_65

    .line 81
    :sswitch_50
    const-string p2, "update"

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_59

    .line 89
    goto :goto_65

    .line 90
    :cond_59
    const/4 v0, 0x1

    .line 91
    goto :goto_65

    .line 92
    :sswitch_5b
    const-string p2, "remove"

    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_64

    .line 100
    goto :goto_65

    .line 101
    :cond_64
    const/4 v0, 0x0

    .line 102
    :goto_65
    packed-switch v0, :pswitch_data_8a

    .line 105
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 107
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 109
    goto :goto_7b

    .line 110
    :pswitch_6d  #0x2
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->CLEAR:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 112
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 114
    goto :goto_7b

    .line 115
    :pswitch_72  #0x1
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->UPDATE:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 117
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 119
    goto :goto_7b

    .line 120
    :pswitch_77  #0x0
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;->REMOVE:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 122
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 124
    :goto_7b
    return-void

    .line 125
    :sswitch_data_7c
    .sparse-switch
        -0x37b5077c -> :sswitch_5b
        -0x31ffc737 -> :sswitch_50
        0x5a5b64d -> :sswitch_45
    .end sparse-switch

    .line 139
    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_77  #00000000
        :pswitch_72  #00000001
        :pswitch_6d  #00000002
    .end packed-switch
.end method


# virtual methods
.method public doPerform()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_64

    .line 7
    instance-of v1, v0, Lcom/miui/maml/elements/AnimConfigElement;

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_64

    .line 12
    :cond_b
    check-cast v0, Lcom/miui/maml/elements/AnimConfigElement;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mSubName:Lcom/miui/maml/data/Expression;

    .line 26
    const-string v3, ""

    .line 28
    if-eqz v2, :cond_31

    .line 30
    const-string v2, "."

    .line 32
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v2

    .line 36
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mSubName:Lcom/miui/maml/data/Expression;

    .line 38
    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move-object v2, v3

    .line 51
    :goto_32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mAttr:Lcom/miui/maml/data/Expression;

    .line 60
    if-eqz v2, :cond_41

    .line 62
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    :cond_41
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type:[I

    .line 68
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimConfigCommand$Type;

    .line 70
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 73
    move-result v4

    .line 74
    aget v2, v2, v4

    .line 76
    const/4 v4, 0x1

    .line 77
    if-eq v2, v4, :cond_5d

    .line 79
    const/4 v4, 0x2

    .line 80
    if-eq v2, v4, :cond_59

    .line 82
    const/4 v1, 0x3

    .line 83
    if-eq v2, v1, :cond_55

    .line 85
    goto :goto_64

    .line 86
    :cond_55
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimConfigElement;->clearConfigData()V

    .line 89
    goto :goto_64

    .line 90
    :cond_59
    invoke-virtual {v0, v1, v3}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    goto :goto_64

    .line 94
    :cond_5d
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimConfigCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    .line 96
    if-eqz v2, :cond_64

    .line 98
    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/maml/elements/AnimConfigElement;->updateConfigData(Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V

    .line 101
    :cond_64
    :goto_64
    return-void
.end method
