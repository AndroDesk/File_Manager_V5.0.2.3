.class public Landroidx/appcompat/widget/k;
.super Landroid/widget/ImageButton;
.source "AppCompatImageButton.java"


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/d;

.field private mHasLevel:Z

.field private final mImageHelper:Landroidx/appcompat/widget/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lh/a;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-static {p1}, Landroidx/appcompat/widget/v0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/k;->mHasLevel:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/appcompat/widget/t0;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 6
    new-instance p1, Landroidx/appcompat/widget/d;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 7
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/d;->d(Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Landroidx/appcompat/widget/l;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/l;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/k;->mImageHelper:Landroidx/appcompat/widget/l;

    .line 9
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/l;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->a()V

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mImageHelper:Landroidx/appcompat/widget/l;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->a()V

    .line 18
    :cond_11
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->b()Landroid/content/res/ColorStateList;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/d;->c()Landroid/graphics/PorterDuff$Mode;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mImageHelper:Landroidx/appcompat/widget/l;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 6
    iget-object v0, v0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/w0;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    iget-object v0, v0, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    .line 12
    move-object v1, v0

    .line 13
    :cond_c
    return-object v1
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mImageHelper:Landroidx/appcompat/widget/l;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 6
    iget-object v0, v0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/w0;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    iget-object v0, v0, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 12
    move-object v1, v0

    .line 13
    :cond_c
    return-object v1
.end method

.method public hasOverlappingRendering()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mImageHelper:Landroidx/appcompat/widget/l;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 11
    const/4 v1, 0x1

    .line 12
    xor-int/2addr v0, v1

    .line 13
    if-eqz v0, :cond_15

    .line 15
    invoke-super {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_15

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v1, 0x0

    .line 23
    :goto_16
    return v1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/d;->e()V

    .line 11
    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->f(I)V

    .line 11
    :cond_a
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/k;->mImageHelper:Landroidx/appcompat/widget/l;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/l;->a()V

    .line 11
    :cond_a
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mImageHelper:Landroidx/appcompat/widget/l;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    if-eqz p1, :cond_10

    .line 7
    iget-boolean v1, p0, Landroidx/appcompat/widget/k;->mHasLevel:Z

    .line 9
    if-nez v1, :cond_10

    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 14
    move-result v1

    .line 15
    iput v1, v0, Landroidx/appcompat/widget/l;->c:I

    .line 17
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object p1, p0, Landroidx/appcompat/widget/k;->mImageHelper:Landroidx/appcompat/widget/l;

    .line 22
    if-eqz p1, :cond_33

    .line 24
    invoke-virtual {p1}, Landroidx/appcompat/widget/l;->a()V

    .line 27
    iget-boolean p1, p0, Landroidx/appcompat/widget/k;->mHasLevel:Z

    .line 29
    if-nez p1, :cond_33

    .line 31
    iget-object p1, p0, Landroidx/appcompat/widget/k;->mImageHelper:Landroidx/appcompat/widget/l;

    .line 33
    iget-object v0, p1, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_33

    .line 41
    iget-object v0, p1, Landroidx/appcompat/widget/l;->a:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object v0

    .line 47
    iget p1, p1, Landroidx/appcompat/widget/l;->c:I

    .line 49
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 52
    :cond_33
    return-void
.end method

.method public setImageLevel(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/k;->mHasLevel:Z

    .line 7
    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mImageHelper:Landroidx/appcompat/widget/l;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/l;->c(I)V

    .line 6
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/k;->mImageHelper:Landroidx/appcompat/widget/l;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/l;->a()V

    .line 11
    :cond_a
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->h(Landroid/content/res/ColorStateList;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mBackgroundTintHelper:Landroidx/appcompat/widget/d;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d;->i(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mImageHelper:Landroidx/appcompat/widget/l;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    iget-object v1, v0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/w0;

    .line 7
    if-nez v1, :cond_f

    .line 9
    new-instance v1, Landroidx/appcompat/widget/w0;

    .line 11
    invoke-direct {v1}, Landroidx/appcompat/widget/w0;-><init>()V

    .line 14
    iput-object v1, v0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/w0;

    .line 16
    :cond_f
    iget-object v1, v0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/w0;

    .line 18
    iput-object p1, v1, Landroidx/appcompat/widget/w0;->a:Landroid/content/res/ColorStateList;

    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, v1, Landroidx/appcompat/widget/w0;->d:Z

    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->a()V

    .line 26
    :cond_19
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->mImageHelper:Landroidx/appcompat/widget/l;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    iget-object v1, v0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/w0;

    .line 7
    if-nez v1, :cond_f

    .line 9
    new-instance v1, Landroidx/appcompat/widget/w0;

    .line 11
    invoke-direct {v1}, Landroidx/appcompat/widget/w0;-><init>()V

    .line 14
    iput-object v1, v0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/w0;

    .line 16
    :cond_f
    iget-object v1, v0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/w0;

    .line 18
    iput-object p1, v1, Landroidx/appcompat/widget/w0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, v1, Landroidx/appcompat/widget/w0;->c:Z

    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->a()V

    .line 26
    :cond_19
    return-void
.end method
