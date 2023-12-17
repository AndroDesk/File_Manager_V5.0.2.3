.class Lcom/miui/maml/ActionCommand$MethodCommand;
.super Lcom/miui/maml/ActionCommand$BaseMethodCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "MethodCommand"


# instance fields
.field private mCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/reflect/Method;

.field private mMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 4
    const-string p1, "method"

    .line 6
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    .line 12
    const-string p1, "MethodCommand, "

    .line 14
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string p2, ", method="

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    .line 30
    const-string v0, "\n    "

    .line 32
    invoke-static {p1, p2, v0}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->prepareParams()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_5
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType:[I

    .line 8
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 10
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v3

    .line 14
    aget v2, v2, v3

    .line 16
    const/4 v3, -0x1

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eq v2, v4, :cond_28

    .line 20
    const/4 v5, 0x2

    .line 21
    if-eq v2, v5, :cond_28

    .line 23
    const/4 v5, 0x5

    .line 24
    if-eq v2, v5, :cond_1a

    .line 26
    goto :goto_40

    .line 27
    :cond_1a
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    .line 29
    if-eqz v2, :cond_26

    .line 31
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    :goto_24
    move v1, v4

    .line 38
    goto :goto_40

    .line 39
    :cond_26
    move v1, v3

    .line 40
    goto :goto_40

    .line 41
    :cond_28
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 43
    if-nez v2, :cond_2f

    .line 45
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$MethodCommand;->loadMethod()V

    .line 48
    :cond_2f
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 50
    if-eqz v2, :cond_26

    .line 52
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 58
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 60
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    goto :goto_24

    .line 65
    :goto_40
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mReturnVar:Lcom/miui/maml/data/IndexedVariable;

    .line 67
    if-eqz v2, :cond_47

    .line 69
    invoke-virtual {v2, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_47} :catch_52
    .catchall {:try_start_5 .. :try_end_47} :catchall_50

    .line 72
    :cond_47
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 74
    if-eqz v0, :cond_97

    .line 76
    int-to-double v1, v1

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 80
    goto :goto_97

    .line 81
    :catchall_50
    move-exception v0

    .line 82
    goto :goto_98

    .line 83
    :catch_52
    move-exception v0

    .line 84
    :try_start_53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 87
    move-result-object v2

    .line 88
    const-string v3, "ActionCommand"

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    iget-object v5, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    if-eqz v2, :cond_82

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string v5, "\n cause: "

    .line 116
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    goto :goto_84

    .line 131
    :cond_82
    const-string v0, ""

    .line 133
    :goto_84
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_53 .. :try_end_8e} :catchall_50

    .line 143
    const/4 v0, -0x2

    .line 144
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 146
    if-eqz v1, :cond_97

    .line 148
    int-to-double v2, v0

    .line 149
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 152
    :cond_97
    :goto_97
    return-void

    .line 153
    :goto_98
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mErrorCodeVar:Lcom/miui/maml/data/IndexedVariable;

    .line 155
    if-eqz v2, :cond_a0

    .line 157
    int-to-double v3, v1

    .line 158
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 161
    :cond_a0
    throw v0
.end method

.method public init()V
    .registers 5

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
    if-eq v0, v1, :cond_6f

    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_6f

    .line 20
    const/4 v1, 0x5

    .line 21
    if-eq v0, v1, :cond_17

    .line 23
    goto :goto_76

    .line 24
    :cond_17
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x4

    .line 29
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getCapability(I)Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_26

    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    .line 38
    goto :goto_76

    .line 39
    :cond_26
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    .line 41
    if-nez v0, :cond_76

    .line 43
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;

    .line 45
    const-string v1, "ActionCommand"

    .line 47
    if-eqz v0, :cond_58

    .line 49
    :try_start_30
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;
    :try_end_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_30 .. :try_end_38} :catch_39

    .line 57
    goto :goto_76

    .line 58
    :catch_39
    move-exception v0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v3, "init, fail to find method. "

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    goto :goto_76

    .line 89
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "init, class is null."

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    goto :goto_76

    .line 112
    :cond_6f
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 114
    if-nez v0, :cond_76

    .line 116
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$MethodCommand;->loadMethod()V

    .line 119
    :cond_76
    :goto_76
    return-void
.end method

.method public loadMethod()V
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
    if-eqz v0, :cond_5f

    .line 23
    :try_start_16
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    .line 25
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 27
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_20} :catch_21

    .line 33
    goto :goto_3f

    .line 34
    :catch_21
    move-exception v0

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v3, "loadMethod(). "

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_3f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v2, "loadMethod(), successful.  "

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 81
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    goto :goto_75

    .line 96
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v2, "loadMethod(), class is null."

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_75
    return-void
.end method
