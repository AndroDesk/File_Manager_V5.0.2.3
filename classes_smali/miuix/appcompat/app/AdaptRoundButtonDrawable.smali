.class public Lmiuix/appcompat/app/AdaptRoundButtonDrawable;
.super Lmiuix/smooth/SmoothContainerDrawable2;
.source "AdaptRoundButtonDrawable.java"


# instance fields
.field private mCapsuleRadius:F

.field private mRadius:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>()V

    .line 4
    return-void
.end method

.method private init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5

    .line 1
    sget-object v0, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable:[I

    .line 3
    invoke-static {p1, p3, p2, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    sget p2, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable_buttonRadius:I

    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 13
    move-result p2

    .line 14
    iput p2, p0, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->mRadius:F

    .line 16
    sget p2, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable_buttonCapsuleRadius:I

    .line 18
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 21
    move-result p2

    .line 22
    iput p2, p0, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->mCapsuleRadius:F

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothContainerDrawable2;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 7
    invoke-static {}, Lmiuix/core/util/RomUtils;->isMiuiXVSdkSupported()Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_12

    .line 13
    iget p1, p0, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->mRadius:F

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    .line 18
    goto :goto_17

    .line 19
    :cond_12
    iget p1, p0, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->mCapsuleRadius:F

    .line 21
    invoke-virtual {p0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    .line 24
    :goto_17
    return-void
.end method
