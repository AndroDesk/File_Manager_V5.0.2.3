.class public Lcom/miui/support/cardview/BackgroundOutline;
.super Landroid/view/ViewOutlineProvider;
.source "BackgroundOutline.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mAlpha:F

.field private mPathProvider:Lmiuix/smooth/SmoothPathProvider2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(F)V
    .registers 3

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    new-instance v0, Lmiuix/smooth/SmoothPathProvider2;

    invoke-direct {v0}, Lmiuix/smooth/SmoothPathProvider2;-><init>()V

    iput-object v0, p0, Lcom/miui/support/cardview/BackgroundOutline;->mPathProvider:Lmiuix/smooth/SmoothPathProvider2;

    iput p1, p0, Lcom/miui/support/cardview/BackgroundOutline;->mAlpha:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    new-instance v0, Lmiuix/smooth/SmoothPathProvider2;

    invoke-direct {v0}, Lmiuix/smooth/SmoothPathProvider2;-><init>()V

    iput-object v0, p0, Lcom/miui/support/cardview/BackgroundOutline;->mPathProvider:Lmiuix/smooth/SmoothPathProvider2;

    sget-object v0, Lcom/miui/support/cardview/R$styleable;->BackgroundOutline:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/support/cardview/R$styleable;->BackgroundOutline_android_alpha:I

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/support/cardview/BackgroundOutline;->mAlpha:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_19

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    iget p1, p0, Lcom/miui/support/cardview/BackgroundOutline;->mAlpha:F

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    :cond_19
    :goto_19
    return-void
.end method

.method public of(F)Lcom/miui/support/cardview/BackgroundOutline;
    .registers 3

    new-instance v0, Lcom/miui/support/cardview/BackgroundOutline;

    invoke-direct {v0, p1}, Lcom/miui/support/cardview/BackgroundOutline;-><init>(F)V

    return-object v0
.end method
