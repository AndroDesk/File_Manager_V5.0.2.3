.class public Lmiuix/navigator/adapter/CategoryAdapter$Item;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"

# interfaces
.implements Lmiuix/navigator/NavigationItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/adapter/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$Item;->mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method

.method public getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$Item;->mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 3
    return-object v0
.end method

.method public setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapter$Item;->mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 3
    return-void
.end method
