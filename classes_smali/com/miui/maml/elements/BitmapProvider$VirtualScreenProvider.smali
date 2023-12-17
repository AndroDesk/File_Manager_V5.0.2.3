.class Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VirtualScreenProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mVirtualScreen:Lcom/miui/maml/elements/VirtualScreen;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 3
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lcom/miui/maml/elements/VirtualScreen;

    .line 5
    if-eqz p2, :cond_b

    .line 7
    invoke-virtual {p2}, Lcom/miui/maml/elements/VirtualScreen;->getBitmap()Landroid/graphics/Bitmap;

    .line 10
    move-result-object p2

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p2, 0x0

    .line 13
    :goto_c
    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 16
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 18
    return-object p1
.end method

.method public init(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 9
    move-result-object p1

    .line 10
    instance-of v0, p1, Lcom/miui/maml/elements/VirtualScreen;

    .line 12
    if-eqz v0, :cond_11

    .line 14
    check-cast p1, Lcom/miui/maml/elements/VirtualScreen;

    .line 16
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lcom/miui/maml/elements/VirtualScreen;

    .line 18
    :cond_11
    return-void
.end method
