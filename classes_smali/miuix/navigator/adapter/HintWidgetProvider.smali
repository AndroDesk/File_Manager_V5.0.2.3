.class public Lmiuix/navigator/adapter/HintWidgetProvider;
.super Lmiuix/navigator/adapter/LayoutWidgetProvider;
.source "HintWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiuix/navigator/adapter/LayoutWidgetProvider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    sget v0, Lmiuix/navigator/R$layout;->miuix_navigator_item_widget_hint:I

    .line 3
    invoke-direct {p0, v0}, Lmiuix/navigator/adapter/LayoutWidgetProvider;-><init>(I)V

    .line 6
    new-instance v0, Landroidx/collection/a;

    .line 8
    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    .line 11
    iput-object v0, p0, Lmiuix/navigator/adapter/HintWidgetProvider;->mMap:Ljava/util/Map;

    .line 13
    return-void
.end method


# virtual methods
.method public getHint(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/HintWidgetProvider;->mMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lmiuix/navigator/adapter/HintWidgetProvider;->mMap:Ljava/util/Map;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/CharSequence;

    .line 17
    return-object p1

    .line 18
    :cond_11
    const-string p1, ""

    .line 20
    return-object p1
.end method

.method public onSetupWidget(Landroid/view/ViewGroup;Ljava/lang/Object;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "TT;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/LayoutWidgetProvider;->getWidgetFrameRes()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    sget v0, Lmiuix/navigator/R$id;->miuix_navigator_item_widget_hint:I

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/widget/TextView;

    .line 16
    if-eqz p3, :cond_14

    .line 18
    const/16 p3, 0x8

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p3, 0x0

    .line 22
    :goto_15
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    invoke-virtual {p0, p2}, Lmiuix/navigator/adapter/HintWidgetProvider;->getHint(Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method

.method public setHint(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/HintWidgetProvider;->mMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method
