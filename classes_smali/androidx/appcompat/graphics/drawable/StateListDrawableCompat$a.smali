.class public Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;
.super Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;
.source "StateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public I:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;Landroid/content/res/Resources;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;-><init>(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_a

    iget-object p1, p1, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    goto :goto_11

    :cond_a
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    array-length p1, p1

    new-array p1, p1, [[I

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    :goto_11
    return-void
.end method


# virtual methods
.method public d()V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    array-length v1, v0

    new-array v1, v1, [[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1d

    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    aget-object v2, v2, v0

    if-eqz v2, :cond_17

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1d
    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    return-void
.end method

.method public final e([I)I
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_10

    return v2

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    const/4 p1, -0x1

    return p1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
