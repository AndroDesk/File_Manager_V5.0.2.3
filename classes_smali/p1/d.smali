.class public interface abstract Lp1/d;
.super Ljava/lang/Object;
.source "IKssRequestor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lp1/g$a;",
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
.method public abstract commitUpload(Ljava/io/File;Lp1/g$a;Lr1/e;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;",
            "Lr1/e;",
            ")V"
        }
    .end annotation
.end method

.method public abstract requestDownload(Lp1/g$a;)Lp1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lp1/c;"
        }
    .end annotation
.end method

.method public abstract requestUpload(Ljava/io/File;Lp1/g$a;Lr1/k;)Lp1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;",
            "Lr1/k;",
            ")",
            "Lp1/e;"
        }
    .end annotation
.end method
