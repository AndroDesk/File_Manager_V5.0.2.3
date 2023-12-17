.class public Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;
.super Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/adapter/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListEditConfig"
.end annotation


# instance fields
.field private mEditMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;-><init>(ZZ)V

    return-void
.end method

.method public synthetic constructor <init>(ZLmiuix/navigator/adapter/CategoryAdapter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;-><init>(ZZ)V

    return-void
.end method

.method public synthetic constructor <init>(ZZLmiuix/navigator/adapter/CategoryAdapter$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public addMenu(Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;)Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;->mEditMenus:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;->mEditMenus:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;->mEditMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public allowReorder()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getEditMenu()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;->mEditMenus:Ljava/util/List;

    return-object v0
.end method

.method public hideWhenEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public multiChoiceMode()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final showEditWidget()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showEmptyCategoryEditWidget()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
