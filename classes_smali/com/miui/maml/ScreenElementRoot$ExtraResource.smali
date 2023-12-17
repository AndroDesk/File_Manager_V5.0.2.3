.class Lcom/miui/maml/ScreenElementRoot$ExtraResource;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ScreenElementRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraResource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;,
        Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;,
        Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    }
.end annotation


# instance fields
.field private mResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private mScales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;I)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    .line 20
    invoke-direct {v0, p0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;)V

    .line 23
    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 25
    invoke-static {p2}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    .line 28
    move-result v1

    .line 29
    mul-int/lit16 v1, v1, 0x1e0

    .line 31
    div-int/lit16 v1, v1, 0xf0

    .line 33
    iput v1, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 35
    const/4 v1, 0x0

    .line 36
    iput v1, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 38
    const/4 v2, 0x0

    .line 39
    iput-object v2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 41
    const/high16 v2, 0x3f800000  # 1.0f

    .line 43
    iput v2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 45
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 52
    const-string v2, "extraResourcesDensity"

    .line 54
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    sget-object v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .line 60
    invoke-direct {p0, v0, v2, v3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 63
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 65
    const-string v2, "extraResourcesScreenWidth"

    .line 67
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    sget-object v4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .line 73
    invoke-direct {p0, v0, v2, v4}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 76
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 78
    const-string v2, "extraResources"

    .line 80
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    sget-object v5, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .line 86
    invoke-direct {p0, v0, v2, v5}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 89
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 91
    invoke-direct {v0, p0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;)V

    .line 94
    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 96
    invoke-static {p2}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    .line 99
    move-result p2

    .line 100
    mul-int/lit16 p2, p2, 0x1e0

    .line 102
    div-int/lit16 p2, p2, 0xf0

    .line 104
    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 106
    iput v1, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 108
    const/high16 p2, -0x40800000  # -1.0f

    .line 110
    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 112
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 119
    const-string v0, "extraScaleByDensity"

    .line 121
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    invoke-direct {p0, p2, v0, v3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 128
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 130
    const-string v0, "extraScaleByScreenWidth"

    .line 132
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    invoke-direct {p0, p2, v0, v4}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 139
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 141
    const-string v0, "extraScales"

    .line 143
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    invoke-direct {p0, p2, p1, v5}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 150
    return-void
.end method

.method public static synthetic access$100(Ljava/lang/String;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->parseSizeType(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4d

    .line 7
    const-string v0, ","

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    if-ge v2, v1, :cond_4d

    .line 17
    aget-object v3, v0, v2

    .line 19
    :try_start_12
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 21
    if-ne p1, v4, :cond_23

    .line 23
    new-instance v4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v4, p0, v3, p3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 32
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_4a

    .line 36
    :cond_23
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 38
    if-ne p1, v4, :cond_4a

    .line 40
    new-instance v4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    invoke-direct {v4, p0, v3, p3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 49
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_33} :catch_34

    .line 52
    goto :goto_4a

    .line 53
    :catch_34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v4, "format error of attribute: "

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    const-string v4, "ScreenElementRoot"

    .line 72
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    .line 77
    goto :goto_e

    .line 78
    :cond_4d
    return-void
.end method

.method private static parseSizeType(Ljava/lang/String;)I
    .registers 2

    .line 1
    const-string v0, "small"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_29

    .line 11
    :cond_a
    const-string v0, "normal"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const/4 p0, 0x2

    .line 20
    goto :goto_29

    .line 21
    :cond_14
    const-string v0, "large"

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1e

    .line 29
    const/4 p0, 0x3

    .line 30
    goto :goto_29

    .line 31
    :cond_1e
    const-string v0, "xlarge"

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_28

    .line 39
    const/4 p0, 0x4

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    const/4 p0, 0x0

    .line 42
    :goto_29
    return p0
.end method


# virtual methods
.method public findMetrics(IIILjava/util/ArrayList;)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;)",
            "Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p4

    .line 10
    const v1, 0x7fffffff

    .line 13
    move v2, v1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_55

    .line 20
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 26
    iget v4, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 28
    if-eqz v4, :cond_20

    .line 30
    if-eq v4, p3, :cond_20

    .line 32
    goto :goto_d

    .line 33
    :cond_20
    iget v4, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 35
    sub-int v4, p1, v4

    .line 37
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 40
    move-result v4

    .line 41
    if-ge v4, v1, :cond_3b

    .line 43
    iget v1, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 45
    sub-int v1, p2, v1

    .line 47
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    move v2, v1

    .line 58
    move v1, v4

    .line 59
    goto :goto_d

    .line 60
    :cond_3b
    if-ne v4, v1, :cond_d

    .line 62
    iget v4, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 64
    sub-int v4, p2, v4

    .line 66
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 69
    move-result v4

    .line 70
    if-ge v4, v2, :cond_4f

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    move v2, v4

    .line 79
    goto :goto_d

    .line 80
    :cond_4f
    if-ne v4, v2, :cond_d

    .line 82
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_d

    .line 86
    :cond_55
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object p1

    .line 90
    const/4 p2, 0x0

    .line 91
    :cond_5a
    :goto_5a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result p4

    .line 95
    if-eqz p4, :cond_70

    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object p4

    .line 101
    check-cast p4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 103
    iget v0, p4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 105
    if-ne v0, p3, :cond_6c

    .line 107
    move-object p2, p4

    .line 108
    goto :goto_70

    .line 109
    :cond_6c
    if-nez v0, :cond_5a

    .line 111
    move-object p2, p4

    .line 112
    goto :goto_5a

    .line 113
    :cond_70
    :goto_70
    return-object p2
.end method

.method public findResource(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    .line 9
    return-object p1
.end method

.method public findScale(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
