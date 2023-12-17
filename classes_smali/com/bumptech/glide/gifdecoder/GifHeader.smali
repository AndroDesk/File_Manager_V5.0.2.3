.class public Lcom/bumptech/glide/gifdecoder/GifHeader;
.super Ljava/lang/Object;
.source "GifHeader.java"


# static fields
.field public static final NETSCAPE_LOOP_COUNT_DOES_NOT_EXIST:I = -0x1

.field public static final NETSCAPE_LOOP_COUNT_FOREVER:I


# instance fields
.field public bgColor:I

.field public bgIndex:I

.field public currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

.field public frameCount:I

.field public final frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/gifdecoder/GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field public gct:[I

.field public gctFlag:Z

.field public gctSize:I

.field public height:I

.field public loopCount:I

.field public pixelAspect:I

.field public status:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 10
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    .line 19
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    .line 22
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 3
    return v0
.end method

.method public getNumFrames()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 3
    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    .line 3
    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 3
    return v0
.end method
