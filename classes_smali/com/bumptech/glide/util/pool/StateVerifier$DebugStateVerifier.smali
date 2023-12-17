.class Lcom/bumptech/glide/util/pool/StateVerifier$DebugStateVerifier;
.super Lcom/bumptech/glide/util/pool/StateVerifier;
.source "StateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/pool/StateVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugStateVerifier"
.end annotation


# instance fields
.field private volatile recycledAtStackTraceException:Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/bumptech/glide/util/pool/StateVerifier;-><init>(Lcom/bumptech/glide/util/pool/StateVerifier$1;)V

    .line 5
    return-void
.end method


# virtual methods
.method public setRecycled(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_c

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 5
    const-string v0, "Released"

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/bumptech/glide/util/pool/StateVerifier$DebugStateVerifier;->recycledAtStackTraceException:Ljava/lang/RuntimeException;

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/bumptech/glide/util/pool/StateVerifier$DebugStateVerifier;->recycledAtStackTraceException:Ljava/lang/RuntimeException;

    .line 16
    :goto_f
    return-void
.end method

.method public throwIfRecycled()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/util/pool/StateVerifier$DebugStateVerifier;->recycledAtStackTraceException:Ljava/lang/RuntimeException;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/util/pool/StateVerifier$DebugStateVerifier;->recycledAtStackTraceException:Ljava/lang/RuntimeException;

    .line 10
    const-string v2, "Already released"

    .line 12
    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    throw v0
.end method
