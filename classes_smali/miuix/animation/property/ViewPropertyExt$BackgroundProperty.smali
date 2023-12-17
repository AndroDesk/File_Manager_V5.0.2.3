.class public Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;
.super Lmiuix/animation/property/ViewProperty;
.source "ViewPropertyExt.java"

# interfaces
.implements Lmiuix/animation/property/IIntValueProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/property/ViewPropertyExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/ViewProperty;",
        "Lmiuix/animation/property/IIntValueProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const-string v0, "background"

    .line 2
    invoke-direct {p0, v0}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/animation/property/ViewPropertyExt$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntValue(Landroid/view/View;)I
    .registers 3

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_f

    .line 4
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getIntValue(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;->getIntValue(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getValue(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;->getValue(Landroid/view/View;)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setIntValue(Landroid/view/View;I)V
    .registers 3

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public bridge synthetic setIntValue(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;->setIntValue(Landroid/view/View;I)V

    return-void
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    .line 3
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;->setValue(Landroid/view/View;F)V

    .line 6
    return-void
.end method
