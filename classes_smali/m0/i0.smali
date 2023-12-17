.class public final synthetic Lm0/i0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnUnhandledKeyEventListener;


# instance fields
.field public final synthetic a:Lm0/g0$r;


# direct methods
.method public synthetic constructor <init>(Lm0/g0$r;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/i0;->a:Lm0/g0$r;

    return-void
.end method


# virtual methods
.method public final onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object p1, p0, Lm0/i0;->a:Lm0/g0$r;

    invoke-interface {p1}, Lm0/g0$r;->a()Z

    move-result p1

    return p1
.end method
