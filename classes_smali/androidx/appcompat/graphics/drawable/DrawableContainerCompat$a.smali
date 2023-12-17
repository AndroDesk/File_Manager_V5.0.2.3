.class public final Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;
.super Ljava/lang/Object;
.source "DrawableContainerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->d(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;


# direct methods
.method public constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->a(Z)V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;->a:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    return-void
.end method
