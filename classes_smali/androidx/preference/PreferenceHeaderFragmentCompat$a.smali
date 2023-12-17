.class public final Landroidx/preference/PreferenceHeaderFragmentCompat$a;
.super Landroidx/activity/h;
.source "PreferenceHeaderFragmentCompat.kt"

# interfaces
.implements Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceHeaderFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/preference/PreferenceHeaderFragmentCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V
    .registers 3
    .param p1  # Landroidx/preference/PreferenceHeaderFragmentCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "caller"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Landroidx/activity/h;-><init>(Z)V

    .line 10
    iput-object p1, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$a;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    .line 12
    invoke-virtual {p1}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 15
    move-result-object p1

    .line 16
    iget-object p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "panel"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "panel"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/activity/h;->setEnabled(Z)V

    .line 10
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "panel"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroidx/activity/h;->setEnabled(Z)V

    .line 10
    return-void
.end method

.method public final handleOnBackPressed()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$a;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    .line 3
    invoke-virtual {v0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_d

    .line 12
    iput-boolean v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 14
    :cond_d
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    .line 16
    if-nez v1, :cond_19

    .line 18
    const/high16 v1, 0x3f800000  # 1.0f

    .line 20
    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e(F)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1b

    .line 26
    :cond_19
    iput-boolean v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 28
    :cond_1b
    return-void
.end method
