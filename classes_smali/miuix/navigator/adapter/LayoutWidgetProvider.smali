.class public abstract Lmiuix/navigator/adapter/LayoutWidgetProvider;
.super Ljava/lang/Object;
.source "LayoutWidgetProvider.java"

# interfaces
.implements Lmiuix/navigator/adapter/WidgetProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiuix/navigator/adapter/WidgetProvider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mWidgetFrameRes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiuix/navigator/adapter/LayoutWidgetProvider;->mWidgetFrameRes:I

    return-void
.end method


# virtual methods
.method public getWidgetFrameRes()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/adapter/LayoutWidgetProvider;->mWidgetFrameRes:I

    return v0
.end method

.method public onPrepareWidget(Landroid/view/ViewGroup;)V
    .registers 5

    iget v0, p0, Lmiuix/navigator/adapter/LayoutWidgetProvider;->mWidgetFrameRes:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lmiuix/navigator/adapter/LayoutWidgetProvider;->mWidgetFrameRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public abstract onSetupWidget(Landroid/view/ViewGroup;Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "TT;Z)V"
        }
    .end annotation
.end method
