.class Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/MenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;->this$0:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    check-cast p2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;->compare(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)I

    move-result p1

    return p1
.end method

.method public compare(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)I
    .registers 7

    .line 2
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v0

    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_15

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    move v2, v3

    :goto_14
    return v2

    .line 4
    :cond_15
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v0

    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v1

    if-eq v0, v1, :cond_28

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result p1

    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    return v2

    .line 6
    :cond_28
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result p1

    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
