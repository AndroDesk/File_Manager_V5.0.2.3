.class Lmiuix/animation/styles/TintDrawable$1;
.super Ljava/lang/Object;
.source "TintDrawable.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/styles/TintDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lmiuix/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    invoke-static {v0}, Lmiuix/animation/styles/TintDrawable;->access$000(Lmiuix/animation/styles/TintDrawable;)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_f

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    :cond_f
    invoke-static {v0}, Lmiuix/animation/styles/TintDrawable;->access$100(Lmiuix/animation/styles/TintDrawable;)V

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 22
    :cond_15
    return-void
.end method
