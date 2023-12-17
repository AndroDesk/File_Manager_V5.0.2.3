.class public final Landroidx/appcompat/view/menu/j$a;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Lm0/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/j;->setSupportActionProvider(Lm0/b;)Lh0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/j;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/j;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/j$a;->a:Landroidx/appcompat/view/menu/j;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onActionProviderVisibilityChanged(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/j$a;->a:Landroidx/appcompat/view/menu/j;

    .line 3
    iget-object v0, p1, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->onItemVisibleChanged(Landroidx/appcompat/view/menu/j;)V

    .line 8
    return-void
.end method
