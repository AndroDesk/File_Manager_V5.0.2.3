.class public Lmiuix/internal/graphics/drawable/StateListDrawableReflect;
.super Ljava/lang/Object;
.source "StateListDrawableReflect.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/a0;->c(Landroid/graphics/drawable/StateListDrawable;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/appcompat/widget/a0;->h(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/appcompat/widget/a0;->A(Landroid/graphics/drawable/StateListDrawable;I)[I

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
