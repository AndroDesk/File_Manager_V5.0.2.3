.class public Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;
.super Ljava/lang/Object;
.source "ByteBufferRewinder.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataRewinder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataRewinder$Factory<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;
    .registers 2

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;->build(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/data/DataRewinder;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/data/DataRewinder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/bumptech/glide/load/data/DataRewinder<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/nio/ByteBuffer;

    .line 3
    return-object v0
.end method
