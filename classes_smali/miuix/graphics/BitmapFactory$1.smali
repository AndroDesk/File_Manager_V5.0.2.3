.class Lmiuix/graphics/BitmapFactory$1;
.super Landroid/content/ContextWrapper;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/graphics/BitmapFactory;->fastblur_v17(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 1

    return-object p0
.end method
