.class public interface abstract Lcom/google/firebase/components/ComponentFactory;
.super Ljava/lang/Object;
.source "ComponentFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentContainer;",
            ")TT;"
        }
    .end annotation
.end method
