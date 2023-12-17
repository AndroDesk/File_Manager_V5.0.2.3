.class public Lmiuix/popupwidget/widget/DropDownPopupWindow$DefaultContainerController;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"

# interfaces
.implements Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultContainerController"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddContent(Landroid/view/View;Landroid/view/View;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onAnimationUpdate(Landroid/view/View;F)V
    .registers 4

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_8

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    :goto_8
    if-eqz p1, :cond_11

    .line 11
    const/high16 v0, 0x437f0000  # 255.0f

    .line 13
    mul-float/2addr p2, v0

    .line 14
    float-to-int p2, p2

    .line 15
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 18
    :cond_11
    return-void
.end method

.method public onDismiss()V
    .registers 1

    return-void
.end method

.method public onShow()V
    .registers 1

    return-void
.end method
