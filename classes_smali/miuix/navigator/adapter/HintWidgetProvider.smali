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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget v0, Lmiuix/navigator/R$layout;->miuix_navigator_item_widget_hint:I

    invoke-direct {p0, v0}, Lmiuix/navigator/adapter/LayoutWidgetProvider;-><init>(I)V

    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/adapter/HintWidgetProvider;->mMap:Ljava/util/Map;

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

    iget-object v0, p0, Lmiuix/navigator/adapter/HintWidgetProvider;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiuix/navigator/adapter/HintWidgetProvider;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    :cond_11
    const-string p1, ""

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

    invoke-virtual {p0}, Lmiuix/navigator/adapter/LayoutWidgetProvider;->getWidgetFrameRes()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget v0, Lmiuix/navigator/R$id;->miuix_navigator_item_widget_hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p3, :cond_14

    const/16 p3, 0x8

    goto :goto_15

    :cond_14
    const/4 p3, 0x0

    :goto_15
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lmiuix/navigator/adapter/HintWidgetProvider;->getHint(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    iget-object v0, p0, Lmiuix/navigator/adapter/HintWidgetProvider;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
