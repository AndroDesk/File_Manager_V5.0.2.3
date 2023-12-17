.class Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppIconProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ApplicationIcon"


# instance fields
.field private mCls:Ljava/lang/String;

.field private mNoIcon:Z

.field private mPkg:Ljava/lang/String;

.field private mSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    return-void
.end method

.method private parseSrc(Ljava/lang/String;)V
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    .line 4
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->access$002(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v1

    .line 14
    const-string v2, "invalid src of ApplicationIcon type: "

    .line 16
    const-string v3, "BitmapProvider"

    .line 18
    const/4 v4, 0x1

    .line 19
    if-nez v1, :cond_44

    .line 21
    const-string v1, ","

    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    array-length v5, v1

    .line 28
    const/4 v6, 0x2

    .line 29
    if-ne v5, v6, :cond_27

    .line 31
    aget-object p1, v1, v0

    .line 33
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    .line 35
    aget-object p1, v1, v4

    .line 37
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mCls:Ljava/lang/String;

    .line 39
    goto :goto_58

    .line 40
    :cond_27
    array-length v5, v1

    .line 41
    if-ne v5, v4, :cond_2f

    .line 43
    aget-object p1, v1, v0

    .line 45
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    .line 47
    goto :goto_58

    .line 48
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-boolean v4, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    .line 68
    goto :goto_58

    .line 69
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-boolean v4, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    .line 89
    :goto_58
    return-void
.end method

.method private tryToSetBitmap()V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mCls:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_1e

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Landroid/content/ComponentName;

    .line 19
    iget-object v2, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    .line 21
    iget-object v3, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mCls:Ljava/lang/String;

    .line 23
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object v0

    .line 30
    goto :goto_30

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 33
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 48
    move-result-object v0

    .line 49
    :goto_30
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 51
    if-eqz v1, :cond_40

    .line 53
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 55
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 57
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 64
    goto :goto_7a

    .line 65
    :cond_40
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 72
    move-result v2

    .line 73
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 76
    move-result v3

    .line 77
    const/4 v4, -0x1

    .line 78
    if-eq v3, v4, :cond_52

    .line 80
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 82
    goto :goto_54

    .line 83
    :cond_52
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 85
    :goto_54
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 88
    move-result-object v3

    .line 89
    new-instance v4, Landroid/graphics/Canvas;

    .line 91
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    const/4 v5, 0x0

    .line 95
    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 103
    invoke-virtual {v0, v3}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_69} :catch_6a

    .line 106
    goto :goto_7a

    .line 107
    :catch_6a
    const-string v0, "fail to get icon for src of ApplicationIcon type: "

    .line 109
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    .line 115
    const-string v2, "BitmapProvider"

    .line 117
    invoke-static {v0, v1, v2}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    .line 123
    :goto_7a
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    .line 3
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_d

    .line 9
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    .line 11
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->parseSrc(Ljava/lang/String;)V

    .line 14
    :cond_d
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 16
    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1c

    .line 22
    iget-boolean p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    .line 24
    if-nez p1, :cond_1c

    .line 26
    invoke-direct {p0}, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->tryToSetBitmap()V

    .line 29
    :cond_1c
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 31
    return-object p1
.end method

.method public init(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->parseSrc(Ljava/lang/String;)V

    .line 9
    return-void
.end method
