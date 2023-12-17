.class Lcom/miui/maml/ActionCommand$SoundCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SoundCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/SoundManager$Command;

.field private mKeepCur:Z

.field private mLoop:Z

.field private mSound:Ljava/lang/String;

.field private mStreamIdExp:Lcom/miui/maml/data/Expression;

.field private mStreamIdVar:Lcom/miui/maml/data/IndexedVariable;

.field private mVolumeExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 4
    const-string p1, "sound"

    .line 6
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    .line 12
    const-string p1, "keepCur"

    .line 14
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 21
    move-result p1

    .line 22
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mKeepCur:Z

    .line 24
    const-string p1, "loop"

    .line 26
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 33
    move-result p1

    .line 34
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mLoop:Z

    .line 36
    const-string p1, "command"

    .line 38
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/miui/maml/SoundManager$Command;->parse(Ljava/lang/String;)Lcom/miui/maml/SoundManager$Command;

    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mCommand:Lcom/miui/maml/SoundManager$Command;

    .line 48
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 51
    move-result-object p1

    .line 52
    const-string v0, "volume"

    .line 54
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lcom/miui/maml/data/Expression;

    .line 64
    if-nez p1, :cond_48

    .line 66
    const-string p1, "ActionCommand"

    .line 68
    const-string v0, "invalid expression in SoundCommand"

    .line 70
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_48
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 76
    move-result-object p1

    .line 77
    const-string v0, "streamId"

    .line 79
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mStreamIdExp:Lcom/miui/maml/data/Expression;

    .line 89
    const-string p1, "streamIdVar"

    .line 91
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    move-result p2

    .line 99
    if-nez p2, :cond_70

    .line 101
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 103
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 106
    move-result-object v0

    .line 107
    const/4 v1, 0x1

    .line 108
    invoke-direct {p2, p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 111
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mStreamIdVar:Lcom/miui/maml/data/IndexedVariable;

    .line 113
    :cond_70
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 7

    .line 1
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    .line 3
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mCommand:Lcom/miui/maml/SoundManager$Command;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2a

    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_17

    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_17

    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq v0, v1, :cond_17

    .line 23
    goto :goto_4f

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mStreamIdExp:Lcom/miui/maml/data/Expression;

    .line 26
    if-eqz v0, :cond_4f

    .line 28
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 31
    move-result-wide v0

    .line 32
    double-to-int v0, v0

    .line 33
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mCommand:Lcom/miui/maml/SoundManager$Command;

    .line 39
    invoke-virtual {v1, v0, v2}, Lcom/miui/maml/ScreenElementRoot;->playSound(ILcom/miui/maml/SoundManager$Command;)V

    .line 42
    goto :goto_4f

    .line 43
    :cond_2a
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mVolumeExp:Lcom/miui/maml/data/Expression;

    .line 46
    if-eqz v1, :cond_34

    .line 48
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 51
    move-result-wide v0

    .line 52
    double-to-float v0, v0

    .line 53
    :cond_34
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 56
    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mSound:Ljava/lang/String;

    .line 59
    new-instance v3, Lcom/miui/maml/SoundManager$SoundOptions;

    .line 61
    iget-boolean v4, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mKeepCur:Z

    .line 63
    iget-boolean v5, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mLoop:Z

    .line 65
    invoke-direct {v3, v4, v5, v0}, Lcom/miui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    .line 68
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I

    .line 71
    move-result v0

    .line 72
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$SoundCommand;->mStreamIdVar:Lcom/miui/maml/data/IndexedVariable;

    .line 74
    if-eqz v1, :cond_4f

    .line 76
    int-to-double v2, v0

    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 80
    :cond_4f
    :goto_4f
    return-void
.end method
