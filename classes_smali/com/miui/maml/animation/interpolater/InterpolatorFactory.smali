.class public Lcom/miui/maml/animation/interpolater/InterpolatorFactory;
.super Ljava/lang/Object;
.source "InterpolatorFactory.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "InterpolatorFactory"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;[Lcom/miui/maml/data/Expression;)Landroid/view/animation/Interpolator;
    .registers 13

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_11

    array-length v3, p1

    if-lez v3, :cond_11

    move v3, v2

    goto :goto_12

    :cond_11
    move v3, v0

    :goto_12
    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v5, 0x29

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v4, v7, :cond_5a

    if-eq v5, v7, :cond_5a

    add-int/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_3d

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    move v5, v2

    goto :goto_42

    :cond_3d
    const-string v5, ""

    move-object v7, v5

    move v5, v0

    move-object v0, v4

    :goto_42
    :try_start_42
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_46} :catch_4d

    if-eqz v5, :cond_55

    :try_start_48
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_4c} :catch_4e

    goto :goto_55

    :catch_4d
    move v0, v6

    :catch_4e
    const-string v7, "parse error:"

    const-string v8, "InterpolatorFactory"

    invoke-static {v7, v4, v8}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    :goto_55
    move v10, v6

    move v6, v0

    move v0, v2

    move v2, v10

    goto :goto_5c

    :cond_5a
    move v5, v0

    move v2, v6

    :goto_5c
    const-string v4, "BackEaseIn"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6a

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_6a
    const-string v7, "BackEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_78

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_78
    const-string v8, "BackEaseInOut"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_86

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_86
    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9c

    if-eqz v3, :cond_94

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_94
    if-eqz v0, :cond_2b6

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {p0, v6}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>(F)V

    return-object p0

    :cond_9c
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b2

    if-eqz v3, :cond_aa

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_aa
    if-eqz v0, :cond_2b6

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {p0, v6}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>(F)V

    return-object p0

    :cond_b2
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c8

    if-eqz v3, :cond_c0

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_c0
    if-eqz v0, :cond_2b6

    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {p0, v6}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>(F)V

    return-object p0

    :cond_c8
    const-string v0, "BounceEaseIn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d6

    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;-><init>()V

    return-object p0

    :cond_d6
    const-string v0, "BounceEaseOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_e4
    const-string v0, "BounceEaseInOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f2

    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_f2
    const-string v0, "CircEaseIn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_100

    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseInInterpolater;-><init>()V

    return-object p0

    :cond_100
    const-string v0, "CircEaseOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10e

    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_10e
    const-string v0, "CircEaseInOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11c

    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_11c
    const-string v0, "CubicEaseIn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12a

    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseInInterpolater;-><init>()V

    return-object p0

    :cond_12a
    const-string v0, "CubicEaseOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_138

    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_138
    const-string v0, "CubicEaseInOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_146

    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_146
    const-string v0, "ElasticEaseIn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_154

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_154
    const-string v4, "ElasticEaseOut"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_162

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_162
    const-string v7, "ElasticEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_170

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_170
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_186

    if-eqz v3, :cond_17e

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_17e
    if-eqz v5, :cond_2b6

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>(FF)V

    return-object p0

    :cond_186
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19c

    if-eqz v3, :cond_194

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_194
    if-eqz v5, :cond_2b6

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>(FF)V

    return-object p0

    :cond_19c
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b2

    if-eqz v3, :cond_1aa

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_1aa
    if-eqz v5, :cond_2b6

    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    return-object p0

    :cond_1b2
    const-string v0, "ExpoEaseIn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c0

    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseInInterpolater;-><init>()V

    return-object p0

    :cond_1c0
    const-string v0, "ExpoEaseOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_1ce
    const-string v0, "ExpoEaseInOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_1dc
    const-string v0, "QuadEaseIn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseInInterpolater;-><init>()V

    return-object p0

    :cond_1ea
    const-string v0, "QuadEaseOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f8

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_1f8
    const-string v0, "QuadEaseInOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_206

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_206
    const-string v0, "QuartEaseIn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_214

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;-><init>()V

    return-object p0

    :cond_214
    const-string v0, "QuartEaseOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_222

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_222
    const-string v0, "QuartEaseInOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_230

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_230
    const-string v0, "QuintEaseIn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23e

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseInInterpolater;-><init>()V

    return-object p0

    :cond_23e
    const-string v0, "QuintEaseOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24c

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_24c
    const-string v0, "QuintEaseInOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25a

    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_25a
    const-string v0, "SineEaseIn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_268

    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseInInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseInInterpolater;-><init>()V

    return-object p0

    :cond_268
    const-string v0, "SineEaseOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_276

    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseOutInterpolater;-><init>()V

    return-object p0

    :cond_276
    const-string v0, "SineEaseInOut"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_284

    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseInOutInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    return-object p0

    :cond_284
    const-string v0, "Linear"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_292

    new-instance p0, Lcom/miui/maml/animation/interpolater/LinearInterpolater;

    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/LinearInterpolater;-><init>()V

    return-object p0

    :cond_292
    const-string v0, "PhysicBased"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a0

    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_2a0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b6

    if-eqz v3, :cond_2ae

    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>([Lcom/miui/maml/data/Expression;)V

    return-object p0

    :cond_2ae
    if-eqz v5, :cond_2b6

    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>(FF)V

    return-object p0

    :cond_2b6
    return-object v1
.end method
