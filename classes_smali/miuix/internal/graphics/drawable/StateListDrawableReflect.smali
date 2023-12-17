.class public Lmiuix/internal/graphics/drawable/StateListDrawableReflect;
.super Ljava/lang/Object;
.source "StateListDrawableReflect.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .registers 1

    invoke-static {p0}, Landroidx/appcompat/widget/a0;->c(Landroid/graphics/drawable/StateListDrawable;)I

    move-result p0

    return p0
.end method

.method public static getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {p0, p1}, Landroidx/appcompat/widget/a0;->h(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .registers 2

    invoke-static {p0, p1}, Landroidx/appcompat/widget/a0;->A(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object p0

    return-object p0
.end method
