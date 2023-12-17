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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mUri:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mResource:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mTile:Z

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBytes:[B

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mResource:Ljava/lang/Integer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mTile:Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSHeight:I

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBytes:[B

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mResource:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mTile:Z

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBytes:[B

    return-void
.end method

.method private constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mResource:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mTile:Z

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBytes:[B

    return-void
.end method

.method public static asset(Ljava/lang/String;)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 3

    if-eqz p0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->uri(Ljava/lang/String;)Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Asset name must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bitmap(Landroid/graphics/Bitmap;)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Bitmap must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bytes([B)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;-><init>([B)V

    return-object v0

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Bytes must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static resource(I)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;-><init>(I)V

    return-object v0
.end method

.method private setInvariants()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mTile:Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSWidth:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSHeight:I

    :cond_15
    return-void
.end method

.method public static uri(Landroid/net/Uri;)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;-><init>(Landroid/net/Uri;)V

    return-object v0

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

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_17
    const-string v0, "file:///"

    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1d
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;-><init>(Landroid/net/Uri;)V

    return-object v0

    :cond_27
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Uri must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dimensions(II)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    iput p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSWidth:I

    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSHeight:I

    :cond_8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->setInvariants()V

    return-object p0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getBytes()[B
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mBytes:[B

    return-object v0
.end method

.method public final getResource()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mResource:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSHeight()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSHeight:I

    return v0
.end method

.method public final getSRegion()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getSWidth()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSWidth:I

    return v0
.end method

.method public final getTile()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mTile:Z

    return v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public region(Landroid/graphics/Rect;)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mSRegion:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->setInvariants()V

    return-object p0
.end method

.method public tiling(Z)Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->mTile:Z

    return-object p0
.end method

.method public tilingDisabled()Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->tiling(Z)Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    move-result-object v0

    return-object v0
.end method

.method public tilingEnabled()Lcom/android/fileexplorer/view/viewlarge/ImageSource;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->tiling(Z)Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    move-result-object v0

    return-object v0
.end method
