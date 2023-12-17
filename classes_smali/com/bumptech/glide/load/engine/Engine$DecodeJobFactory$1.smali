.class Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory$1;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Factory<",
        "Lcom/bumptech/glide/load/engine/DecodeJob<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public create()Lcom/bumptech/glide/load/engine/DecodeJob;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    iget-object v2, v1, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->pool:Ll0/d;

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Ll0/d;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory$1;->create()Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v0

    return-object v0
.end method
