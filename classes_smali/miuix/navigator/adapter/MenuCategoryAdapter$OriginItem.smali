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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;->mOrigin:Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    invoke-static {p1}, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->access$300(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;->mVisible:Z

    return-void
.end method

.method public static synthetic access$400(Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;)Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;->mOrigin:Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;

    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$OriginItem;->mVisible:Z

    return p0
.end method
