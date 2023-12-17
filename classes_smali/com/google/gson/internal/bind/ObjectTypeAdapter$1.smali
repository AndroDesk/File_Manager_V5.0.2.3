.class Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/ObjectTypeAdapter;->newFactory(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$toNumberStrategy:Lcom/google/gson/ToNumberStrategy;


# direct methods
.method public constructor <init>(Lcom/google/gson/ToNumberStrategy;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;->val$toNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    move-result-object p2

    .line 5
    const-class v0, Ljava/lang/Object;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-ne p2, v0, :cond_11

    .line 10
    new-instance p2, Lcom/google/gson/internal/bind/ObjectTypeAdapter;

    .line 12
    iget-object v0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;->val$toNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 14
    invoke-direct {p2, p1, v0, v1}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/ToNumberStrategy;Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;)V

    .line 17
    return-object p2

    .line 18
    :cond_11
    return-object v1
.end method
