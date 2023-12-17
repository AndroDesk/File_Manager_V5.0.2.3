.class public Lmiuix/navigator/adapter/ListCategoryAdapter$Item;
.super Lmiuix/navigator/adapter/CategoryAdapter$Item;
.source "ListCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/adapter/ListCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private mChecked:Z

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconRes:I

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .registers 4

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapter$Item;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->mChecked:Z

    iput-object p1, p0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->mTitle:Ljava/lang/CharSequence;

    iput p2, p0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->mIconRes:I

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-direct {p0}, Lmiuix/navigator/adapter/CategoryAdapter$Item;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->mChecked:Z

    iput-object p1, p0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->mTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->mIcon:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->mIconRes:I

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)I
    .registers 1

    iget p0, p0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->mIconRes:I

    return p0
.end method

.method public static synthetic access$300(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;)Z
    .registers 1

    iget-boolean p0, p0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->mChecked:Z

    return p0
.end method

.method public static synthetic access$302(Lmiuix/navigator/adapter/ListCategoryAdapter$Item;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->mChecked:Z

    return p1
.end method


# virtual methods
.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/ListCategoryAdapter$Item;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method
