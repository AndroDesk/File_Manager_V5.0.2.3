.class abstract Lcom/miui/maml/util/TextFormatter$FormatPara;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FormatPara"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/util/TextFormatter$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/util/TextFormatter$FormatPara;-><init>()V

    .line 4
    return-void
.end method

.method public static build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter$FormatPara;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "@"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_17

    .line 13
    new-instance p1, Lcom/miui/maml/util/TextFormatter$StringVarPara;

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, p0, v0}, Lcom/miui/maml/util/TextFormatter$StringVarPara;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 23
    return-object p1

    .line 24
    :cond_17
    invoke-static {p0, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 27
    move-result-object p0

    .line 28
    if-nez p0, :cond_35

    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string v0, "invalid parameter expression:"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    const-string p1, "TextFormatter"

    .line 49
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :cond_35
    new-instance p1, Lcom/miui/maml/util/TextFormatter$ExpressioPara;

    .line 56
    invoke-direct {p1, p0}, Lcom/miui/maml/util/TextFormatter$ExpressioPara;-><init>(Lcom/miui/maml/data/Expression;)V

    .line 59
    return-object p1
.end method

.method public static buildArray(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/util/TextFormatter$FormatPara;
    .registers 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x0

    .line 14
    if-ge v1, v4, :cond_39

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 19
    move-result v4

    .line 20
    if-nez v3, :cond_29

    .line 22
    const/16 v6, 0x2c

    .line 24
    if-ne v4, v6, :cond_29

    .line 26
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-static {p0, v2}, Lcom/miui/maml/util/TextFormatter$FormatPara;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_24

    .line 36
    return-object v5

    .line 37
    :cond_24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v2, v1, 0x1

    .line 42
    :cond_29
    const/16 v5, 0x28

    .line 44
    if-ne v4, v5, :cond_30

    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 48
    goto :goto_36

    .line 49
    :cond_30
    const/16 v5, 0x29

    .line 51
    if-ne v4, v5, :cond_36

    .line 53
    add-int/lit8 v3, v3, -0x1

    .line 55
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_8

    .line 58
    :cond_39
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Lcom/miui/maml/util/TextFormatter$FormatPara;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 65
    move-result-object p0

    .line 66
    if-nez p0, :cond_44

    .line 68
    return-object v5

    .line 69
    :cond_44
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 75
    move-result p0

    .line 76
    new-array p0, p0, [Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 78
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 81
    move-result-object p0

    .line 82
    check-cast p0, [Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 84
    return-object p0
.end method


# virtual methods
.method public abstract evaluate()Ljava/lang/Object;
.end method
