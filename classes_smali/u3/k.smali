.class public interface abstract Lu3/k;
.super Ljava/lang/Object;
.source "MainDispatcherFactory.kt"


# virtual methods
.method public abstract createDispatcher(Ljava/util/List;)Lp3/r0;
    .param p1  # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lu3/k;",
            ">;)",
            "Lp3/r0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getLoadPriority()I
.end method

.method public abstract hintOnError()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
