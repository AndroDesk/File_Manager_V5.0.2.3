.class Lcom/google/gson/internal/bind/TypeAdapters$28;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 4
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
    const-class p1, Ljava/lang/Enum;

    .line 3
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1f

    .line 13
    if-ne p2, p1, :cond_f

    .line 15
    goto :goto_1f

    .line 16
    :cond_f
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_19

    .line 22
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 25
    move-result-object p2

    .line 26
    :cond_19
    new-instance p1, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;

    .line 28
    invoke-direct {p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;-><init>(Ljava/lang/Class;)V

    .line 31
    return-object p1

    .line 32
    :cond_1f
    :goto_1f
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method
