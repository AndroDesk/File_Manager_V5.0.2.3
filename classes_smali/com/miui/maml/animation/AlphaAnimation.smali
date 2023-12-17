.class public Lcom/miui/maml/animation/AlphaAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "AlphaAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Alpha"

.field public static final TAG_NAME:Ljava/lang/String; = "AlphaAnimation"


# instance fields
.field private mDelayValue:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 5

    .line 1
    const-string v0, "Alpha"

    .line 3
    const-string v1, "a"

    .line 5
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    .line 8
    const-string p2, "delayValue"

    .line 10
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_1a

    .line 20
    :try_start_13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    move-result p1

    .line 24
    iput p1, p0, Lcom/miui/maml/animation/AlphaAnimation;->mDelayValue:I
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_19} :catch_28

    .line 26
    goto :goto_28

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/maml/animation/BaseAnimation;->getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_28

    .line 34
    invoke-virtual {p2, p1}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 37
    move-result-wide p1

    .line 38
    double-to-int p1, p1

    .line 39
    iput p1, p0, Lcom/miui/maml/animation/AlphaAnimation;->mDelayValue:I

    .line 41
    :catch_28
    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public final getAlpha()I
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getCurValue(I)D

    .line 5
    move-result-wide v0

    .line 6
    double-to-int v0, v0

    .line 7
    return v0
.end method

.method public getDefaultValue()D
    .registers 3

    const-wide v0, 0x406fe00000000000L  # 255.0

    return-wide v0
.end method

.method public getDelayValue(I)D
    .registers 4

    .line 1
    iget p1, p0, Lcom/miui/maml/animation/AlphaAnimation;->mDelayValue:I

    .line 3
    int-to-double v0, p1

    .line 4
    return-wide v0
.end method
