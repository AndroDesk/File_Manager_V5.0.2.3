.class Lcom/google/gson/stream/JsonReader$1;
.super Lcom/google/gson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    check-cast p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    .line 7
    invoke-virtual {p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    .line 10
    return-void

    .line 11
    :cond_a
    iget v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 13
    if-nez v0, :cond_12

    .line 15
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 18
    move-result v0

    .line 19
    :cond_12
    const/16 v1, 0xd

    .line 21
    if-ne v0, v1, :cond_1b

    .line 23
    const/16 v0, 0x9

    .line 25
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 27
    goto :goto_2c

    .line 28
    :cond_1b
    const/16 v1, 0xc

    .line 30
    if-ne v0, v1, :cond_24

    .line 32
    const/16 v0, 0x8

    .line 34
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 36
    goto :goto_2c

    .line 37
    :cond_24
    const/16 v1, 0xe

    .line 39
    if-ne v0, v1, :cond_2d

    .line 41
    const/16 v0, 0xa

    .line 43
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 45
    :goto_2c
    return-void

    .line 46
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    const-string v1, "Expected a name but was "

    .line 50
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    throw v0
.end method
