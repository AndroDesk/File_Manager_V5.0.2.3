.class public final Landroidx/appcompat/view/menu/m$a;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/m;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/m;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/m$a;->a:Landroidx/appcompat/view/menu/m;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/m$a;->a:Landroidx/appcompat/view/menu/m;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->c()V

    .line 6
    return-void
.end method
