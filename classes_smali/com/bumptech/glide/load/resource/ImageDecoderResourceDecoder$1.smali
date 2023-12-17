.class Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;
.super Ljava/lang/Object;
.source "ImageDecoderResourceDecoder.java"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;->decode(Landroid/graphics/ImageDecoder$Source;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;

.field public final synthetic val$decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field public final synthetic val$isHardwareConfigAllowed:Z

.field public final synthetic val$preferredColorSpace:Lcom/bumptech/glide/load/PreferredColorSpace;

.field public final synthetic val$requestedHeight:I

.field public final synthetic val$requestedWidth:I

.field public final synthetic val$strategy:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;IIZLcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/PreferredColorSpace;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->this$0:Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;

    .line 3
    iput p2, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$requestedWidth:I

    .line 5
    iput p3, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$requestedHeight:I

    .line 7
    iput-boolean p4, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$isHardwareConfigAllowed:Z

    .line 9
    iput-object p5, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 11
    iput-object p6, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$strategy:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 13
    iput-object p7, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$preferredColorSpace:Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->this$0:Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;

    .line 3
    iget-object p3, p3, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 5
    iget v0, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$requestedWidth:I

    .line 7
    iget v1, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$requestedHeight:I

    .line 9
    iget-boolean v2, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$isHardwareConfigAllowed:Z

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowed(IIZZ)Z

    .line 15
    move-result p3

    .line 16
    const/4 v0, 0x1

    .line 17
    if-eqz p3, :cond_17

    .line 19
    const/4 p3, 0x3

    .line 20
    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 23
    goto :goto_1a

    .line 24
    :cond_17
    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 27
    :goto_1a
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 29
    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    .line 31
    if-ne p3, v1, :cond_23

    .line 33
    invoke-virtual {p1, v3}, Landroid/graphics/ImageDecoder;->setMemorySizePolicy(I)V

    .line 36
    :cond_23
    new-instance p3, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1$1;

    .line 38
    invoke-direct {p3, p0}, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1$1;-><init>(Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;)V

    .line 41
    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    .line 44
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    .line 47
    move-result-object p3

    .line 48
    iget v1, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$requestedWidth:I

    .line 50
    const/high16 v2, -0x80000000

    .line 52
    if-ne v1, v2, :cond_39

    .line 54
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 57
    move-result v1

    .line 58
    :cond_39
    iget v4, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$requestedHeight:I

    .line 60
    if-ne v4, v2, :cond_41

    .line 62
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 65
    move-result v4

    .line 66
    :cond_41
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$strategy:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 68
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 71
    move-result v5

    .line 72
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 75
    move-result v6

    .line 76
    invoke-virtual {v2, v5, v6, v1, v4}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    .line 79
    move-result v1

    .line 80
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 83
    move-result v2

    .line 84
    int-to-float v2, v2

    .line 85
    mul-float/2addr v2, v1

    .line 86
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 89
    move-result v2

    .line 90
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 93
    move-result v4

    .line 94
    int-to-float v4, v4

    .line 95
    mul-float/2addr v4, v1

    .line 96
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 99
    move-result v4

    .line 100
    const/4 v5, 0x2

    .line 101
    const-string v6, "ImageDecoder"

    .line 103
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_a2

    .line 109
    const-string v5, "Resizing from ["

    .line 111
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 118
    move-result v7

    .line 119
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v7, "x"

    .line 124
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 130
    move-result p3

    .line 131
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string p3, "] to ["

    .line 136
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string p3, "] scaleFactor: "

    .line 150
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object p3

    .line 160
    invoke-static {v6, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_a2
    invoke-virtual {p1, v2, v4}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 166
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 168
    const/16 v1, 0x1c

    .line 170
    if-lt p3, v1, :cond_d1

    .line 172
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/ImageDecoderResourceDecoder$1;->val$preferredColorSpace:Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 174
    sget-object v1, Lcom/bumptech/glide/load/PreferredColorSpace;->DISPLAY_P3:Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 176
    if-ne p3, v1, :cond_c2

    .line 178
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 181
    move-result-object p3

    .line 182
    if-eqz p3, :cond_c2

    .line 184
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    .line 191
    move-result p2

    .line 192
    if-eqz p2, :cond_c2

    .line 194
    move v3, v0

    .line 195
    :cond_c2
    if-eqz v3, :cond_c7

    .line 197
    sget-object p2, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    .line 199
    goto :goto_c9

    .line 200
    :cond_c7
    sget-object p2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 202
    :goto_c9
    invoke-static {p2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 205
    move-result-object p2

    .line 206
    invoke-virtual {p1, p2}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    .line 209
    goto :goto_de

    .line 210
    :cond_d1
    const/16 p2, 0x1a

    .line 212
    if-lt p3, p2, :cond_de

    .line 214
    sget-object p2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 216
    invoke-static {p2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 219
    move-result-object p2

    .line 220
    invoke-virtual {p1, p2}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    .line 223
    :cond_de
    :goto_de
    return-void
.end method
