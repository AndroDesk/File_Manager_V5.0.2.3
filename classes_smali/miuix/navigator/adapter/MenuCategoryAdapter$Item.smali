.class public Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;
.super Lmiuix/navigator/adapter/CategoryAdapter$Item;
.source "MenuCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/adapter/MenuCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconRes:I

.field private final mTitle:Ljava/lang/String;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 6
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapter$Item;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->mVisible:Z

    .line 8
    iput-object p1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->mTitle:Ljava/lang/String;

    .line 9
    iput p2, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->mIconRes:I

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapter$Item;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->mVisible:Z

    .line 3
    iput-object p1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->mTitle:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->mIconRes:I

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->mTitle:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->mIconRes:I

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->mVisible:Z

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->mVisible:Z

    .line 3
    return p1
.end method


# virtual methods
.method public setVisible(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/adapter/MenuCategoryAdapter$Item;->mVisible:Z

    .line 3
    return-void
.end method
