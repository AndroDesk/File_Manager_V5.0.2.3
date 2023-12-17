.class public interface abstract Lmiuix/animation/ITargetCreator;
.super Ljava/lang/Object;
.source "ITargetCreator.java"


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
.method public abstract createTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lmiuix/animation/IAnimTarget;"
        }
    .end annotation
.end method
