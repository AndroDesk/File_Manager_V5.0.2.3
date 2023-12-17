.class Lmiuix/internal/widget/ListPopup$3;
.super Landroid/view/ViewOutlineProvider;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/ListPopup;->setPopupShadowAlpha(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method public constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$3;->this$0:Lmiuix/internal/widget/ListPopup;

    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_28

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_28

    .line 14
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    sget v1, Lmiuix/appcompat/R$attr;->popupWindowShadowAlpha:I

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveFloat(Landroid/content/Context;IF)F

    .line 24
    move-result v0

    .line 25
    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_28

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 41
    :cond_28
    :goto_28
    return-void
.end method
