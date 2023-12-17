.class public abstract Lcom/bumptech/glide/request/target/SimpleTarget;
.super Lcom/bumptech/glide/request/target/BaseTarget;
.source "SimpleTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/BaseTarget<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/high16 v0, -0x80000000

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    .line 3
    iput p1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    .line 4
    iput p2, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    return-void
.end method


# virtual methods
.method public final getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    .line 3
    iget v1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    .line 5
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    iget v0, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    .line 13
    iget v1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 18
    return-void

    .line 19
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string v0, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    .line 23
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v0

    .line 27
    iget v1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, " and height: "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    .line 39
    const-string v2, ", either provide dimensions in the constructor or call override()"

    .line 41
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1
.end method

.method public removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 2

    return-void
.end method
