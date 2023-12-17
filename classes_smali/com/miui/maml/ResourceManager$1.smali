.class final Lcom/miui/maml/ResourceManager$1;
.super Landroid/util/LruCache;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/miui/maml/ResourceManager$BitmapInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/miui/maml/ResourceManager$BitmapInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ResourceManager$1;->sizeOf(Ljava/lang/String;Lcom/miui/maml/ResourceManager$BitmapInfo;)I

    move-result p1

    return p1
.end method

.method public sizeOf(Ljava/lang/String;Lcom/miui/maml/ResourceManager$BitmapInfo;)I
    .registers 3

    if-eqz p2, :cond_c

    .line 2
    iget-object p1, p2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_7

    goto :goto_c

    .line 3
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    return p1

    :cond_c
    :goto_c
    const/4 p1, 0x0

    return p1
.end method
