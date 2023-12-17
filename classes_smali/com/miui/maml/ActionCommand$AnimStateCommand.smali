.class Lcom/miui/maml/ActionCommand$AnimStateCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimStateCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimStateCommand"


# instance fields
.field private mAttrArrayName:Lcom/miui/maml/data/Expression;

.field private mAttrs:[Ljava/lang/String;

.field private mAttrsExp:[Lcom/miui/maml/data/Expression;

.field private mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

.field private mIsAttrsValid:Z

.field private mIsValuesValid:Z

.field private mValueArrayName:Lcom/miui/maml/data/Expression;

.field private mValues:[D

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
    const-string v0, "valueArrayNameExp"

    .line 10
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValueArrayName:Lcom/miui/maml/data/Expression;

    .line 20
    const-string v0, "attrArrayNameExp"

    .line 22
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    .line 32
    const-string v0, "valuesExp"

    .line 34
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    .line 44
    const-string v0, "attrsExp"

    .line 46
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    .line 56
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    .line 58
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    .line 61
    move-result p1

    .line 62
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mIsValuesValid:Z

    .line 64
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    .line 66
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    .line 69
    move-result p1

    .line 70
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mIsAttrsValid:Z

    .line 72
    if-eqz p1, :cond_50

    .line 74
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    .line 76
    array-length p1, p1

    .line 77
    new-array p1, p1, [Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 81
    :cond_50
    iget-boolean p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mIsValuesValid:Z

    .line 83
    if-eqz p1, :cond_5b

    .line 85
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    .line 87
    array-length p1, p1

    .line 88
    new-array p1, p1, [D

    .line 90
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    .line 92
    :cond_5b
    const-string p1, "command"

    .line 94
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    const/4 p2, -0x1

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 105
    move-result v0

    .line 106
    sparse-switch v0, :sswitch_data_a4

    .line 109
    goto :goto_8d

    .line 110
    :sswitch_6d
    const-string v0, "clear"

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_76

    .line 118
    goto :goto_8d

    .line 119
    :cond_76
    const/4 p2, 0x2

    .line 120
    goto :goto_8d

    .line 121
    :sswitch_78
    const-string v0, "update"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_81

    .line 129
    goto :goto_8d

    .line 130
    :cond_81
    const/4 p2, 0x1

    .line 131
    goto :goto_8d

    .line 132
    :sswitch_83
    const-string v0, "remove"

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_8c

    .line 140
    goto :goto_8d

    .line 141
    :cond_8c
    const/4 p2, 0x0

    .line 142
    :goto_8d
    packed-switch p2, :pswitch_data_b2

    .line 145
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->INVALID:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 147
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 149
    goto :goto_a3

    .line 150
    :pswitch_95  #0x2
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->CLEAR:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 152
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 154
    goto :goto_a3

    .line 155
    :pswitch_9a  #0x1
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->UPDATE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 157
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 159
    goto :goto_a3

    .line 160
    :pswitch_9f  #0x0
    sget-object p1, Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;->REMOVE:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 162
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 164
    :goto_a3
    return-void

    .line 165
    :sswitch_data_a4
    .sparse-switch
        -0x37b5077c -> :sswitch_83
        -0x31ffc737 -> :sswitch_78
        0x5a5b64d -> :sswitch_6d
    .end sparse-switch

    .line 179
    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_9f  #00000000
        :pswitch_9a  #00000001
        :pswitch_95  #00000002
    .end packed-switch
.end method

.method private remove(Lcom/miui/maml/elements/AnimStateElement;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    array-length v0, v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    if-ge v1, v0, :cond_17

    .line 9
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 11
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    .line 13
    aget-object v3, v3, v1

    .line 15
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    aput-object v3, v2, v1

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_6

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 26
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AnimStateElement;->removeAttr([Ljava/lang/String;)V

    .line 29
    goto :goto_3a

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    .line 32
    if-eqz v0, :cond_3a

    .line 34
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    .line 40
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_3a

    .line 50
    instance-of v1, v0, [Ljava/lang/String;

    .line 52
    if-eqz v1, :cond_3a

    .line 54
    check-cast v0, [Ljava/lang/String;

    .line 56
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AnimStateElement;->removeAttr([Ljava/lang/String;)V

    .line 59
    :cond_3a
    :goto_3a
    return-void
.end method

.method private update(Lcom/miui/maml/elements/AnimStateElement;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_33

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    .line 7
    if-eqz v1, :cond_33

    .line 9
    array-length v2, v0

    .line 10
    array-length v1, v1

    .line 11
    if-ne v2, v1, :cond_33

    .line 13
    array-length v0, v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_e
    if-ge v1, v0, :cond_2b

    .line 17
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 19
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrsExp:[Lcom/miui/maml/data/Expression;

    .line 21
    aget-object v3, v3, v1

    .line 23
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    aput-object v3, v2, v1

    .line 29
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    .line 31
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValuesExp:[Lcom/miui/maml/data/Expression;

    .line 33
    aget-object v3, v3, v1

    .line 35
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 38
    move-result-wide v3

    .line 39
    aput-wide v3, v2, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_e

    .line 44
    :cond_2b
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrs:[Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValues:[D

    .line 48
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/elements/AnimStateElement;->updateAttr([Ljava/lang/String;[D)V

    .line 51
    goto :goto_6a

    .line 52
    :cond_33
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    .line 54
    if-eqz v0, :cond_6a

    .line 56
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValueArrayName:Lcom/miui/maml/data/Expression;

    .line 58
    if-eqz v0, :cond_6a

    .line 60
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mAttrArrayName:Lcom/miui/maml/data/Expression;

    .line 66
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 77
    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mValueArrayName:Lcom/miui/maml/data/Expression;

    .line 80
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 88
    if-eqz v0, :cond_6a

    .line 90
    instance-of v2, v0, [Ljava/lang/String;

    .line 92
    if-eqz v2, :cond_6a

    .line 94
    if-eqz v1, :cond_6a

    .line 96
    instance-of v2, v1, [D

    .line 98
    if-eqz v2, :cond_6a

    .line 100
    check-cast v0, [Ljava/lang/String;

    .line 102
    check-cast v1, [D

    .line 104
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/elements/AnimStateElement;->updateAttr([Ljava/lang/String;[D)V

    .line 107
    :cond_6a
    :goto_6a
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
    if-eqz v0, :cond_2c

    .line 7
    instance-of v1, v0, Lcom/miui/maml/elements/AnimStateElement;

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_2c

    .line 12
    :cond_b
    check-cast v0, Lcom/miui/maml/elements/AnimStateElement;

    .line 14
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type:[I

    .line 16
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$AnimStateCommand;->mCommand:Lcom/miui/maml/ActionCommand$AnimStateCommand$Type;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    move-result v2

    .line 22
    aget v1, v1, v2

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_29

    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq v1, v2, :cond_25

    .line 30
    const/4 v2, 0x3

    .line 31
    if-eq v1, v2, :cond_21

    .line 33
    goto :goto_2c

    .line 34
    :cond_21
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimStateElement;->clear()V

    .line 37
    goto :goto_2c

    .line 38
    :cond_25
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$AnimStateCommand;->remove(Lcom/miui/maml/elements/AnimStateElement;)V

    .line 41
    goto :goto_2c

    .line 42
    :cond_29
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$AnimStateCommand;->update(Lcom/miui/maml/elements/AnimStateElement;)V

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method
