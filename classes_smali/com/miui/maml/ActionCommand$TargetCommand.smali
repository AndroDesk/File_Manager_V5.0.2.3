.class abstract Lcom/miui/maml/ActionCommand$TargetCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TargetCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;
    }
.end annotation


# instance fields
.field public mLogStr:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;

.field public mTargetIndex:Lcom/miui/maml/data/Expression;

.field public mTargetName:Ljava/lang/String;

.field public mTargetNameExp:Lcom/miui/maml/data/Expression;

.field public mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object p1

    .line 8
    const-string v0, "targetExp"

    .line 10
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetNameExp:Lcom/miui/maml/data/Expression;

    .line 20
    if-eqz p1, :cond_1c

    .line 22
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 28
    goto :goto_24

    .line 29
    :cond_1c
    const-string p1, "target"

    .line 31
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 37
    :goto_24
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2f

    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 48
    :cond_2f
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 51
    move-result-object p1

    .line 52
    const-string v0, "targetIndex"

    .line 54
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    .line 64
    const-string p1, "targetType"

    .line 66
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    sget-object p2, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 72
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 74
    const-string v0, "element"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_54

    .line 82
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 84
    goto :goto_6d

    .line 85
    :cond_54
    const-string p2, "var"

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_61

    .line 93
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 95
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 97
    goto :goto_6d

    .line 98
    :cond_61
    const-string p2, "ctor"

    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_6d

    .line 106
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 108
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 110
    :cond_6d
    :goto_6d
    const-string p1, "target="

    .line 112
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    move-result-object p1

    .line 116
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string p2, " type="

    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 128
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 141
    return-void
.end method

.method private findTarget()V
    .registers 4

    .line 1
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 3
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    const-string v2, "ActionCommand"

    .line 14
    if-eq v0, v1, :cond_4e

    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_33

    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_26

    .line 22
    const/4 v1, 0x4

    .line 23
    if-eq v0, v1, :cond_19

    .line 25
    goto :goto_80

    .line 26
    :cond_19
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;

    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 38
    goto :goto_80

    .line 39
    :cond_26
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getAnimationItems(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 51
    goto :goto_80

    .line 52
    :cond_33
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 54
    if-eqz v0, :cond_48

    .line 56
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    .line 65
    move-result v0

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 72
    goto :goto_80

    .line 73
    :cond_48
    const-string v0, "MethodCommand, type=var, empty target name"

    .line 75
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    goto :goto_80

    .line 79
    :cond_4e
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 91
    if-nez v0, :cond_68

    .line 93
    const-string v0, "could not find ScreenElement target, name: "

    .line 95
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 101
    invoke-static {v0, v1, v2}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    goto :goto_80

    .line 105
    :cond_68
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    .line 107
    if-eqz v1, :cond_80

    .line 109
    invoke-static {v0}, Lcom/miui/maml/elements/ElementGroup;->isArrayGroup(Lcom/miui/maml/elements/ScreenElement;)Z

    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_80

    .line 115
    const-string v0, "target with index is not an ArrayGroup, name: "

    .line 117
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 123
    invoke-static {v0, v1, v2}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    .line 129
    :cond_80
    :goto_80
    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetNameExp:Lcom/miui/maml/data/Expression;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1d

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_10

    .line 12
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 16
    return-object v1

    .line 17
    :cond_10
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1d

    .line 25
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->findTarget()V

    .line 30
    :cond_1d
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 32
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 34
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 37
    move-result v2

    .line 38
    aget v0, v0, v2

    .line 40
    const/4 v2, 0x1

    .line 41
    if-eq v0, v2, :cond_7a

    .line 43
    const/4 v2, 0x2

    .line 44
    if-eq v0, v2, :cond_3a

    .line 46
    const/4 v2, 0x3

    .line 47
    if-eq v0, v2, :cond_37

    .line 49
    const/4 v2, 0x4

    .line 50
    if-eq v0, v2, :cond_34

    .line 52
    return-object v1

    .line 53
    :cond_34
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 55
    return-object v0

    .line 56
    :cond_37
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 58
    return-object v0

    .line 59
    :cond_3a
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 61
    if-eqz v0, :cond_79

    .line 63
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 66
    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 69
    check-cast v2, Ljava/lang/Integer;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result v2

    .line 75
    invoke-virtual {v0, v2}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    .line 81
    if-eqz v2, :cond_78

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_68

    .line 93
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    .line 95
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 98
    move-result-wide v1

    .line 99
    double-to-int v1, v1

    .line 100
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :cond_68
    const-string v0, "target with index is not an Array variable, name: "

    .line 107
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    .line 113
    const-string v3, "ActionCommand"

    .line 115
    invoke-static {v0, v2, v3}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    .line 120
    goto :goto_79

    .line 121
    :cond_78
    return-object v0

    .line 122
    :cond_79
    :goto_79
    return-object v1

    .line 123
    :cond_7a
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    .line 125
    if-eqz v0, :cond_8d

    .line 127
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lcom/miui/maml/data/Expression;

    .line 129
    if-eqz v1, :cond_8d

    .line 131
    check-cast v0, Lcom/miui/maml/elements/ElementGroup;

    .line 133
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 136
    move-result-wide v1

    .line 137
    double-to-int v1, v1

    .line 138
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->getChild(I)Lcom/miui/maml/elements/ScreenElement;

    .line 141
    move-result-object v0

    .line 142
    :cond_8d
    return-object v0
.end method

.method public init()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->findTarget()V

    .line 7
    return-void
.end method
