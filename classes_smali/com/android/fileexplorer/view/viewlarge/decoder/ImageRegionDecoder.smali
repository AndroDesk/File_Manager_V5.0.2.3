.class public interface abstract Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;
.super Ljava/lang/Object;
.source "ImageRegionDecoder.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract decodeRegion(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
.end method

.method public abstract init(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Point;
.end method

.method public abstract isReady()Z
.end method

.method public abstract recycle()V
.end method
