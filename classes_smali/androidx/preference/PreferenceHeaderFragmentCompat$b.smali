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
.method public constructor <init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$b;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_29

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 6
    iget-object p1, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$b;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    .line 8
    iget-object p1, p1, Landroidx/preference/PreferenceHeaderFragmentCompat;->a:Landroidx/preference/PreferenceHeaderFragmentCompat$a;

    .line 10
    invoke-static {p1}, Li3/g;->b(Ljava/lang/Object;)V

    .line 13
    iget-object p2, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$b;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    .line 15
    invoke-virtual {p2}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 18
    move-result-object p2

    .line 19
    iget-boolean p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 21
    if-eqz p2, :cond_24

    .line 23
    iget-object p2, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$b;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    .line 25
    invoke-virtual {p2}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_24

    .line 35
    const/4 p2, 0x1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 p2, 0x0

    .line 38
    :goto_25
    invoke-virtual {p1, p2}, Landroidx/activity/h;->setEnabled(Z)V

    .line 41
    return-void

    .line 42
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    const-string p2, "view"

    .line 46
    invoke-static {p2}, Li3/g;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    const-class p2, Li3/g;

    .line 55
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    invoke-static {p2, p1}, Li3/g;->g(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 62
    throw p1
.end method
