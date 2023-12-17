.class public final Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;
.super Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public J:Landroidx/collection/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/d<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public K:Landroidx/collection/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/g<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;Landroid/content/res/Resources;)V

    .line 4
    if-eqz p1, :cond_e

    .line 6
    iget-object p2, p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->J:Landroidx/collection/d;

    .line 8
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->J:Landroidx/collection/d;

    .line 10
    iget-object p1, p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->K:Landroidx/collection/g;

    .line 12
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->K:Landroidx/collection/g;

    .line 14
    goto :goto_1c

    .line 15
    :cond_e
    new-instance p1, Landroidx/collection/d;

    .line 17
    invoke-direct {p1}, Landroidx/collection/d;-><init>()V

    .line 20
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->J:Landroidx/collection/d;

    .line 22
    new-instance p1, Landroidx/collection/g;

    .line 24
    invoke-direct {p1}, Landroidx/collection/g;-><init>()V

    .line 27
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->K:Landroidx/collection/g;

    .line 29
    :goto_1c
    return-void
.end method


# virtual methods
.method public final d()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->J:Landroidx/collection/d;

    .line 3
    invoke-virtual {v0}, Landroidx/collection/d;->b()Landroidx/collection/d;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->J:Landroidx/collection/d;

    .line 9
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->K:Landroidx/collection/g;

    .line 11
    invoke-virtual {v0}, Landroidx/collection/g;->b()Landroidx/collection/g;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;->K:Landroidx/collection/g;

    .line 17
    return-void
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 2
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$b;Landroid/content/res/Resources;)V

    return-object v0
.end method
