.class final enum Lcom/google/gson/ToNumberPolicy$3;
.super Lcom/google/gson/ToNumberPolicy;
.source "ToNumberPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/ToNumberPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/gson/ToNumberPolicy;-><init>(Ljava/lang/String;ILcom/google/gson/ToNumberPolicy$1;)V

    .line 5
    return-void
.end method


# virtual methods
.method public readNumber(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .registers 8

    .line 1
    const-string v0, "; at path "

    .line 3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    :try_start_6
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    move-result-wide v2

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    move-result-object p1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_e} :catch_f

    .line 15
    return-object p1

    .line 16
    :catch_f
    :try_start_f
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Double;->isInfinite()Z

    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1f

    .line 26
    invoke-virtual {v2}, Ljava/lang/Double;->isNaN()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_25

    .line 32
    :cond_1f
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->isLenient()Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_26

    .line 38
    :cond_25
    return-object v2

    .line 39
    :cond_26
    new-instance v3, Lcom/google/gson/stream/MalformedJsonException;

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v5, "JSON forbids NaN and infinities: "

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-direct {v3, v2}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    .line 71
    throw v3
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_47} :catch_47

    .line 72
    :catch_47
    move-exception v2

    .line 73
    new-instance v3, Lcom/google/gson/JsonParseException;

    .line 75
    const-string v4, "Cannot parse "

    .line 77
    invoke-static {v4, v1, v0}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-direct {v3, p1, v2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    throw v3
.end method
