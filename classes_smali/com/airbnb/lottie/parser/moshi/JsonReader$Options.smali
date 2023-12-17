.class public final Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;
.super Ljava/lang/Object;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field public final doubleQuoteSuffix:Lp4/e;

.field public final strings:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Lp4/e;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->doubleQuoteSuffix:Lp4/e;

    .line 8
    return-void
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;
    .registers 7

    .line 1
    :try_start_0
    array-length v0, p0

    .line 2
    new-array v0, v0, [Lokio/ByteString;

    .line 4
    new-instance v1, Lokio/a;

    .line 6
    invoke-direct {v1}, Lokio/a;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    array-length v3, p0

    .line 11
    if-ge v2, v3, :cond_2b

    .line 13
    aget-object v3, p0, v2

    .line 15
    invoke-static {v1, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->access$000(Lp4/a;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 21
    new-instance v3, Lokio/ByteString;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_3b

    .line 23
    :try_start_16
    iget-wide v4, v1, Lokio/a;->b:J

    .line 25
    invoke-virtual {v1, v4, v5}, Lokio/a;->i(J)[B

    .line 28
    move-result-object v4
    :try_end_1c
    .catch Ljava/io/EOFException; {:try_start_16 .. :try_end_1c} :catch_24
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1c} :catch_3b

    .line 29
    :try_start_1c
    invoke-direct {v3, v4}, Lokio/ByteString;-><init>([B)V

    .line 32
    aput-object v3, v0, v2

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_9

    .line 37
    :catch_24
    move-exception p0

    .line 38
    new-instance v0, Ljava/lang/AssertionError;

    .line 40
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 43
    throw v0

    .line 44
    :cond_2b
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 46
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 50
    check-cast p0, [Ljava/lang/String;

    .line 52
    invoke-static {v0}, Lp4/e;->b([Lokio/ByteString;)Lp4/e;

    .line 55
    move-result-object v0

    .line 56
    invoke-direct {v1, p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;-><init>([Ljava/lang/String;Lp4/e;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3a} :catch_3b

    .line 59
    return-object v1

    .line 60
    :catch_3b
    move-exception p0

    .line 61
    new-instance v0, Ljava/lang/AssertionError;

    .line 63
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 66
    throw v0
.end method
