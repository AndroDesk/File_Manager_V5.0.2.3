.class Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory$1;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;->build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory$1;->this$0:Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic convert([B)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory$1;->convert([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public convert([B)Ljava/nio/ByteBuffer;
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
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
