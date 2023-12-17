.class Lcom/miui/maml/ActionCommand$LoopCommand;
.super Lcom/miui/maml/ActionCommand$MultiCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoopCommand"
.end annotation


# static fields
.field private static final COUNT_WARNING:J = 0x2710L

.field public static final TAG_NAME:Ljava/lang/String; = "LoopCommand"


# instance fields
.field private mBeginExp:Lcom/miui/maml/data/Expression;

.field private mConditionExp:Lcom/miui/maml/data/Expression;

.field private mCountExp:Lcom/miui/maml/data/Expression;

.field private mEndExp:Lcom/miui/maml/data/Expression;

.field private mIndexVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$MultiCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 4
    const-string p1, "indexName"

    .line 6
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1b

    .line 20
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v1, p1, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 26
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 28
    :cond_1b
    const-string p1, "begin"

    .line 30
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mBeginExp:Lcom/miui/maml/data/Expression;

    .line 40
    const-string p1, "count"

    .line 42
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mCountExp:Lcom/miui/maml/data/Expression;

    .line 52
    if-nez p1, :cond_41

    .line 54
    const-string p1, "end"

    .line 56
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mEndExp:Lcom/miui/maml/data/Expression;

    .line 66
    :cond_41
    const-string p1, "loopCondition"

    .line 68
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mConditionExp:Lcom/miui/maml/data/Expression;

    .line 78
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mBeginExp:Lcom/miui/maml/data/Expression;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_7

    .line 6
    move v0, v1

    .line 7
    goto :goto_c

    .line 8
    :cond_7
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 11
    move-result-wide v2

    .line 12
    double-to-int v0, v2

    .line 13
    :goto_c
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mCountExp:Lcom/miui/maml/data/Expression;

    .line 15
    if-eqz v2, :cond_19

    .line 17
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 20
    move-result-wide v2

    .line 21
    double-to-int v2, v2

    .line 22
    add-int/2addr v2, v0

    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 25
    goto :goto_24

    .line 26
    :cond_19
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mEndExp:Lcom/miui/maml/data/Expression;

    .line 28
    if-nez v2, :cond_1f

    .line 30
    move v2, v1

    .line 31
    goto :goto_24

    .line 32
    :cond_1f
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 35
    move-result-wide v2

    .line 36
    double-to-int v2, v2

    .line 37
    :goto_24
    sub-int v3, v2, v0

    .line 39
    int-to-long v4, v3

    .line 40
    const-wide/16 v6, 0x2710

    .line 42
    cmp-long v4, v4, v6

    .line 44
    if-lez v4, :cond_4b

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v5, "count is too large: "

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v3, ", exceeds WARNING "

    .line 61
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    const-string v4, "ActionCommand"

    .line 73
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_4b
    :goto_4b
    if-gt v0, v2, :cond_7e

    .line 78
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mConditionExp:Lcom/miui/maml/data/Expression;

    .line 80
    if-eqz v3, :cond_5c

    .line 82
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 85
    move-result-wide v3

    .line 86
    const-wide/16 v5, 0x0

    .line 88
    cmpg-double v3, v3, v5

    .line 90
    if-gtz v3, :cond_5c

    .line 92
    goto :goto_7e

    .line 93
    :cond_5c
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$LoopCommand;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 95
    if-eqz v3, :cond_64

    .line 97
    int-to-double v4, v0

    .line 98
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 101
    :cond_64
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 106
    move-result v3

    .line 107
    move v4, v1

    .line 108
    :goto_6b
    if-ge v4, v3, :cond_7b

    .line 110
    iget-object v5, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Lcom/miui/maml/ActionCommand;

    .line 118
    invoke-virtual {v5}, Lcom/miui/maml/ActionCommand;->perform()V

    .line 121
    add-int/lit8 v4, v4, 0x1

    .line 123
    goto :goto_6b

    .line 124
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    .line 126
    goto :goto_4b

    .line 127
    :cond_7e
    :goto_7e
    return-void
.end method
