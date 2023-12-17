.class public Lcom/miui/maml/animation/AlphaAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "AlphaAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Alpha"

.field public static final TAG_NAME:Ljava/lang/String; = "AlphaAnimation"


# instance fields
.field private mDelayValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 5

    const-string v0, "Alpha"

    const-string v1, "a"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    const-string p2, "delayValue"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1a

    :try_start_13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/animation/AlphaAnimation;->mDelayValue:I
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_19} :catch_28

    goto :goto_28

    :cond_1a
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/maml/animation/BaseAnimation;->getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object p2

    if-eqz p2, :cond_28

    invoke-virtual {p2, p1}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/miui/maml/animation/AlphaAnimation;->mDelayValue:I

    :catch_28
    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public final getAlpha()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getCurValue(I)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getDefaultValue()D
    .registers 3

    const-wide v0, 0x406fe00000000000L  # 255.0

    return-wide v0
.end method

.method public getDelayValue(I)D
    .registers 4

    iget p1, p0, Lcom/miui/maml/animation/AlphaAnimation;->mDelayValue:I

    int-to-double v0, p1

    return-wide v0
.end method
