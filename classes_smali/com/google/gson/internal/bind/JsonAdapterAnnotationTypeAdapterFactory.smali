.class public final Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 6
    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/gson/annotations/JsonAdapter;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/gson/annotations/JsonAdapter;

    .line 13
    if-nez v0, :cond_10

    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_10
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 19
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/ConstructorConstructor;",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;",
            "Lcom/google/gson/annotations/JsonAdapter;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lcom/google/gson/annotations/JsonAdapter;->value()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    instance-of v0, p1, Lcom/google/gson/TypeAdapter;

    .line 19
    if-eqz v0, :cond_17

    .line 21
    check-cast p1, Lcom/google/gson/TypeAdapter;

    .line 23
    goto :goto_71

    .line 24
    :cond_17
    instance-of v0, p1, Lcom/google/gson/TypeAdapterFactory;

    .line 26
    if-eqz v0, :cond_22

    .line 28
    check-cast p1, Lcom/google/gson/TypeAdapterFactory;

    .line 30
    invoke-interface {p1, p2, p3}, Lcom/google/gson/TypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 33
    move-result-object p1

    .line 34
    goto :goto_71

    .line 35
    :cond_22
    instance-of v0, p1, Lcom/google/gson/JsonSerializer;

    .line 37
    if-nez v0, :cond_57

    .line 39
    instance-of v1, p1, Lcom/google/gson/JsonDeserializer;

    .line 41
    if-eqz v1, :cond_2b

    .line 43
    goto :goto_57

    .line 44
    :cond_2b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 46
    const-string p4, "Invalid attempt to bind an instance of "

    .line 48
    invoke-static {p4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    move-result-object p4

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string p1, " as a @JsonAdapter for "

    .line 65
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p3}, Lcom/google/gson/reflect/TypeToken;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    .line 77
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p2

    .line 88
    :cond_57
    :goto_57
    const/4 v1, 0x0

    .line 89
    if-eqz v0, :cond_5f

    .line 91
    move-object v0, p1

    .line 92
    check-cast v0, Lcom/google/gson/JsonSerializer;

    .line 94
    move-object v3, v0

    .line 95
    goto :goto_60

    .line 96
    :cond_5f
    move-object v3, v1

    .line 97
    :goto_60
    instance-of v0, p1, Lcom/google/gson/JsonDeserializer;

    .line 99
    if-eqz v0, :cond_67

    .line 101
    move-object v1, p1

    .line 102
    check-cast v1, Lcom/google/gson/JsonDeserializer;

    .line 104
    :cond_67
    move-object v4, v1

    .line 105
    new-instance p1, Lcom/google/gson/internal/bind/TreeTypeAdapter;

    .line 107
    const/4 v7, 0x0

    .line 108
    move-object v2, p1

    .line 109
    move-object v5, p2

    .line 110
    move-object v6, p3

    .line 111
    invoke-direct/range {v2 .. v7}, Lcom/google/gson/internal/bind/TreeTypeAdapter;-><init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;)V

    .line 114
    :goto_71
    if-eqz p1, :cond_7d

    .line 116
    invoke-interface {p4}, Lcom/google/gson/annotations/JsonAdapter;->nullSafe()Z

    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_7d

    .line 122
    invoke-virtual {p1}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    .line 125
    move-result-object p1

    .line 126
    :cond_7d
    return-object p1
.end method
