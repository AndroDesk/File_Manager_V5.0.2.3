.class public interface abstract Lcom/google/gson/ExclusionStrategy;
.super Ljava/lang/Object;
.source "ExclusionStrategy.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract shouldSkipClass(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract shouldSkipField(Lcom/google/gson/FieldAttributes;)Z
.end method
