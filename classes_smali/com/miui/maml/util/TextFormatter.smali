.class public Lcom/miui/maml/util/TextFormatter;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/TextFormatter$StringVarPara;,
        Lcom/miui/maml/util/TextFormatter$ExpressioPara;,
        Lcom/miui/maml/util/TextFormatter$FormatPara;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextFormatter"


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mFormatExpression:Lcom/miui/maml/data/Expression;

.field private mIndexedFormatVar:Lcom/miui/maml/data/IndexedVariable;

.field private mIndexedTextVar:Lcom/miui/maml/data/IndexedVariable;

.field private mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

.field private mParasValue:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;

.field private mTextExpression:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V
    .registers 11

    const-string v3, ""

    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, ""

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    const-string v0, "@"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_26

    .line 6
    iget-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_26

    .line 8
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    iget-object v3, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-direct {p2, v3, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mIndexedTextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 9
    :cond_26
    iput-object p3, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 10
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 11
    iget-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_45

    .line 13
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    iget-object p3, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-direct {p2, p3, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mIndexedFormatVar:Lcom/miui/maml/data/IndexedVariable;

    .line 14
    :cond_45
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_58

    .line 15
    invoke-static {p1, p4}, Lcom/miui/maml/util/TextFormatter$FormatPara;->buildArray(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/util/TextFormatter$FormatPara;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

    if-eqz p1, :cond_58

    .line 16
    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    :cond_58
    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V
    .registers 7

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput-object p5, p0, Lcom/miui/maml/util/TextFormatter;->mTextExpression:Lcom/miui/maml/data/Expression;

    .line 20
    iput-object p6, p0, Lcom/miui/maml/util/TextFormatter;->mFormatExpression:Lcom/miui/maml/data/Expression;

    return-void
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/TextFormatter;
    .registers 11

    const-string v0, "paras"

    .line 1
    invoke-static {p1, v0, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, "params"

    .line 3
    invoke-static {p1, v0, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    move-object v5, v0

    .line 4
    new-instance v0, Lcom/miui/maml/util/TextFormatter;

    const-string v1, "text"

    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "format"

    .line 5
    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "textExp"

    .line 6
    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v6

    const-string v1, "formatExp"

    .line 7
    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v7

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    return-object v0
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter;
    .registers 15

    .line 8
    new-instance v7, Lcom/miui/maml/util/TextFormatter;

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-interface {p1, p5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v5

    .line 10
    invoke-interface {p1, p6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    return-object v7
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mFormatExpression:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mIndexedFormatVar:Lcom/miui/maml/data/IndexedVariable;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 21
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mTextExpression:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    invoke-virtual {p0}, Lcom/miui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_3a

    .line 20
    iget-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 22
    if-eqz v1, :cond_2a

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_18
    iget-object v2, p0, Lcom/miui/maml/util/TextFormatter;->mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 27
    array-length v3, v2

    .line 28
    if-ge v1, v3, :cond_2a

    .line 30
    iget-object v3, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 32
    aget-object v2, v2, v1

    .line 34
    invoke-virtual {v2}, Lcom/miui/maml/util/TextFormatter$FormatPara;->evaluate()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    aput-object v2, v3, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_18

    .line 43
    :cond_2a
    iget-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 45
    if-eqz v1, :cond_3a

    .line 47
    :try_start_2e
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object v0
    :try_end_32
    .catch Ljava/util/IllegalFormatException; {:try_start_2e .. :try_end_32} :catch_33

    .line 51
    return-object v0

    .line 52
    :catch_33
    const-string v1, "Format error: "

    .line 54
    invoke-static {v1, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :cond_3a
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mIndexedTextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 61
    if-eqz v0, :cond_43

    .line 63
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    :cond_43
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 70
    return-object v0
.end method

.method public hasFormat()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_1a

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 6
    array-length v0, p1

    .line 7
    iget-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 9
    if-nez v1, :cond_e

    .line 11
    new-array v1, v0, [Ljava/lang/Object;

    .line 13
    iput-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 17
    array-length v2, v1

    .line 18
    if-ge v2, v0, :cond_14

    .line 20
    array-length v0, v1

    .line 21
    :cond_14
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 27
    :cond_1a
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 3
    const-string p1, ""

    .line 5
    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 7
    return-void
.end method
