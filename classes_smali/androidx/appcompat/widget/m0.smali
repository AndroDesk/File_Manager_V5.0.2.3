.class public final Landroidx/appcompat/widget/m0;
.super Landroidx/appcompat/widget/k0;
.source "MenuPopupWindow.java"

# interfaces
.implements Landroidx/appcompat/widget/l0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/m0$b;,
        Landroidx/appcompat/widget/m0$a;,
        Landroidx/appcompat/widget/m0$c;
    }
.end annotation


# static fields
.field public static F:Ljava/lang/reflect/Method;


# instance fields
.field public E:Landroidx/appcompat/widget/l0;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_20

    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/m0;->F:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_20

    :catch_19
    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/appcompat/widget/k0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/m0;->E:Landroidx/appcompat/widget/l0;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/l0;->a(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/view/menu/j;)V

    :cond_7
    return-void
.end method

.method public final b(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/m0;->E:Landroidx/appcompat/widget/l0;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/l0;->b(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)V

    :cond_7
    return-void
.end method

.method public final d(Landroid/content/Context;Z)Landroidx/appcompat/widget/f0;
    .registers 4

    new-instance v0, Landroidx/appcompat/widget/m0$c;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/m0$c;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/m0$c;->setHoverListener(Landroidx/appcompat/widget/l0;)V

    return-object v0
.end method
