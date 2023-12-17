.class public abstract Landroidx/core/content/res/ResourcesCompat$FontCallback;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/ResourcesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FontCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/core/content/res/ResourcesCompat$FontCallback;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->lambda$callbackFailAsync$1(I)V

    return-void
.end method

.method public static synthetic b(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/graphics/Typeface;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->lambda$callbackSuccessAsync$0(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static getHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    .line 1
    if-nez p0, :cond_b

    .line 3
    new-instance p0, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    :cond_b
    return-object p0
.end method

.method private synthetic lambda$callbackFailAsync$1(I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    .line 4
    return-void
.end method

.method private synthetic lambda$callbackSuccessAsync$0(Landroid/graphics/Typeface;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final callbackFailAsync(ILandroid/os/Handler;)V
    .registers 4

    .line 1
    invoke-static {p2}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->getHandler(Landroid/os/Handler;)Landroid/os/Handler;

    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Landroidx/core/content/res/a;

    .line 7
    invoke-direct {v0, p0, p1}, Landroidx/core/content/res/a;-><init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;I)V

    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public final callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V
    .registers 5

    .line 1
    invoke-static {p2}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->getHandler(Landroid/os/Handler;)Landroid/os/Handler;

    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Landroidx/appcompat/app/s;

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1, p0, p1}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public abstract onFontRetrievalFailed(I)V
.end method

.method public abstract onFontRetrieved(Landroid/graphics/Typeface;)V
.end method
