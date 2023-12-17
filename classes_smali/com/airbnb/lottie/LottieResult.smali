.class public final Lcom/airbnb/lottie/LottieResult;
.super Ljava/lang/Object;
.source "LottieResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final exception:Ljava/lang/Throwable;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

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
    instance-of v1, p1, Lcom/airbnb/lottie/LottieResult;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lcom/airbnb/lottie/LottieResult;

    .line 13
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_21

    .line 19
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_21

    .line 33
    return v0

    .line 34
    :cond_21
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_42

    .line 40
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_42

    .line 46
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result p1

    .line 66
    return p1

    .line 67
    :cond_42
    return v2
.end method

.method public getException()Ljava/lang/Throwable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    .line 3
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object v1, v0, v2

    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 21
    move-result v0

    .line 22
    return v0
.end method
