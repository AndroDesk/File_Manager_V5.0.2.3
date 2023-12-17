.class Lmiuix/navigator/adapter/CategoryAdapter$EditConfig$1;
.super Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public allowReorder()Z
    .registers 2

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideWhenEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isEditable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public multiChoiceMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public showEditWidget()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public showEmptyCategoryEditWidget()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
