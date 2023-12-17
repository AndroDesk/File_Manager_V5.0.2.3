.class public final Lcom/google/gson/JsonNull;
.super Lcom/google/gson/JsonElement;
.source "JsonNull.java"


# static fields
.field public static final INSTANCE:Lcom/google/gson/JsonNull;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/gson/JsonNull;

    .line 3
    invoke-direct {v0}, Lcom/google/gson/JsonNull;-><init>()V

    .line 6
    sput-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonNull;->deepCopy()Lcom/google/gson/JsonNull;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcom/google/gson/JsonNull;
    .registers 2

    .line 2
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    if-eq p0, p1, :cond_9

    .line 3
    instance-of p1, p1, Lcom/google/gson/JsonNull;

    .line 5
    if-eqz p1, :cond_7

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    :goto_9
    const/4 p1, 0x1

    .line 11
    :goto_a
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    const-class v0, Lcom/google/gson/JsonNull;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
