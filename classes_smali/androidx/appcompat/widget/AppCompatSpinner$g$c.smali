.class public final Landroidx/appcompat/widget/AppCompatSpinner$g$c;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$g;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatSpinner$g;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$g;Landroidx/appcompat/widget/AppCompatSpinner$g$b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$g$c;->b:Landroidx/appcompat/widget/AppCompatSpinner$g;

    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$g$c;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$g$c;->b:Landroidx/appcompat/widget/AppCompatSpinner$g;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner$g;->I:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$g$c;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 16
    :cond_f
    return-void
.end method
