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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p4}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/miui/maml/animation/interpolater/InterpolatorFactory;->create(Ljava/lang/String;[Lcom/miui/maml/data/Expression;)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1, p3}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    if-eqz p2, :cond_1f

    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    const/4 p3, 0x1

    const-string p4, "__ratio"

    invoke-direct {p2, p4, p1, p3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mRatioVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_1f
    return-void
.end method

.method public static create(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/interpolater/InterpolatorHelper;
    .registers 5

    const-string v0, "easeType"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "easeExp"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "easeParamsExp"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 p0, 0x0

    return-object p0

    :cond_20
    new-instance v2, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public get(F)F
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mRatioVar:Lcom/miui/maml/data/IndexedVariable;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iget-object p1, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :cond_12
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1a

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :cond_1a
    return p1
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
