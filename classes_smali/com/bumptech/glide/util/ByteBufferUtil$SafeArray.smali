.class final Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/ByteBufferUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SafeArray"
.end annotation


# instance fields
.field public final data:[B

.field public final limit:I

.field public final offset:I


# direct methods
.method public constructor <init>([BII)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->data:[B

    .line 6
    iput p2, p0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    .line 8
    iput p3, p0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->limit:I

    .line 10
    return-void
.end method
