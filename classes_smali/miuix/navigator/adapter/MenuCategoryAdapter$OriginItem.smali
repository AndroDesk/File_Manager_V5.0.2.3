.class Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;
.super Ljava/lang/Object;
.source "MenuCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/adapter/MenuCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OriginItem"
.end annotation


# instance fields
.field private final mOrigin:Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

.field private final mVisible:Z


# direct methods
.method public constructor <init>(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;->mOrigin:Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    .line 6
    invoke-static {p1}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Z

    .line 9
    move-result p1

    .line 10
    iput-boolean p1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;->mVisible:Z

    .line 12
    return-void
.end method

.method public static synthetic access$400(Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;)Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;->mOrigin:Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;->mVisible:Z

    .line 3
    return p0
.end method
