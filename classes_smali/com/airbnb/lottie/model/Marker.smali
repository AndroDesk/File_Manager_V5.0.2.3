.class public Lcom/airbnb/lottie/model/Marker;
.super Ljava/lang/Object;
.source "Marker.java"


# static fields
.field private static CARRIAGE_RETURN:Ljava/lang/String; = "\r"


# instance fields
.field public final durationFrames:F

.field private final name:Ljava/lang/String;

.field public final startFrame:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FF)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    .line 8
    iput p2, p0, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    .line 10
    return-void
.end method


# virtual methods
.method public matchesName(Ljava/lang/String;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    .line 13
    sget-object v2, Lcom/airbnb/lottie/model/Marker;->CARRIAGE_RETURN:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_27

    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 27
    move-result v3

    .line 28
    sub-int/2addr v3, v1

    .line 29
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_27

    .line 39
    return v1

    .line 40
    :cond_27
    return v2
.end method
