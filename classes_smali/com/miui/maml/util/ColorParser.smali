.class public Lcom/miui/maml/util/ColorParser;
.super Ljava/lang/Object;
.source "ColorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/ColorParser$ExpressionType;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR:I = -0x1000000

.field private static final LOG_TAG:Ljava/lang/String; = "ColorParser"


# instance fields
.field private mColor:I

.field private mColorExpression:Ljava/lang/String;

.field private mCurColorString:Ljava/lang/String;

.field private mIndexedColorVar:Lcom/miui/maml/data/IndexedVariable;

.field private mRGBExpression:[Lcom/miui/maml/data/Expression;

.field private mType:Lcom/miui/maml/util/ColorParser$ExpressionType;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, -0x1000000

    .line 6
    iput v0, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 14
    const-string v1, "#"

    .line 16
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_25

    .line 22
    sget-object p1, Lcom/miui/maml/util/ColorParser$ExpressionType;->CONST:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 24
    iput-object p1, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 26
    :try_start_19
    iget-object p1, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/miui/maml/util/ColorParser;->mColor:I
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_21} :catch_22

    .line 34
    goto :goto_87

    .line 35
    :catch_22
    iput v0, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    .line 37
    goto :goto_87

    .line 38
    :cond_25
    iget-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 40
    const-string v0, "@"

    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    move-result p2

    .line 46
    const/4 v0, 0x1

    .line 47
    if-eqz p2, :cond_43

    .line 49
    sget-object p2, Lcom/miui/maml/util/ColorParser$ExpressionType;->VARIABLE:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 51
    iput-object p2, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 53
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 55
    iget-object v1, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 65
    iput-object p2, p0, Lcom/miui/maml/util/ColorParser;->mIndexedColorVar:Lcom/miui/maml/data/IndexedVariable;

    .line 67
    goto :goto_87

    .line 68
    :cond_43
    iget-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 70
    const-string v1, "argb("

    .line 72
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_83

    .line 78
    iget-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 80
    const-string v1, ")"

    .line 82
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_83

    .line 88
    sget-object p2, Lcom/miui/maml/util/ColorParser$ExpressionType;->ARGB:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 90
    iput-object p2, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 92
    iget-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 94
    const/4 v1, 0x5

    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 98
    move-result v2

    .line 99
    sub-int/2addr v2, v0

    .line 100
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 103
    move-result-object p2

    .line 104
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    .line 110
    if-eqz p1, :cond_87

    .line 112
    array-length p1, p1

    .line 113
    const/4 p2, 0x4

    .line 114
    if-ne p1, p2, :cond_74

    .line 116
    goto :goto_87

    .line 117
    :cond_74
    const-string p1, "ColorParser"

    .line 119
    const-string p2, "bad expression format"

    .line 121
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 126
    const-string p2, "bad expression format."

    .line 128
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p1

    .line 132
    :cond_83
    sget-object p1, Lcom/miui/maml/util/ColorParser$ExpressionType;->INVALID:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 134
    iput-object p1, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 136
    :cond_87
    :goto_87
    return-void
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/util/ColorParser;
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/util/ColorParser;

    const-string v1, "color"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/ColorParser;
    .registers 5

    .line 2
    new-instance v0, Lcom/miui/maml/util/ColorParser;

    const-string v1, "color"

    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/ColorParser;
    .registers 5

    .line 3
    new-instance v0, Lcom/miui/maml/util/ColorParser;

    invoke-static {p1, p2, p3}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getColor()I
    .registers 8

    .line 1
    sget-object v0, Lcom/miui/maml/util/ColorParser$1;->$SwitchMap$com$miui$maml$util$ColorParser$ExpressionType:[I

    .line 3
    iget-object v1, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_5c

    .line 14
    const/high16 v2, -0x1000000

    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v0, v3, :cond_44

    .line 19
    const/4 v4, 0x3

    .line 20
    if-eq v0, v4, :cond_18

    .line 22
    iput v2, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    .line 24
    goto :goto_5c

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    .line 27
    const/4 v2, 0x0

    .line 28
    aget-object v0, v0, v2

    .line 30
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 33
    move-result-wide v5

    .line 34
    double-to-int v0, v5

    .line 35
    iget-object v2, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    .line 37
    aget-object v1, v2, v1

    .line 39
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 42
    move-result-wide v1

    .line 43
    double-to-int v1, v1

    .line 44
    iget-object v2, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    .line 46
    aget-object v2, v2, v3

    .line 48
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 51
    move-result-wide v2

    .line 52
    double-to-int v2, v2

    .line 53
    iget-object v3, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    .line 55
    aget-object v3, v3, v4

    .line 57
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 60
    move-result-wide v3

    .line 61
    double-to-int v3, v3

    .line 62
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    .line 68
    goto :goto_5c

    .line 69
    :cond_44
    iget-object v0, p0, Lcom/miui/maml/util/ColorParser;->mIndexedColorVar:Lcom/miui/maml/data/IndexedVariable;

    .line 71
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/miui/maml/util/ColorParser;->mCurColorString:Ljava/lang/String;

    .line 77
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_5c

    .line 83
    if-eqz v0, :cond_58

    .line 85
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 88
    move-result v2

    .line 89
    :cond_58
    iput v2, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    .line 91
    iput-object v0, p0, Lcom/miui/maml/util/ColorParser;->mCurColorString:Ljava/lang/String;

    .line 93
    :cond_5c
    :goto_5c
    iget v0, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    .line 95
    return v0
.end method
