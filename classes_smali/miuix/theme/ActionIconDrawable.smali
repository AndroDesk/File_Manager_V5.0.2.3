.class public Lmiuix/theme/ActionIconDrawable;
.super Landroid/graphics/drawable/VectorDrawable;
.source "ActionIconDrawable.java"


# static fields
.field private static final STATE_DISABLED:[I

.field private static final STATE_PRESSED:[I


# instance fields
.field private mActionIconHeight:I

.field private mActionIconWidth:I

.field private mDisabledAlpha:F

.field private mNormalAlpha:F

.field private mPressedAlpha:F


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, -0x101009e

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Lmiuix/theme/ActionIconDrawable;->STATE_DISABLED:[I

    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_14

    .line 18
    sput-object v0, Lmiuix/theme/ActionIconDrawable;->STATE_PRESSED:[I

    .line 20
    return-void

    .line 21
    :array_14
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    .line 4
    const v0, 0x3f4ccccd  # 0.8f

    .line 7
    iput v0, p0, Lmiuix/theme/ActionIconDrawable;->mNormalAlpha:F

    .line 9
    const/high16 v0, 0x3f000000  # 0.5f

    .line 11
    iput v0, p0, Lmiuix/theme/ActionIconDrawable;->mPressedAlpha:F

    .line 13
    const v0, 0x3e99999a  # 0.3f

    .line 16
    iput v0, p0, Lmiuix/theme/ActionIconDrawable;->mDisabledAlpha:F

    .line 18
    return-void
.end method

.method private init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_a

    .line 4
    sget-object p1, Lmiuix/theme/R$styleable;->ActionIconDrawable:[I

    .line 6
    invoke-virtual {p3, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    goto :goto_10

    .line 11
    :cond_a
    sget-object p3, Lmiuix/theme/R$styleable;->ActionIconDrawable:[I

    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 16
    move-result-object p1

    .line 17
    :goto_10
    sget p2, Lmiuix/theme/R$styleable;->ActionIconDrawable_actionIconNormalAlpha:I

    .line 19
    const/4 p3, 0x0

    .line 20
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 23
    move-result p2

    .line 24
    iput p2, p0, Lmiuix/theme/ActionIconDrawable;->mNormalAlpha:F

    .line 26
    sget p2, Lmiuix/theme/R$styleable;->ActionIconDrawable_actionIconPressedAlpha:I

    .line 28
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 31
    move-result p2

    .line 32
    iput p2, p0, Lmiuix/theme/ActionIconDrawable;->mPressedAlpha:F

    .line 34
    sget p2, Lmiuix/theme/R$styleable;->ActionIconDrawable_actionIconDisabledAlpha:I

    .line 36
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 39
    move-result p2

    .line 40
    iput p2, p0, Lmiuix/theme/ActionIconDrawable;->mDisabledAlpha:F

    .line 42
    sget p2, Lmiuix/theme/R$styleable;->ActionIconDrawable_actionIconWidth:I

    .line 44
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 47
    move-result p2

    .line 48
    iput p2, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconWidth:I

    .line 50
    sget p2, Lmiuix/theme/R$styleable;->ActionIconDrawable_actionIconHeight:I

    .line 52
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 55
    move-result p2

    .line 56
    iput p2, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconHeight:I

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    iget p1, p0, Lmiuix/theme/ActionIconDrawable;->mNormalAlpha:F

    .line 63
    invoke-direct {p0, p1}, Lmiuix/theme/ActionIconDrawable;->setAlphaF(F)V

    .line 66
    return-void
.end method

.method private setAlphaF(F)V
    .registers 3

    .line 1
    const/high16 v0, 0x437f0000  # 255.0f

    .line 3
    mul-float/2addr p1, v0

    .line 4
    float-to-int p1, p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    return-void
.end method

.method private toDisabledState()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mDisabledAlpha:F

    .line 3
    invoke-direct {p0, v0}, Lmiuix/theme/ActionIconDrawable;->setAlphaF(F)V

    .line 6
    const/4 v0, 0x1

    .line 7
    return v0
.end method

.method private toNormalState()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mNormalAlpha:F

    .line 3
    invoke-direct {p0, v0}, Lmiuix/theme/ActionIconDrawable;->setAlphaF(F)V

    .line 6
    const/4 v0, 0x1

    .line 7
    return v0
.end method

.method private toPressedState()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mPressedAlpha:F

    .line 3
    invoke-direct {p0, v0}, Lmiuix/theme/ActionIconDrawable;->setAlphaF(F)V

    .line 6
    const/4 v0, 0x1

    .line 7
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconWidth:I

    .line 3
    if-eqz v0, :cond_34

    .line 5
    iget v1, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconHeight:I

    .line 7
    if-eqz v1, :cond_34

    .line 9
    invoke-super {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    shr-int/lit8 v0, v0, 0x1

    .line 16
    int-to-float v0, v0

    .line 17
    iget v1, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconHeight:I

    .line 19
    invoke-super {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    .line 22
    move-result v2

    .line 23
    sub-int/2addr v1, v2

    .line 24
    shr-int/lit8 v1, v1, 0x1

    .line 26
    int-to-float v1, v1

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 30
    invoke-super {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    .line 33
    move-result v0

    .line 34
    int-to-float v0, v0

    .line 35
    iget v1, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconWidth:I

    .line 37
    int-to-float v1, v1

    .line 38
    div-float/2addr v0, v1

    .line 39
    invoke-super {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    .line 42
    move-result v1

    .line 43
    int-to-float v1, v1

    .line 44
    iget v2, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconHeight:I

    .line 46
    int-to-float v2, v2

    .line 47
    div-float/2addr v1, v2

    .line 48
    const/high16 v2, 0x3f000000  # 0.5f

    .line 50
    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 53
    :cond_34
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 56
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconHeight:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/theme/ActionIconDrawable;->mActionIconWidth:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lmiuix/theme/ActionIconDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 7
    return-void
.end method

.method public isStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onStateChange([I)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->onStateChange([I)Z

    .line 4
    sget-object v0, Lmiuix/theme/ActionIconDrawable;->STATE_DISABLED:[I

    .line 6
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_10

    .line 12
    invoke-direct {p0}, Lmiuix/theme/ActionIconDrawable;->toDisabledState()Z

    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_10
    sget-object v0, Lmiuix/theme/ActionIconDrawable;->STATE_PRESSED:[I

    .line 19
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1d

    .line 25
    invoke-direct {p0}, Lmiuix/theme/ActionIconDrawable;->toPressedState()Z

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1d
    invoke-direct {p0}, Lmiuix/theme/ActionIconDrawable;->toNormalState()Z

    .line 33
    move-result p1

    .line 34
    return p1
.end method
