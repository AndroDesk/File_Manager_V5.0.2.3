.class public Lmiuix/internal/util/ActionBarUtils;
.super Ljava/lang/Object;
.source "ActionBarUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    if-eqz p0, :cond_1c

    .line 4
    instance-of v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 6
    if-eqz v1, :cond_b

    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 11
    goto :goto_1c

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v1

    .line 16
    instance-of v1, v1, Landroid/view/View;

    .line 18
    if-eqz v1, :cond_1a

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/view/View;

    .line 26
    goto :goto_1

    .line 27
    :cond_1a
    move-object p0, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public static setOnScrollListener(Landroid/app/Activity;Lmiuix/appcompat/app/ActionBar$OnScrollListener;)V
    .registers 3

    .line 1
    sget v0, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->setOnScrollListener(Lmiuix/appcompat/app/ActionBar$OnScrollListener;)V

    .line 12
    return-void
.end method
