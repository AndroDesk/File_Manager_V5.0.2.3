.class public Lcom/miui/maml/util/StyleHelper;
.super Ljava/lang/Object;
.source "StyleHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-object p0

    .line 12
    :cond_b
    if-eqz p2, :cond_11

    .line 14
    invoke-virtual {p2, p1}, Lcom/miui/maml/StylesManager$Style;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    :cond_11
    if-eqz p0, :cond_14

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    const-string p0, ""

    .line 23
    :goto_16
    return-object p0
.end method
