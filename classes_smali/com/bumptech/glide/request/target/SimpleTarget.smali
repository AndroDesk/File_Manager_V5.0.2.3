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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0, v0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    iput p1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    iput p2, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    return-void
.end method


# virtual methods
.method public final getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 5

    iget v0, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    iget v1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    iget v1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/request/target/SimpleTarget;->height:I

    const-string v2, ", either provide dimensions in the constructor or call override()"

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 2

    return-void
.end method