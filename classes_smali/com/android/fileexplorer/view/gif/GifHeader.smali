.class Lcom/android/fileexplorer/view/gif/GifHeader;
.super Ljava/lang/Object;
.source "GifHeader.java"


# instance fields
.field public bgColor:I

.field public bgIndex:I

.field public currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

.field public frameCount:I

.field public frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/gif/GifFrame;",
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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeader;->frames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifHeader;->height:I

    return v0
.end method

.method public getNumFrames()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifHeader;->width:I

    return v0
.end method
