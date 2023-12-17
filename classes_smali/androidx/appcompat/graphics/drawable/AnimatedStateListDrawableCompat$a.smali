.class public final Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$a;
.super Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/graphics/drawable/Animatable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Animatable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$f;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$a;->a:Landroid/graphics/drawable/Animatable;

    .line 6
    return-void
.end method


# virtual methods
.method public final c()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$a;->a:Landroid/graphics/drawable/Animatable;

    .line 3
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 6
    return-void
.end method

.method public final d()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$a;->a:Landroid/graphics/drawable/Animatable;

    .line 3
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 6
    return-void
.end method
