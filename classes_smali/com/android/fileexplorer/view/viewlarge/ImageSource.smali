.class public final Lcom/android/fileexplorer/view/viewlarge/ImageSource;
.super Ljava/lang/Object;
.source "ImageSource.java"


# static fields
.field public static final ASSET_SCHEME:Ljava/lang/String; = "file:///android_asset/"

.field public static final FILE_SCHEME:Ljava/lang/String; = "file:///"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBytes:[B

.field private final mResource:Ljava/lang/Integer;

.field private mSHeight:I

.field private mSRegion:Landroid/graphics/Rect;

.field private mSWidth:I

.field private mTile:Z

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(I)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBitmap:Landroid/graphics/Bitmap;

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mUri:Landroid/net/Uri;

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mResource:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mTile:Z

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBytes:[B

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mUri:Landroid/net/Uri;

    .line 4
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mResource:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mTile:Z

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSWidth:I

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSHeight:I

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBytes:[B

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBitmap:Landroid/graphics/Bitmap;

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mUri:Landroid/net/Uri;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mResource:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mTile:Z

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBytes:[B

    return-void
.end method

.method private constructor <init>([B)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBitmap:Landroid/graphics/Bitmap;

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mUri:Landroid/net/Uri;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mResource:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mTile:Z

    .line 26
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBytes:[B

    return-void
.end method

.method public static asset(Ljava/lang/String;)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 3

    .line 1
    if-eqz p0, :cond_18

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v1, "file:///android_asset/"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->uri(Ljava/lang/String;)Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    .line 27
    const-string v0, "Asset name must not be null"

    .line 29
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
.end method

.method public static bitmap(Landroid/graphics/Bitmap;)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    .line 1
    if-eqz p0, :cond_8

    .line 3
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    return-object v0

    .line 9
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    .line 11
    const-string v0, "Bitmap must not be null"

    .line 13
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0
.end method

.method public static bytes([B)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    .line 1
    if-eqz p0, :cond_8

    .line 3
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;-><init>([B)V

    .line 8
    return-object v0

    .line 9
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    .line 11
    const-string v0, "Bytes must not be null"

    .line 13
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0
.end method

.method public static resource(I)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;-><init>(I)V

    .line 6
    return-object v0
.end method

.method private setInvariants()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSRegion:Landroid/graphics/Rect;

    .line 3
    if-eqz v0, :cond_15

    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mTile:Z

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSWidth:I

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSRegion:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSHeight:I

    .line 22
    :cond_15
    return-void
.end method

.method public static uri(Landroid/net/Uri;)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    if-eqz p0, :cond_8

    .line 12
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;-><init>(Landroid/net/Uri;)V

    return-object v0

    .line 13
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Uri must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static uri(Ljava/lang/String;)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    if-eqz p0, :cond_27

    const-string v0, "://"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "/"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_17
    const-string v0, "file:///"

    .line 4
    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    :cond_1d
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;-><init>(Landroid/net/Uri;)V

    return-object v0

    .line 6
    :cond_27
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Uri must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dimensions(II)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    if-nez v0, :cond_8

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSWidth:I

    .line 7
    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSHeight:I

    .line 9
    :cond_8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->setInvariants()V

    .line 12
    return-object p0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    return-object v0
.end method

.method public final getBytes()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBytes:[B

    .line 3
    return-object v0
.end method

.method public final getResource()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mResource:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public final getSHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSHeight:I

    .line 3
    return v0
.end method

.method public final getSRegion()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSRegion:Landroid/graphics/Rect;

    .line 3
    return-object v0
.end method

.method public final getSWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSWidth:I

    .line 3
    return v0
.end method

.method public final getTile()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mTile:Z

    .line 3
    return v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mUri:Landroid/net/Uri;

    .line 3
    return-object v0
.end method

.method public region(Landroid/graphics/Rect;)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSRegion:Landroid/graphics/Rect;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->setInvariants()V

    .line 6
    return-object p0
.end method

.method public tiling(Z)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mTile:Z

    .line 3
    return-object p0
.end method

.method public tilingDisabled()Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->tiling(Z)Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public tilingEnabled()Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->tiling(Z)Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method
