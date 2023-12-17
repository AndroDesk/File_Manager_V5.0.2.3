.class public Lcom/google/android/gms/common/util/NumberUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseHexLong(Ljava/lang/String;)J
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 7
    if-gt v0, v1, :cond_2b

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v0

    .line 13
    if-ne v0, v1, :cond_26

    .line 15
    const/16 v0, 0x8

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 24
    move-result-wide v2

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 33
    move-result-wide v0

    .line 34
    const/16 p0, 0x20

    .line 36
    shl-long/2addr v0, p0

    .line 37
    or-long/2addr v0, v2

    .line 38
    return-wide v0

    .line 39
    :cond_26
    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 42
    move-result-wide v0

    .line 43
    return-wide v0

    .line 44
    :cond_2b
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 49
    move-result v1

    .line 50
    add-int/lit8 v1, v1, 0x25

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    const-string v1, "Invalid input: "

    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string p0, " exceeds 16 characters"

    .line 67
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v0
.end method
