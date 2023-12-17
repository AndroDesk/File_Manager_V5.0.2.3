.class public abstract Lcom/google/android/datatransport/cct/internal/LogResponse;
.super Ljava/lang/Object;
.source "LogResponse.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LogResponseInternal"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(J)Lcom/google/android/datatransport/cct/internal/LogResponse;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogResponse;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/datatransport/cct/internal/AutoValue_LogResponse;-><init>(J)V

    .line 6
    return-object v0
.end method

.method public static fromJson(Ljava/io/Reader;)Lcom/google/android/datatransport/cct/internal/LogResponse;
    .registers 4

    .line 1
    new-instance v0, Landroid/util/JsonReader;

    .line 3
    invoke-direct {v0, p0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 6
    :try_start_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 9
    :goto_8
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_42

    .line 15
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    const-string v1, "nextRequestWaitMillis"

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_3e

    .line 27
    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 30
    move-result-object p0

    .line 31
    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 33
    if-ne p0, v1, :cond_32

    .line 35
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 42
    move-result-wide v1

    .line 43
    invoke-static {v1, v2}, Lcom/google/android/datatransport/cct/internal/LogResponse;->create(J)Lcom/google/android/datatransport/cct/internal/LogResponse;

    .line 46
    move-result-object p0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_4a

    .line 47
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 50
    return-object p0

    .line 51
    :cond_32
    :try_start_32
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextLong()J

    .line 54
    move-result-wide v1

    .line 55
    invoke-static {v1, v2}, Lcom/google/android/datatransport/cct/internal/LogResponse;->create(J)Lcom/google/android/datatransport/cct/internal/LogResponse;

    .line 58
    move-result-object p0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_4a

    .line 59
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 62
    return-object p0

    .line 63
    :cond_3e
    :try_start_3e
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    .line 66
    goto :goto_8

    .line 67
    :cond_42
    new-instance p0, Ljava/io/IOException;

    .line 69
    const-string v1, "Response is missing nextRequestWaitMillis field."

    .line 71
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p0
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_4a

    .line 75
    :catchall_4a
    move-exception p0

    .line 76
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 79
    throw p0
.end method


# virtual methods
.method public abstract getNextRequestWaitMillis()J
.end method
