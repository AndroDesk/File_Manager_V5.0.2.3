.class final Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;
.super Lcom/google/android/datatransport/runtime/SendRequest;
.source "AutoValue_SendRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;
    }
.end annotation


# instance fields
.field private final encoding:Lcom/google/android/datatransport/Encoding;

.field private final event:Lcom/google/android/datatransport/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/Event<",
            "*>;"
        }
    .end annotation
.end field

.field private final transformer:Lcom/google/android/datatransport/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/Transformer<",
            "*[B>;"
        }
    .end annotation
.end field

.field private final transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

.field private final transportName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/runtime/TransportContext;Ljava/lang/String;Lcom/google/android/datatransport/Event;Lcom/google/android/datatransport/Transformer;Lcom/google/android/datatransport/Encoding;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/TransportContext;",
            "Ljava/lang/String;",
            "Lcom/google/android/datatransport/Event<",
            "*>;",
            "Lcom/google/android/datatransport/Transformer<",
            "*[B>;",
            "Lcom/google/android/datatransport/Encoding;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/SendRequest;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 4
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportName:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->event:Lcom/google/android/datatransport/Event;

    .line 6
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transformer:Lcom/google/android/datatransport/Transformer;

    .line 7
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->encoding:Lcom/google/android/datatransport/Encoding;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/TransportContext;Ljava/lang/String;Lcom/google/android/datatransport/Event;Lcom/google/android/datatransport/Transformer;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$1;)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;-><init>(Lcom/google/android/datatransport/runtime/TransportContext;Ljava/lang/String;Lcom/google/android/datatransport/Event;Lcom/google/android/datatransport/Transformer;Lcom/google/android/datatransport/Encoding;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/SendRequest;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_4a

    .line 10
    check-cast p1, Lcom/google/android/datatransport/runtime/SendRequest;

    .line 12
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_48

    .line 24
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getTransportName()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_48

    .line 36
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->event:Lcom/google/android/datatransport/Event;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEvent()Lcom/google/android/datatransport/Event;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_48

    .line 48
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transformer:Lcom/google/android/datatransport/Transformer;

    .line 50
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getTransformer()Lcom/google/android/datatransport/Transformer;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_48

    .line 60
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->encoding:Lcom/google/android/datatransport/Encoding;

    .line 62
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEncoding()Lcom/google/android/datatransport/Encoding;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_48

    .line 72
    goto :goto_49

    .line 73
    :cond_48
    move v0, v2

    .line 74
    :goto_49
    return v0

    .line 75
    :cond_4a
    return v2
.end method

.method public getEncoding()Lcom/google/android/datatransport/Encoding;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->encoding:Lcom/google/android/datatransport/Encoding;

    .line 3
    return-object v0
.end method

.method public getEvent()Lcom/google/android/datatransport/Event;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/Event<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->event:Lcom/google/android/datatransport/Event;

    .line 3
    return-object v0
.end method

.method public getTransformer()Lcom/google/android/datatransport/Transformer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/Transformer<",
            "*[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transformer:Lcom/google/android/datatransport/Transformer;

    .line 3
    return-object v0
.end method

.method public getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 3
    return-object v0
.end method

.method public getTransportName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportName:Ljava/lang/String;

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 17
    move-result v2

    .line 18
    xor-int/2addr v0, v2

    .line 19
    mul-int/2addr v0, v1

    .line 20
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->event:Lcom/google/android/datatransport/Event;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 25
    move-result v2

    .line 26
    xor-int/2addr v0, v2

    .line 27
    mul-int/2addr v0, v1

    .line 28
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transformer:Lcom/google/android/datatransport/Transformer;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 33
    move-result v2

    .line 34
    xor-int/2addr v0, v2

    .line 35
    mul-int/2addr v0, v1

    .line 36
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->encoding:Lcom/google/android/datatransport/Encoding;

    .line 38
    invoke-virtual {v1}, Lcom/google/android/datatransport/Encoding;->hashCode()I

    .line 41
    move-result v1

    .line 42
    xor-int/2addr v0, v1

    .line 43
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "SendRequest{transportContext="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", transportName="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportName:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", event="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->event:Lcom/google/android/datatransport/Event;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", transformer="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transformer:Lcom/google/android/datatransport/Transformer;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", encoding="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->encoding:Lcom/google/android/datatransport/Encoding;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "}"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method
