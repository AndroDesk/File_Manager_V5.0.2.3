.class Lcom/miui/maml/ActionCommand$GraphicsCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GraphicsCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "GraphicsCommand"


# instance fields
.field private mColorArrayNameExp:Lcom/miui/maml/data/Expression;

.field private mColorExp:Lcom/miui/maml/data/Expression;

.field private mColorParsers:[Lcom/miui/maml/util/ColorParser;

.field private mColors:[I

.field private mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field private mCurrentColorArrayName:Ljava/lang/String;

.field private mCurrentStopArrayName:Ljava/lang/String;

.field private mIsParamsValid:Z

.field private mIsStopsValid:Z

.field private mParamExps:[Lcom/miui/maml/data/Expression;

.field private mStopArrayNameExp:Lcom/miui/maml/data/Expression;

.field private mStopExps:[Lcom/miui/maml/data/Expression;

.field private mStops:[F


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->checkExps(Lorg/w3c/dom/Element;)V

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 10
    move-result-object p1

    .line 11
    const-string v0, "colorArrayNameExp"

    .line 13
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorArrayNameExp:Lcom/miui/maml/data/Expression;

    .line 23
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 26
    move-result-object p1

    .line 27
    const-string v0, "stopArrayNameExp"

    .line 29
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStopArrayNameExp:Lcom/miui/maml/data/Expression;

    .line 39
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 42
    move-result-object p1

    .line 43
    const-string v0, "colorExp"

    .line 45
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorExp:Lcom/miui/maml/data/Expression;

    .line 55
    invoke-direct {p0, p2}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->parseCommand(Lorg/w3c/dom/Element;)V

    .line 58
    return-void
.end method

.method private beginFill(Lcom/miui/maml/elements/GraphicsElement;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lcom/miui/maml/util/ColorParser;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    array-length v1, v0

    .line 6
    if-lez v1, :cond_f

    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 14
    move-result v0

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const/high16 v0, -0x1000000

    .line 18
    :goto_11
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorExp:Lcom/miui/maml/data/Expression;

    .line 20
    if-eqz v1, :cond_1b

    .line 22
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 25
    move-result-wide v0

    .line 26
    double-to-long v0, v0

    .line 27
    long-to-int v0, v0

    .line 28
    :cond_1b
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/GraphicsElement;->beginFill(I)V

    .line 31
    return-void
.end method

.method private checkExps(Lorg/w3c/dom/Element;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "paramsExp"

    .line 7
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 17
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    .line 20
    move-result v0

    .line 21
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    .line 23
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "stopsExp"

    .line 29
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStopExps:[Lcom/miui/maml/data/Expression;

    .line 39
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    .line 42
    move-result v0

    .line 43
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsStopsValid:Z

    .line 45
    const-string v0, "colors"

    .line 47
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_5e

    .line 57
    const-string v0, ","

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_5e

    .line 65
    array-length v0, p1

    .line 66
    if-lez v0, :cond_5e

    .line 68
    array-length v0, p1

    .line 69
    new-array v0, v0, [Lcom/miui/maml/util/ColorParser;

    .line 71
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lcom/miui/maml/util/ColorParser;

    .line 73
    const/4 v0, 0x0

    .line 74
    :goto_49
    array-length v1, p1

    .line 75
    if-ge v0, v1, :cond_5e

    .line 77
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lcom/miui/maml/util/ColorParser;

    .line 79
    new-instance v2, Lcom/miui/maml/util/ColorParser;

    .line 81
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 84
    move-result-object v3

    .line 85
    aget-object v4, p1, v0

    .line 87
    invoke-direct {v2, v3, v4}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 90
    aput-object v2, v1, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 94
    goto :goto_49

    .line 95
    :cond_5e
    return-void
.end method

.method private createGradientBox(Lcom/miui/maml/elements/GraphicsElement;)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    .line 3
    if-eqz v0, :cond_4c

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x4

    .line 9
    if-le v1, v2, :cond_4c

    .line 11
    const/4 v1, 0x0

    .line 12
    aget-object v0, v0, v1

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide v0

    .line 18
    double-to-float v0, v0

    .line 19
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 22
    move-result v4

    .line 23
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 25
    const/4 v1, 0x1

    .line 26
    aget-object v0, v0, v1

    .line 28
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 31
    move-result-wide v0

    .line 32
    double-to-float v0, v0

    .line 33
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 36
    move-result v5

    .line 37
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 39
    const/4 v1, 0x2

    .line 40
    aget-object v0, v0, v1

    .line 42
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 45
    move-result-wide v0

    .line 46
    double-to-float v0, v0

    .line 47
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 50
    move-result v6

    .line 51
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 53
    const/4 v1, 0x3

    .line 54
    aget-object v0, v0, v1

    .line 56
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 59
    move-result-wide v0

    .line 60
    double-to-float v0, v0

    .line 61
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 64
    move-result v7

    .line 65
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 67
    aget-object v0, v0, v2

    .line 69
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 72
    move-result-object v8

    .line 73
    move-object v3, p1

    .line 74
    invoke-virtual/range {v3 .. v8}, Lcom/miui/maml/elements/GraphicsElement;->createOrUpdateGradientBox(FFFFLjava/lang/String;)V

    .line 77
    :cond_4c
    return-void
.end method

.method private cubicCurveTo(Lcom/miui/maml/elements/GraphicsElement;)V
    .registers 12

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    .line 3
    if-eqz v0, :cond_5f

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x5

    .line 9
    if-le v1, v2, :cond_5f

    .line 11
    const/4 v1, 0x0

    .line 12
    aget-object v0, v0, v1

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide v0

    .line 18
    double-to-float v0, v0

    .line 19
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 22
    move-result v4

    .line 23
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 25
    const/4 v1, 0x1

    .line 26
    aget-object v0, v0, v1

    .line 28
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 31
    move-result-wide v0

    .line 32
    double-to-float v0, v0

    .line 33
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 36
    move-result v5

    .line 37
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 39
    const/4 v1, 0x2

    .line 40
    aget-object v0, v0, v1

    .line 42
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 45
    move-result-wide v0

    .line 46
    double-to-float v0, v0

    .line 47
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 50
    move-result v6

    .line 51
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 53
    const/4 v1, 0x3

    .line 54
    aget-object v0, v0, v1

    .line 56
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 59
    move-result-wide v0

    .line 60
    double-to-float v0, v0

    .line 61
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 64
    move-result v7

    .line 65
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 67
    const/4 v1, 0x4

    .line 68
    aget-object v0, v0, v1

    .line 70
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 73
    move-result-wide v0

    .line 74
    double-to-float v0, v0

    .line 75
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 78
    move-result v8

    .line 79
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 81
    aget-object v0, v0, v2

    .line 83
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 86
    move-result-wide v0

    .line 87
    double-to-float v0, v0

    .line 88
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 91
    move-result v9

    .line 92
    move-object v3, p1

    .line 93
    invoke-virtual/range {v3 .. v9}, Lcom/miui/maml/elements/GraphicsElement;->cubicCurveTo(FFFFFF)V

    .line 96
    :cond_5f
    return-void
.end method

.method private curveTo(Lcom/miui/maml/elements/GraphicsElement;)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    .line 3
    if-eqz v0, :cond_42

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x3

    .line 9
    if-le v1, v2, :cond_42

    .line 11
    const/4 v1, 0x0

    .line 12
    aget-object v0, v0, v1

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide v0

    .line 18
    double-to-float v0, v0

    .line 19
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 25
    const/4 v3, 0x1

    .line 26
    aget-object v1, v1, v3

    .line 28
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 31
    move-result-wide v3

    .line 32
    double-to-float v1, v3

    .line 33
    invoke-direct {p0, v1}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 36
    move-result v1

    .line 37
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 39
    const/4 v4, 0x2

    .line 40
    aget-object v3, v3, v4

    .line 42
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 45
    move-result-wide v3

    .line 46
    double-to-float v3, v3

    .line 47
    invoke-direct {p0, v3}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 50
    move-result v3

    .line 51
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 53
    aget-object v2, v4, v2

    .line 55
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 58
    move-result-wide v4

    .line 59
    double-to-float v2, v4

    .line 60
    invoke-direct {p0, v2}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 63
    move-result v2

    .line 64
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/miui/maml/elements/GraphicsElement;->curveTo(FFFF)V

    .line 67
    :cond_42
    return-void
.end method

.method private drawCircle(Lcom/miui/maml/elements/GraphicsElement;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    .line 3
    if-eqz v0, :cond_34

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x2

    .line 9
    if-le v1, v2, :cond_34

    .line 11
    const/4 v1, 0x0

    .line 12
    aget-object v0, v0, v1

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide v0

    .line 18
    double-to-float v0, v0

    .line 19
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 25
    const/4 v3, 0x1

    .line 26
    aget-object v1, v1, v3

    .line 28
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 31
    move-result-wide v3

    .line 32
    double-to-float v1, v3

    .line 33
    invoke-direct {p0, v1}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 36
    move-result v1

    .line 37
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 39
    aget-object v2, v3, v2

    .line 41
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 44
    move-result-wide v2

    .line 45
    double-to-float v2, v2

    .line 46
    invoke-direct {p0, v2}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 49
    move-result v2

    .line 50
    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/maml/elements/GraphicsElement;->drawCircle(FFF)V

    .line 53
    :cond_34
    return-void
.end method

.method private drawEllipse(Lcom/miui/maml/elements/GraphicsElement;)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    .line 3
    if-eqz v0, :cond_42

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x3

    .line 9
    if-le v1, v2, :cond_42

    .line 11
    const/4 v1, 0x0

    .line 12
    aget-object v0, v0, v1

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide v0

    .line 18
    double-to-float v0, v0

    .line 19
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 25
    const/4 v3, 0x1

    .line 26
    aget-object v1, v1, v3

    .line 28
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 31
    move-result-wide v3

    .line 32
    double-to-float v1, v3

    .line 33
    invoke-direct {p0, v1}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 36
    move-result v1

    .line 37
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 39
    const/4 v4, 0x2

    .line 40
    aget-object v3, v3, v4

    .line 42
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 45
    move-result-wide v3

    .line 46
    double-to-float v3, v3

    .line 47
    invoke-direct {p0, v3}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 50
    move-result v3

    .line 51
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 53
    aget-object v2, v4, v2

    .line 55
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 58
    move-result-wide v4

    .line 59
    double-to-float v2, v4

    .line 60
    invoke-direct {p0, v2}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 63
    move-result v2

    .line 64
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/miui/maml/elements/GraphicsElement;->drawEllipse(FFFF)V

    .line 67
    :cond_42
    return-void
.end method

.method private drawRect(Lcom/miui/maml/elements/GraphicsElement;)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    .line 3
    if-eqz v0, :cond_42

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x3

    .line 9
    if-le v1, v2, :cond_42

    .line 11
    const/4 v1, 0x0

    .line 12
    aget-object v0, v0, v1

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide v0

    .line 18
    double-to-float v0, v0

    .line 19
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 25
    const/4 v3, 0x1

    .line 26
    aget-object v1, v1, v3

    .line 28
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 31
    move-result-wide v3

    .line 32
    double-to-float v1, v3

    .line 33
    invoke-direct {p0, v1}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 36
    move-result v1

    .line 37
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 39
    const/4 v4, 0x2

    .line 40
    aget-object v3, v3, v4

    .line 42
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 45
    move-result-wide v3

    .line 46
    double-to-float v3, v3

    .line 47
    invoke-direct {p0, v3}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 50
    move-result v3

    .line 51
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 53
    aget-object v2, v4, v2

    .line 55
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 58
    move-result-wide v4

    .line 59
    double-to-float v2, v4

    .line 60
    invoke-direct {p0, v2}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 63
    move-result v2

    .line 64
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/miui/maml/elements/GraphicsElement;->drawRect(FFFF)V

    .line 67
    :cond_42
    return-void
.end method

.method private drawRoundRect(Lcom/miui/maml/elements/GraphicsElement;)V
    .registers 12

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    .line 3
    if-eqz v0, :cond_65

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x4

    .line 9
    if-le v1, v2, :cond_65

    .line 11
    const/4 v1, 0x0

    .line 12
    aget-object v0, v0, v1

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide v0

    .line 18
    double-to-float v0, v0

    .line 19
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 22
    move-result v4

    .line 23
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 25
    const/4 v1, 0x1

    .line 26
    aget-object v0, v0, v1

    .line 28
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 31
    move-result-wide v0

    .line 32
    double-to-float v0, v0

    .line 33
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 36
    move-result v5

    .line 37
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 39
    const/4 v1, 0x2

    .line 40
    aget-object v0, v0, v1

    .line 42
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 45
    move-result-wide v0

    .line 46
    double-to-float v0, v0

    .line 47
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 50
    move-result v6

    .line 51
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 53
    const/4 v1, 0x3

    .line 54
    aget-object v0, v0, v1

    .line 56
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 59
    move-result-wide v0

    .line 60
    double-to-float v0, v0

    .line 61
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 64
    move-result v7

    .line 65
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 67
    aget-object v0, v0, v2

    .line 69
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 72
    move-result-wide v0

    .line 73
    double-to-float v0, v0

    .line 74
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 77
    move-result v8

    .line 78
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 80
    array-length v1, v0

    .line 81
    const/4 v2, 0x5

    .line 82
    if-le v1, v2, :cond_60

    .line 84
    aget-object v0, v0, v2

    .line 86
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 89
    move-result-wide v0

    .line 90
    double-to-float v0, v0

    .line 91
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 94
    move-result v0

    .line 95
    move v9, v0

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    move v9, v8

    .line 98
    :goto_61
    move-object v3, p1

    .line 99
    invoke-virtual/range {v3 .. v9}, Lcom/miui/maml/elements/GraphicsElement;->drawRoundRect(FFFFFF)V

    .line 102
    :cond_65
    return-void
.end method

.method private lineStyle(Lcom/miui/maml/elements/GraphicsElement;)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    .line 3
    if-eqz v0, :cond_64

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v0, v0

    .line 8
    if-lez v0, :cond_64

    .line 10
    const/high16 v0, -0x1000000

    .line 12
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorExp:Lcom/miui/maml/data/Expression;

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_17

    .line 17
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 20
    move-result-wide v0

    .line 21
    double-to-long v0, v0

    .line 22
    long-to-int v0, v0

    .line 23
    goto :goto_24

    .line 24
    :cond_17
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lcom/miui/maml/util/ColorParser;

    .line 26
    if-eqz v1, :cond_24

    .line 28
    array-length v3, v1

    .line 29
    if-lez v3, :cond_24

    .line 31
    aget-object v0, v1, v2

    .line 33
    invoke-virtual {v0}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 36
    move-result v0

    .line 37
    :cond_24
    :goto_24
    move v5, v0

    .line 38
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 40
    aget-object v0, v0, v2

    .line 42
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 45
    move-result-wide v0

    .line 46
    double-to-float v0, v0

    .line 47
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 50
    move-result v4

    .line 51
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 53
    array-length v1, v0

    .line 54
    const/4 v3, 0x1

    .line 55
    if-le v1, v3, :cond_41

    .line 57
    aget-object v0, v0, v3

    .line 59
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 62
    move-result-wide v0

    .line 63
    double-to-int v0, v0

    .line 64
    move v6, v0

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move v6, v2

    .line 67
    :goto_42
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 69
    array-length v1, v0

    .line 70
    const/4 v3, 0x2

    .line 71
    if-le v1, v3, :cond_51

    .line 73
    aget-object v0, v0, v3

    .line 75
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 78
    move-result-wide v0

    .line 79
    double-to-int v0, v0

    .line 80
    move v7, v0

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    move v7, v2

    .line 83
    :goto_52
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 85
    array-length v1, v0

    .line 86
    const/4 v3, 0x3

    .line 87
    if-le v1, v3, :cond_5f

    .line 89
    aget-object v0, v0, v3

    .line 91
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 94
    move-result-wide v0

    .line 95
    double-to-int v2, v0

    .line 96
    :cond_5f
    int-to-float v8, v2

    .line 97
    move-object v3, p1

    .line 98
    invoke-virtual/range {v3 .. v8}, Lcom/miui/maml/elements/GraphicsElement;->lineStyle(FIIIF)V

    .line 101
    :cond_64
    return-void
.end method

.method private lineTo(Lcom/miui/maml/elements/GraphicsElement;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    .line 3
    if-eqz v0, :cond_26

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

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
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide v0

    .line 18
    double-to-float v0, v0

    .line 19
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 25
    aget-object v1, v1, v2

    .line 27
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 30
    move-result-wide v1

    .line 31
    double-to-float v1, v1

    .line 32
    invoke-direct {p0, v1}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/elements/GraphicsElement;->lineTo(FF)V

    .line 39
    :cond_26
    return-void
.end method

.method private moveTo(Lcom/miui/maml/elements/GraphicsElement;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    .line 3
    if-eqz v0, :cond_26

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

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
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide v0

    .line 18
    double-to-float v0, v0

    .line 19
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 25
    aget-object v1, v1, v2

    .line 27
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 30
    move-result-wide v1

    .line 31
    double-to-float v1, v1

    .line 32
    invoke-direct {p0, v1}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->scale(F)F

    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/elements/GraphicsElement;->moveTo(FF)V

    .line 39
    :cond_26
    return-void
.end method

.method private parseColor()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorArrayNameExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->parseColorByArrayName()V

    .line 8
    goto :goto_13

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lcom/miui/maml/util/ColorParser;

    .line 11
    if-eqz v0, :cond_13

    .line 13
    array-length v0, v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-le v0, v1, :cond_13

    .line 17
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->parseColorByParsers()V

    .line 20
    :cond_13
    :goto_13
    return-void
.end method

.method private parseColorByArrayName()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorArrayNameExp:Lcom/miui/maml/data/Expression;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_37

    .line 14
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCurrentColorArrayName:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_39

    .line 22
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCurrentColorArrayName:Ljava/lang/String;

    .line 24
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 26
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 29
    move-result-object v3

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-direct {v1, v0, v3, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 34
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_34

    .line 40
    instance-of v1, v0, [I

    .line 42
    if-eqz v1, :cond_34

    .line 44
    check-cast v0, [I

    .line 46
    array-length v1, v0

    .line 47
    const/4 v3, 0x1

    .line 48
    if-le v1, v3, :cond_34

    .line 50
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    .line 52
    goto :goto_39

    .line 53
    :cond_34
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    .line 55
    goto :goto_39

    .line 56
    :cond_37
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    .line 58
    :cond_39
    :goto_39
    return-void
.end method

.method private parseColorByParsers()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lcom/miui/maml/util/ColorParser;

    .line 7
    array-length v0, v0

    .line 8
    new-array v0, v0, [I

    .line 10
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColorParsers:[Lcom/miui/maml/util/ColorParser;

    .line 15
    array-length v2, v1

    .line 16
    if-ge v0, v2, :cond_1e

    .line 18
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    .line 20
    aget-object v1, v1, v0

    .line 22
    invoke-virtual {v1}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 25
    move-result v1

    .line 26
    aput v1, v2, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_c

    .line 31
    :cond_1e
    return-void
.end method

.method private parseCommand(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    const-string v0, "command"

    .line 3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    sparse-switch v0, :sswitch_data_10c

    .line 18
    goto/16 :goto_be

    .line 20
    :sswitch_13
    const-string v0, "drawEllipse"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1d

    .line 28
    goto/16 :goto_be

    .line 30
    :cond_1d
    const/16 v1, 0xd

    .line 32
    goto/16 :goto_be

    .line 34
    :sswitch_21
    const-string v0, "beginGradientFill"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2b

    .line 42
    goto/16 :goto_be

    .line 44
    :cond_2b
    const/16 v1, 0xc

    .line 46
    goto/16 :goto_be

    .line 48
    :sswitch_2f
    const-string v0, "curveTo"

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_39

    .line 56
    goto/16 :goto_be

    .line 58
    :cond_39
    const/16 v1, 0xb

    .line 60
    goto/16 :goto_be

    .line 62
    :sswitch_3d
    const-string v0, "cubicCurveTo"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_47

    .line 70
    goto/16 :goto_be

    .line 72
    :cond_47
    const/16 v1, 0xa

    .line 74
    goto/16 :goto_be

    .line 76
    :sswitch_4b
    const-string v0, "drawRoundRect"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_55

    .line 84
    goto/16 :goto_be

    .line 86
    :cond_55
    const/16 v1, 0x9

    .line 88
    goto/16 :goto_be

    .line 90
    :sswitch_59
    const-string v0, "createGradientBox"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_63

    .line 98
    goto/16 :goto_be

    .line 100
    :cond_63
    const/16 v1, 0x8

    .line 102
    goto/16 :goto_be

    .line 104
    :sswitch_67
    const-string v0, "lineGradientStyle"

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_70

    .line 112
    goto :goto_be

    .line 113
    :cond_70
    const/4 v1, 0x7

    .line 114
    goto :goto_be

    .line 115
    :sswitch_72
    const-string v0, "drawCircle"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_7b

    .line 123
    goto :goto_be

    .line 124
    :cond_7b
    const/4 v1, 0x6

    .line 125
    goto :goto_be

    .line 126
    :sswitch_7d
    const-string v0, "drawRect"

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_86

    .line 134
    goto :goto_be

    .line 135
    :cond_86
    const/4 v1, 0x5

    .line 136
    goto :goto_be

    .line 137
    :sswitch_88
    const-string v0, "moveTo"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_91

    .line 145
    goto :goto_be

    .line 146
    :cond_91
    const/4 v1, 0x4

    .line 147
    goto :goto_be

    .line 148
    :sswitch_93
    const-string v0, "beginFill"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_9c

    .line 156
    goto :goto_be

    .line 157
    :cond_9c
    const/4 v1, 0x3

    .line 158
    goto :goto_be

    .line 159
    :sswitch_9e
    const-string v0, "lineTo"

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_a7

    .line 167
    goto :goto_be

    .line 168
    :cond_a7
    const/4 v1, 0x2

    .line 169
    goto :goto_be

    .line 170
    :sswitch_a9
    const-string v0, "setRenderListener"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result p1

    .line 176
    if-nez p1, :cond_b2

    .line 178
    goto :goto_be

    .line 179
    :cond_b2
    const/4 v1, 0x1

    .line 180
    goto :goto_be

    .line 181
    :sswitch_b4
    const-string v0, "lineStyle"

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result p1

    .line 187
    if-nez p1, :cond_bd

    .line 189
    goto :goto_be

    .line 190
    :cond_bd
    const/4 v1, 0x0

    .line 191
    :goto_be
    packed-switch v1, :pswitch_data_146

    .line 194
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 196
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 198
    goto :goto_10b

    .line 199
    :pswitch_c6  #0xd
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 201
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 203
    goto :goto_10b

    .line 204
    :pswitch_cb  #0xc
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 206
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 208
    goto :goto_10b

    .line 209
    :pswitch_d0  #0xb
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 211
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 213
    goto :goto_10b

    .line 214
    :pswitch_d5  #0xa
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 216
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 218
    goto :goto_10b

    .line 219
    :pswitch_da  #0x9
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 221
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 223
    goto :goto_10b

    .line 224
    :pswitch_df  #0x8
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 226
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 228
    goto :goto_10b

    .line 229
    :pswitch_e4  #0x7
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 231
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 233
    goto :goto_10b

    .line 234
    :pswitch_e9  #0x6
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 236
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 238
    goto :goto_10b

    .line 239
    :pswitch_ee  #0x5
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 241
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 243
    goto :goto_10b

    .line 244
    :pswitch_f3  #0x4
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 246
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 248
    goto :goto_10b

    .line 249
    :pswitch_f8  #0x3
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 251
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 253
    goto :goto_10b

    .line 254
    :pswitch_fd  #0x2
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 256
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 258
    goto :goto_10b

    .line 259
    :pswitch_102  #0x1
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->SET_RENDER_LISTENER:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 261
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 263
    goto :goto_10b

    .line 264
    :pswitch_107  #0x0
    sget-object p1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 266
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 268
    :goto_10b
    return-void

    .line 269
    :sswitch_data_10c
    .sparse-switch
        -0x6bb6a9e3 -> :sswitch_b4
        -0x67c75694 -> :sswitch_a9
        -0x41b97271 -> :sswitch_9e
        -0x3ff89a34 -> :sswitch_93
        -0x3fac69d4 -> :sswitch_88
        -0x314a46b8 -> :sswitch_7d
        -0x212d2ccc -> :sswitch_72
        0x1a040cd -> :sswitch_67
        0x4c651df -> :sswitch_59
        0x839a7ae -> :sswitch_4b
        0x2ce1f920 -> :sswitch_3d
        0x432d8bca -> :sswitch_2f
        0x4e35601c -> :sswitch_21
        0x6a20d1fa -> :sswitch_13
    .end sparse-switch

    .line 327
    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_107  #00000000
        :pswitch_102  #00000001
        :pswitch_fd  #00000002
        :pswitch_f8  #00000003
        :pswitch_f3  #00000004
        :pswitch_ee  #00000005
        :pswitch_e9  #00000006
        :pswitch_e4  #00000007
        :pswitch_df  #00000008
        :pswitch_da  #00000009
        :pswitch_d5  #0000000a
        :pswitch_d0  #0000000b
        :pswitch_cb  #0000000c
        :pswitch_c6  #0000000d
    .end packed-switch
.end method

.method private parseStop()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStopArrayNameExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->parseStopByArrayName()V

    .line 8
    goto :goto_f

    .line 9
    :cond_8
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsStopsValid:Z

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->parseStopByExp()V

    .line 16
    :cond_f
    :goto_f
    return-void
.end method

.method private parseStopByArrayName()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStopArrayNameExp:Lcom/miui/maml/data/Expression;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_37

    .line 14
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCurrentStopArrayName:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_39

    .line 22
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCurrentStopArrayName:Ljava/lang/String;

    .line 24
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 26
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 29
    move-result-object v3

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-direct {v1, v0, v3, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 34
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_34

    .line 40
    instance-of v1, v0, [F

    .line 42
    if-eqz v1, :cond_34

    .line 44
    check-cast v0, [F

    .line 46
    array-length v1, v0

    .line 47
    const/4 v3, 0x1

    .line 48
    if-le v1, v3, :cond_34

    .line 50
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    .line 52
    goto :goto_39

    .line 53
    :cond_34
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    .line 55
    goto :goto_39

    .line 56
    :cond_37
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    .line 58
    :cond_39
    :goto_39
    return-void
.end method

.method private parseStopByExp()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStopExps:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v0, v0

    .line 8
    new-array v0, v0, [F

    .line 10
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStopExps:[Lcom/miui/maml/data/Expression;

    .line 15
    array-length v2, v1

    .line 16
    if-ge v0, v2, :cond_1f

    .line 18
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    .line 20
    aget-object v1, v1, v0

    .line 22
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 25
    move-result-wide v3

    .line 26
    double-to-float v1, v3

    .line 27
    aput v1, v2, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_c

    .line 32
    :cond_1f
    return-void
.end method

.method private scale(F)F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 8
    move-result v0

    .line 9
    mul-float/2addr v0, p1

    .line 10
    return v0
.end method

.method private setRenderListener(Lcom/miui/maml/elements/GraphicsElement;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    .line 3
    if-eqz v0, :cond_23

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v1, v0

    .line 8
    if-lez v1, :cond_23

    .line 10
    const/4 v1, 0x0

    .line 11
    aget-object v0, v0, v1

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_23

    .line 27
    instance-of v1, v0, Lcom/miui/maml/elements/FunctionElement;

    .line 29
    if-eqz v1, :cond_23

    .line 31
    check-cast v0, Lcom/miui/maml/elements/FunctionElement;

    .line 33
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/GraphicsElement;->setRenderListener(Lcom/miui/maml/elements/FunctionElement;)V

    .line 36
    :cond_23
    return-void
.end method

.method private setShader(Lcom/miui/maml/elements/GraphicsElement;)V
    .registers 14

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mIsParamsValid:Z

    .line 3
    if-eqz v0, :cond_72

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 7
    array-length v0, v0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-le v0, v1, :cond_72

    .line 11
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->parseColor()V

    .line 14
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->parseStop()V

    .line 17
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    .line 19
    const-string v2, "GraphicsCommand"

    .line 21
    if-eqz v0, :cond_6d

    .line 23
    array-length v3, v0

    .line 24
    if-ge v3, v1, :cond_1a

    .line 26
    goto :goto_6d

    .line 27
    :cond_1a
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    .line 29
    if-eqz v3, :cond_28

    .line 31
    array-length v3, v3

    .line 32
    array-length v0, v0

    .line 33
    if-eq v3, v0, :cond_28

    .line 35
    const-string p1, "color and position arrays must be of equal length"

    .line 37
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 41
    :cond_28
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 43
    const/4 v2, 0x0

    .line 44
    aget-object v0, v0, v2

    .line 46
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 49
    move-result-wide v3

    .line 50
    double-to-int v6, v3

    .line 51
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 53
    const/4 v3, 0x1

    .line 54
    aget-object v0, v0, v3

    .line 56
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 59
    move-result-object v9

    .line 60
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 62
    aget-object v0, v0, v1

    .line 64
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 67
    move-result-object v10

    .line 68
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mParamExps:[Lcom/miui/maml/data/Expression;

    .line 70
    array-length v1, v0

    .line 71
    const/4 v3, 0x3

    .line 72
    if-le v1, v3, :cond_50

    .line 74
    aget-object v0, v0, v3

    .line 76
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 79
    move-result-wide v0

    .line 80
    double-to-int v2, v0

    .line 81
    :cond_50
    move v11, v2

    .line 82
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 84
    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 86
    if-ne v0, v1, :cond_60

    .line 88
    iget-object v7, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    .line 90
    iget-object v8, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    .line 92
    move-object v5, p1

    .line 93
    invoke-virtual/range {v5 .. v11}, Lcom/miui/maml/elements/GraphicsElement;->lineGradientStyle(I[I[FLjava/lang/String;Ljava/lang/String;I)V

    .line 96
    goto :goto_72

    .line 97
    :cond_60
    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 99
    if-ne v0, v1, :cond_72

    .line 101
    iget-object v7, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mColors:[I

    .line 103
    iget-object v8, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mStops:[F

    .line 105
    move-object v5, p1

    .line 106
    invoke-virtual/range {v5 .. v11}, Lcom/miui/maml/elements/GraphicsElement;->beginGradientFill(I[I[FLjava/lang/String;Ljava/lang/String;I)V

    .line 109
    goto :goto_72

    .line 110
    :cond_6d
    :goto_6d
    const-string p1, "needs >= 2 number of colors"

    .line 112
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_72
    :goto_72
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
    if-eqz v0, :cond_4e

    .line 7
    instance-of v1, v0, Lcom/miui/maml/elements/GraphicsElement;

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_4e

    .line 12
    :cond_b
    check-cast v0, Lcom/miui/maml/elements/GraphicsElement;

    .line 14
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType:[I

    .line 16
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$GraphicsCommand;->mCommand:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    move-result v2

    .line 22
    aget v1, v1, v2

    .line 24
    packed-switch v1, :pswitch_data_50

    .line 27
    goto :goto_4e

    .line 28
    :pswitch_1b  #0xe
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->setRenderListener(Lcom/miui/maml/elements/GraphicsElement;)V

    .line 31
    goto :goto_4e

    .line 32
    :pswitch_1f  #0xd
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->createGradientBox(Lcom/miui/maml/elements/GraphicsElement;)V

    .line 35
    goto :goto_4e

    .line 36
    :pswitch_23  #0xb, 0xc
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->setShader(Lcom/miui/maml/elements/GraphicsElement;)V

    .line 39
    goto :goto_4e

    .line 40
    :pswitch_27  #0xa
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->drawRoundRect(Lcom/miui/maml/elements/GraphicsElement;)V

    .line 43
    goto :goto_4e

    .line 44
    :pswitch_2b  #0x9
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->cubicCurveTo(Lcom/miui/maml/elements/GraphicsElement;)V

    .line 47
    goto :goto_4e

    .line 48
    :pswitch_2f  #0x8
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->drawEllipse(Lcom/miui/maml/elements/GraphicsElement;)V

    .line 51
    goto :goto_4e

    .line 52
    :pswitch_33  #0x7
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->drawCircle(Lcom/miui/maml/elements/GraphicsElement;)V

    .line 55
    goto :goto_4e

    .line 56
    :pswitch_37  #0x6
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->lineStyle(Lcom/miui/maml/elements/GraphicsElement;)V

    .line 59
    goto :goto_4e

    .line 60
    :pswitch_3b  #0x5
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->beginFill(Lcom/miui/maml/elements/GraphicsElement;)V

    .line 63
    goto :goto_4e

    .line 64
    :pswitch_3f  #0x4
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->drawRect(Lcom/miui/maml/elements/GraphicsElement;)V

    .line 67
    goto :goto_4e

    .line 68
    :pswitch_43  #0x3
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->curveTo(Lcom/miui/maml/elements/GraphicsElement;)V

    .line 71
    goto :goto_4e

    .line 72
    :pswitch_47  #0x2
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->moveTo(Lcom/miui/maml/elements/GraphicsElement;)V

    .line 75
    goto :goto_4e

    .line 76
    :pswitch_4b  #0x1
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$GraphicsCommand;->lineTo(Lcom/miui/maml/elements/GraphicsElement;)V

    .line 79
    :cond_4e
    :goto_4e
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_47  #00000002
        :pswitch_43  #00000003
        :pswitch_3f  #00000004
        :pswitch_3b  #00000005
        :pswitch_37  #00000006
        :pswitch_33  #00000007
        :pswitch_2f  #00000008
        :pswitch_2b  #00000009
        :pswitch_27  #0000000a
        :pswitch_23  #0000000b
        :pswitch_23  #0000000c
        :pswitch_1f  #0000000d
        :pswitch_1b  #0000000e
    .end packed-switch
.end method
