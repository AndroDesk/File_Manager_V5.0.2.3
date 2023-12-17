.class public interface abstract Lmiuix/navigator/adapter/WidgetProvider;
.super Ljava/lang/Object;
.source "WidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onPrepareWidget(Landroid/view/ViewGroup;)V
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
