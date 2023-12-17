.class public Lcom/miui/maml/animation/interpolater/InterpolatorHelper;
.super Ljava/lang/Object;
.source "InterpolatorHelper.java"


# static fields
.field private static final VAR_RATIO:Ljava/lang/String; = "__ratio"


# instance fields
.field private mEaseFunExp:Lcom/miui/maml/data/Expression;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mRatioVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1, p4}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 7
    move-result-object p4

    .line 8
    invoke-static {p2, p4}, Lcom/miui/maml/animation/interpolater/InterpolatorFactory;->create(Ljava/lang/String;[Lcom/miui/maml/data/Expression;)Landroid/view/animation/Interpolator;

    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 14
    invoke-static {p1, p3}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    .line 20
    if-eqz p2, :cond_1f

    .line 22
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 24
    const/4 p3, 0x1

    .line 25
    const-string p4, "__ratio"

    .line 27
    invoke-direct {p2, p4, p1, p3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 30
    iput-object p2, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mRatioVar:Lcom/miui/maml/data/IndexedVariable;

    .line 32
    :cond_1f
    return-void
.end method

.method public static create(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/interpolater/InterpolatorHelper;
    .registers 5

    .line 1
    const-string v0, "easeType"

    .line 3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "easeExp"

    .line 9
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "easeParamsExp"

    .line 15
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_20

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_20

    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :cond_20
    new-instance v2, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 35
    invoke-direct {v2, p0, v0, v1, p1}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-object v2
.end method


# virtual methods
.method public get(F)F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mRatioVar:Lcom/miui/maml/data/IndexedVariable;

    .line 7
    float-to-double v1, p1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 11
    iget-object p1, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    .line 13
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 16
    move-result-wide v0

    .line 17
    double-to-float p1, v0

    .line 18
    return p1

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 21
    if-eqz v0, :cond_1a

    .line 23
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 26
    move-result p1

    .line 27
    :cond_1a
    return p1
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 13
    :goto_c
    return v0
.end method
