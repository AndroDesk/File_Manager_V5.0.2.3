.class Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
.super Ljava/lang/Object;
.source "LottieDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorFilterData"
.end annotation


# instance fields
.field public final colorFilter:Landroid/graphics/ColorFilter;

.field public final contentName:Ljava/lang/String;

.field public final layerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    .line 13
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->hashCode()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->hashCode()I

    .line 20
    move-result v3

    .line 21
    if-ne v1, v3, :cond_1d

    .line 23
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    .line 25
    iget-object p1, p1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    .line 27
    if-ne v1, p1, :cond_1d

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v0, v2

    .line 31
    :goto_1e
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v0

    .line 9
    mul-int/lit16 v0, v0, 0x20f

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/16 v0, 0x11

    .line 14
    :goto_d
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    .line 16
    if-eqz v1, :cond_18

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 23
    move-result v1

    .line 24
    mul-int/2addr v0, v1

    .line 25
    :cond_18
    return v0
.end method
