.class public final Lcom/google/gson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/Streams$AppendableWriter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 9
    throw v0
.end method

.method public static parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_24
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_3} :catch_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_f

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_4
    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/TypeAdapter;

    .line 7
    invoke-virtual {v1, p0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/google/gson/JsonElement;
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_c} :catch_d
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_4 .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_c} :catch_f

    .line 13
    return-object p0

    .line 14
    :catch_d
    move-exception p0

    .line 15
    goto :goto_26

    .line 16
    :catch_f
    move-exception p0

    .line 17
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    .line 19
    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    throw v0

    .line 23
    :catch_16
    move-exception p0

    .line 24
    new-instance v0, Lcom/google/gson/JsonIOException;

    .line 26
    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    throw v0

    .line 30
    :catch_1d
    move-exception p0

    .line 31
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    .line 33
    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    throw v0

    .line 37
    :catch_24
    move-exception p0

    .line 38
    const/4 v0, 0x1

    .line 39
    :goto_26
    if-eqz v0, :cond_2b

    .line 41
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 43
    return-object p0

    .line 44
    :cond_2b
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    .line 46
    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    .line 49
    throw v0
.end method

.method public static write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/TypeAdapter;

    .line 3
    invoke-virtual {v0, p1, p0}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .registers 2

    .line 1
    instance-of v0, p0, Ljava/io/Writer;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    check-cast p0, Ljava/io/Writer;

    .line 7
    goto :goto_d

    .line 8
    :cond_7
    new-instance v0, Lcom/google/gson/internal/Streams$AppendableWriter;

    .line 10
    invoke-direct {v0, p0}, Lcom/google/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    .line 13
    move-object p0, v0

    .line 14
    :goto_d
    return-object p0
.end method
