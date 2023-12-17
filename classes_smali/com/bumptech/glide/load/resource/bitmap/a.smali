.class public final synthetic Lcom/bumptech/glide/load/resource/bitmap/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static bridge synthetic a(Landroid/media/MediaMetadataRetriever;JIII)Landroid/graphics/Bitmap;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
