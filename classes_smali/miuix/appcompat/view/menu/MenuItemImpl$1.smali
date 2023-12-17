.class Lmiuix/appcompat/view/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Lm0/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/view/menu/MenuItemImpl;->setSupportActionProvider(Lm0/b;)Lh0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/view/menu/MenuItemImpl;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/view/menu/MenuItemImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl$1;->this$0:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl$1;->this$0:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 3
    iget-object v0, p1, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemVisibleChanged(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    .line 8
    return-void
.end method
