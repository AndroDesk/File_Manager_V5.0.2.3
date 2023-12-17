.class Lcom/miui/maml/ActionCommand$FieldCommand;
.super Lcom/miui/maml/ActionCommand$BaseMethodCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FieldCommand"


# instance fields
.field private mField:Ljava/lang/reflect/Field;

.field private mFieldName:Ljava/lang/String;

.field private mIsSet:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 4
    const-string p1, "field"

    .line 6
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    .line 12
    const-string p1, "FieldCommand, "

    .line 14
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v0, ", field="

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    .line 30
    const-string v1, "\n"

    .line 32
    invoke-static {p1, v0, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 38
    const-string p1, "method"

    .line 40
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    const-string p2, "get"

    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_37

    .line 52
    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    .line 55
    goto :goto_42

    .line 56
    :cond_37
    const-string p2, "set"

    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_42

    .line 64
    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    .line 67
    :cond_42
    :goto_42
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 6

    .line 1
    const-string v0, "ActionCommand"

    .line 3
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    .line 5
    if-nez v1, :cond_9

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FieldCommand;->loadField()V

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    .line 12
    if-eqz v1, :cond_7f

    .line 14
    :try_start_d
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 16
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    move-result v2

    .line 22
    aget v1, v1, v2

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_1e

    .line 27
    const/4 v3, 0x2

    .line 28
    if-eq v1, v3, :cond_1e

    .line 30
    goto :goto_7f

    .line 31
    :cond_1e
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    .line 33
    if-eqz v1, :cond_3b

    .line 35
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->prepareParams()V

    .line 38
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 40
    if-eqz v1, :cond_7f

    .line 42
    array-length v1, v1

    .line 43
    if-ne v1, v2, :cond_7f

    .line 45
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    .line 47
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 53
    const/4 v4, 0x0

    .line 54
    aget-object v3, v3, v4

    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    goto :goto_7f

    .line 60
    :cond_3b
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mReturnVar:Lcom/miui/maml/data/IndexedVariable;

    .line 62
    if-eqz v1, :cond_7f

    .line 64
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    .line 66
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mReturnVar:Lcom/miui/maml/data/IndexedVariable;

    .line 76
    invoke-virtual {v2, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_4e} :catch_77
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_4e} :catch_6e
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_4e} :catch_4f

    .line 79
    goto :goto_7f

    .line 80
    :catch_4f
    move-exception v1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v3, "Field target is null. "

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    goto :goto_7f

    .line 111
    :catch_6e
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    goto :goto_7f

    .line 120
    :catch_77
    move-exception v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_7f
    :goto_7f
    return-void
.end method

.method public init()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->init()V

    .line 4
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 6
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    move-result v1

    .line 12
    aget v0, v0, v1

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_14

    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_14

    .line 20
    goto :goto_1b

    .line 21
    :cond_14
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    .line 23
    if-eqz v0, :cond_1b

    .line 25
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$FieldCommand;->loadField()V

    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method

.method public loadField()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;

    .line 3
    if-nez v0, :cond_10

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_10

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;

    .line 19
    const-string v1, "ActionCommand"

    .line 21
    if-eqz v0, :cond_39

    .line 23
    :try_start_16
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_16 .. :try_end_1e} :catch_1f

    .line 31
    goto :goto_4f

    .line 32
    :catch_1f
    move-exception v0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    goto :goto_4f

    .line 58
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v2, "class is null."

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_4f
    return-void
.end method
