.class public Lcom/miui/maml/animation/RotationAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "RotationAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Rotation"

.field public static final TAG_NAME:Ljava/lang/String; = "RotationAnimation"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 5

    .line 1
    const-string v0, "Rotation"

    .line 3
    const-string v1, "angle"

    .line 5
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final getAngle()F
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getCurValue(I)D

    .line 5
    move-result-wide v0

    .line 6
    double-to-float v0, v0

    .line 7
    return v0
.end method
