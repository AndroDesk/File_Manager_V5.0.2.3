.class Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationMenuTextItem"
.end annotation


# instance fields
.field private final menuItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

.field public needsEmptyIcon:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/view/menu/MenuItemImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->menuItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    return-void
.end method


# virtual methods
.method public getMenuItem()Lmiuix/appcompat/view/menu/MenuItemImpl;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->menuItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method
