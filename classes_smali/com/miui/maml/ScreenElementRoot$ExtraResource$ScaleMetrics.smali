.class Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleMetrics"
.end annotation


# instance fields
.field public mDensity:I

.field public mScale:F

.field public mScreenWidth:I

.field public mSizeType:I

.field public final synthetic this$0:Lcom/miui/maml/ScreenElementRoot$ExtraResource;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->this$0:Lcom/miui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000  # 1.0f

    .line 2
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .registers 11

    .line 3
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->this$0:Lcom/miui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000  # 1.0f

    .line 4
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    :try_start_9
    const-string p1, ":"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/miui/maml/ScreenElementRoot$4;->$SwitchMap$com$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_f6

    const/4 v2, 0x2

    if-eq p3, v2, :cond_d8

    const/4 v3, 0x3

    if-eq p3, v3, :cond_23

    goto/16 :goto_113

    .line 7
    :cond_23
    aget-object p3, p1, v0

    const-string v4, "-"

    invoke-virtual {p3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 8
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 9
    array-length v4, p3
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_2e} :catch_114

    const-string v5, "invalid format: "

    if-ne v4, v1, :cond_89

    .line 10
    :try_start_32
    aget-object v4, p3, v0

    const-string v6, "sw"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 11
    aget-object p3, p3, v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    mul-int/lit16 p3, p3, 0xf0

    .line 12
    div-int/lit16 p3, p3, 0x1e0

    invoke-static {p3}, Lcom/miui/maml/ResourceManager;->retranslateDensity(I)I

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    goto :goto_af

    .line 13
    :cond_53
    aget-object v4, p3, v0

    const-string v6, "den"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 14
    aget-object p3, p3, v0

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 15
    invoke-static {p3}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    move-result p3

    mul-int/lit16 p3, p3, 0x1e0

    div-int/lit16 p3, p3, 0xf0

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    goto :goto_af

    .line 16
    :cond_74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_89
    array-length v4, p3

    if-lt v4, v2, :cond_c3

    .line 18
    aget-object v0, p3, v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 19
    aget-object v0, p3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 20
    array-length v0, p3

    if-ne v0, v3, :cond_af

    .line 21
    aget-object p3, p3, v2

    invoke-static {p3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->access$100(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 22
    :cond_af
    :goto_af
    array-length p3, p1

    if-le p3, v1, :cond_bf

    .line 23
    array-length p3, p1

    if-ne p3, v2, :cond_b6

    goto :goto_b7

    :cond_b6
    move v1, v2

    :goto_b7
    aget-object p3, p1, v1

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 24
    :cond_bf
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->onParseInfo([Ljava/lang/String;)V

    goto :goto_113

    .line 25
    :cond_c3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_d8
    aget-object p3, p1, v0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    mul-int/lit16 p3, p3, 0xf0

    .line 27
    div-int/lit16 p3, p3, 0x1e0

    invoke-static {p3}, Lcom/miui/maml/ResourceManager;->retranslateDensity(I)I

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 28
    array-length p3, p1

    if-le p3, v1, :cond_113

    .line 29
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    goto :goto_113

    .line 30
    :cond_f6
    aget-object p3, p1, v0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 31
    invoke-static {p3}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    move-result p3

    mul-int/lit16 p3, p3, 0x1e0

    div-int/lit16 p3, p3, 0xf0

    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 32
    array-length p3, p1

    if-le p3, v1, :cond_113

    .line 33
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F
    :try_end_113
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_113} :catch_114

    :cond_113
    :goto_113
    return-void

    .line 34
    :catch_114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "format error of string: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenElementRoot"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid format"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onParseInfo([Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ScaleMetrics sw:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " den:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " sizeType:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, " scale:"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
