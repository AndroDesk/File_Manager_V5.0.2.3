.class public final Landroidx/preference/PreferenceHeaderFragmentCompat$b;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/PreferenceHeaderFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/PreferenceHeaderFragmentCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V
    .registers 2

    iput-object p1, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$b;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    if-eqz p1, :cond_29

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$b;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    iget-object p1, p1, Landroidx/preference/PreferenceHeaderFragmentCompat;->a:Landroidx/preference/PreferenceHeaderFragmentCompat$a;

    invoke-static {p1}, Li3/g;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$b;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    invoke-virtual {p2}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object p2

    iget-boolean p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-eqz p2, :cond_24

    iget-object p2, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$b;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    invoke-virtual {p2}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    move-result p2

    if-eqz p2, :cond_24

    const/4 p2, 0x1

    goto :goto_25

    :cond_24
    const/4 p2, 0x0

    :goto_25
    invoke-virtual {p1, p2}, Landroidx/activity/h;->setEnabled(Z)V

    return-void

    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "view"

    invoke-static {p2}, Li3/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-class p2, Li3/g;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Li3/g;->g(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw p1
.end method
