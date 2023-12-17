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
.method public constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;Landroid/content/res/Resources;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;-><init>(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;Landroid/content/res/Resources;)V

    .line 4
    if-eqz p1, :cond_a

    .line 6
    iget-object p1, p1, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    .line 8
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    .line 10
    goto :goto_11

    .line 11
    :cond_a
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 13
    array-length p1, p1

    .line 14
    new-array p1, p1, [[I

    .line 16
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    .line 18
    :goto_11
    return-void
.end method


# virtual methods
.method public d()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    .line 3
    array-length v1, v0

    .line 4
    new-array v1, v1, [[I

    .line 6
    array-length v0, v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_8
    if-ltz v0, :cond_1d

    .line 11
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    .line 13
    aget-object v2, v2, v0

    .line 15
    if-eqz v2, :cond_17

    .line 17
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, [I

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v2, 0x0

    .line 25
    :goto_18
    aput-object v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 29
    goto :goto_8

    .line 30
    :cond_1d
    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    .line 32
    return-void
.end method

.method public final e([I)I
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;->I:[[I

    .line 3
    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_5
    if-ge v2, v1, :cond_13

    .line 8
    aget-object v3, v0, v2

    .line 10
    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_10

    .line 16
    return v2

    .line 17
    :cond_10
    add-int/lit8 v2, v2, 0x1

    .line 19
    goto :goto_5

    .line 20
    :cond_13
    const/4 p1, -0x1

    .line 21
    return p1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 2
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
