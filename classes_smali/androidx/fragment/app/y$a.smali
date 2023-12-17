.class public final Landroidx/fragment/app/y$a;
.super Ljava/lang/Object;
.source "FragmentStateManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/y;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/y$a;->a:Landroid/view/View;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/y$a;->a:Landroid/view/View;

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/y$a;->a:Landroid/view/View;

    .line 8
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 10
    invoke-static {p1}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 13
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
