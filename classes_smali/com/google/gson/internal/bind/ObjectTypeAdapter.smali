.class public final Lcom/google/gson/internal/bind/ObjectTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final DOUBLE_FACTORY:Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private final toNumberStrategy:Lcom/google/gson/ToNumberStrategy;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy;

    .line 3
    invoke-static {v0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->newFactory(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/TypeAdapterFactory;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->DOUBLE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/ToNumberStrategy;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/google/gson/Gson;

    .line 4
    iput-object p2, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->toNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/ToNumberStrategy;Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/ToNumberStrategy;)V

    return-void
.end method

.method public static getFactory(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/TypeAdapterFactory;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy;

    .line 3
    if-ne p0, v0, :cond_7

    .line 5
    sget-object p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->DOUBLE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 7
    return-object p0

    .line 8
    :cond_7
    invoke-static {p0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->newFactory(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/TypeAdapterFactory;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static newFactory(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/TypeAdapterFactory;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;-><init>(Lcom/google/gson/ToNumberStrategy;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 13
    packed-switch v0, :pswitch_data_68

    .line 16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 21
    throw p1

    .line 22
    :pswitch_15  #0x6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1

    .line 27
    :pswitch_1a  #0x5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    .line 30
    move-result p1

    .line 31
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :pswitch_23  #0x4
    iget-object v0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->toNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 38
    invoke-interface {v0, p1}, Lcom/google/gson/ToNumberStrategy;->readNumber(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :pswitch_2a  #0x3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :pswitch_2f  #0x2
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 50
    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 56
    :goto_37
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_49

    .line 62
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    goto :goto_37

    .line 74
    :cond_49
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 77
    return-object v0

    .line 78
    :pswitch_4d  #0x1
    new-instance v0, Ljava/util/ArrayList;

    .line 80
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 86
    :goto_55
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_63

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    goto :goto_55

    .line 100
    :cond_63
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 103
    return-object v0

    .line 104
    nop

    .line 105
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_4d  #00000001
        :pswitch_2f  #00000002
        :pswitch_2a  #00000003
        :pswitch_23  #00000004
        :pswitch_1a  #00000005
        :pswitch_15  #00000006
    .end packed-switch
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 5

    .line 1
    if-nez p2, :cond_6

    .line 3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 6
    return-void

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/google/gson/Gson;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;

    .line 19
    if-eqz v1, :cond_1b

    .line 21
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 24
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    .line 27
    return-void

    .line 28
    :cond_1b
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 31
    return-void
.end method
