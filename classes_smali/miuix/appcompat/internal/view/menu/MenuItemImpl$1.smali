.class Lmiuix/appcompat/internal/view/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setSupportActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V
    .registers 2

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .registers 3

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->access$000(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    return-void
.end method
