.class public Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapHolderProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapHolder"


# instance fields
.field private mBitmapHolder:Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

.field private mId:Ljava/lang/String;


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
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

    .line 3
    if-eqz p1, :cond_b

    .line 5
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;->mId:Ljava/lang/String;

    .line 7
    invoke-interface {p1, p2}, Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;->getBitmap(Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    return-object p1
.end method

.method public init(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    const/16 v0, 0x2e

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-ne v0, v1, :cond_14

    .line 20
    goto :goto_22

    .line 21
    :cond_14
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;->mId:Ljava/lang/String;

    .line 34
    move-object p1, v1

    .line 35
    :goto_22
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 37
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 40
    move-result-object p1

    .line 41
    instance-of v0, p1, Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

    .line 43
    if-eqz v0, :cond_30

    .line 45
    check-cast p1, Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

    .line 47
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;

    .line 49
    :cond_30
    return-void
.end method
