.class public Lmiuix/appcompat/app/ButtonForegroundDrawable;
.super Lmiuix/appcompat/app/AlphaBlendingDrawable;
.source "ButtonForegroundDrawable.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;-><init>()V

    .line 4
    return-void
.end method

.method private init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_a

    .line 4
    sget-object p1, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable:[I

    .line 6
    invoke-virtual {p3, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    goto :goto_10

    .line 11
    :cond_a
    sget-object p3, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable:[I

    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 16
    move-result-object p1

    .line 17
    :goto_10
    sget p2, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable_buttonRadius:I

    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 22
    move-result p2

    .line 23
    sget p3, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable_buttonCapsuleRadius:I

    .line 25
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 28
    move-result p3

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    invoke-static {}, Lmiuix/core/util/RomUtils;->isMiuiXVSdkSupported()Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_29

    .line 38
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setRadius(I)V

    .line 41
    goto :goto_2c

    .line 42
    :cond_29
    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setRadius(I)V

    .line 45
    :goto_2c
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 4
    invoke-direct {p0, p1, p3, p4}, Lmiuix/appcompat/app/ButtonForegroundDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 7
    return-void
.end method
