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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/util/TextFormatter$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/maml/util/TextFormatter$FormatPara;-><init>()V

    return-void
.end method

.method public static build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter$FormatPara;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance p1, Lcom/miui/maml/util/TextFormatter$StringVarPara;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/miui/maml/util/TextFormatter$StringVarPara;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    return-object p1

    :cond_17
    invoke-static {p0, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p0

    if-nez p0, :cond_35

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid parameter expression:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TextFormatter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_35
    new-instance p1, Lcom/miui/maml/util/TextFormatter$ExpressioPara;

    invoke-direct {p1, p0}, Lcom/miui/maml/util/TextFormatter$ExpressioPara;-><init>(Lcom/miui/maml/data/Expression;)V

    return-object p1
.end method

.method public static buildArray(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/util/TextFormatter$FormatPara;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-ge v1, v4, :cond_39

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-nez v3, :cond_29

    const/16 v6, 0x2c

    if-ne v4, v6, :cond_29

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/maml/util/TextFormatter$FormatPara;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter$FormatPara;

    move-result-object v2

    if-nez v2, :cond_24

    return-object v5

    :cond_24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v1, 0x1

    :cond_29
    const/16 v5, 0x28

    if-ne v4, v5, :cond_30

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_30
    const/16 v5, 0x29

    if-ne v4, v5, :cond_36

    add-int/lit8 v3, v3, -0x1

    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_39
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/maml/util/TextFormatter$FormatPara;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter$FormatPara;

    move-result-object p0

    if-nez p0, :cond_44

    return-object v5

    :cond_44
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/miui/maml/util/TextFormatter$FormatPara;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/miui/maml/util/TextFormatter$FormatPara;

    return-object p0
.end method


# virtual methods
.method public abstract evaluate()Ljava/lang/Object;
.end method
