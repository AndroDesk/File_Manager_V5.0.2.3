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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 5

    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lcom/miui/maml/elements/VirtualScreen;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/miui/maml/elements/VirtualScreen;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p1
.end method

.method public init(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/maml/elements/VirtualScreen;

    if-eqz v0, :cond_11

    check-cast p1, Lcom/miui/maml/elements/VirtualScreen;

    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lcom/miui/maml/elements/VirtualScreen;

    :cond_11
    return-void
.end method
