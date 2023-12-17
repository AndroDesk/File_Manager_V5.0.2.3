.class public Lmiuix/navigator/adapter/CategoryAdapter$MenuEditConfig;
.super Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/adapter/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuEditConfig"
.end annotation


# instance fields
.field private final mShowEditWidget:Z


# direct methods
.method private constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;-><init>(ZZ)V

    .line 3
    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryAdapter$MenuEditConfig;->mShowEditWidget:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLmiuix/navigator/adapter/CategoryAdapter$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/adapter/CategoryAdapter$MenuEditConfig;-><init>(Z)V

    return-void
.end method


# virtual methods
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideWhenEmpty()Z
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

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$MenuEditConfig;->mShowEditWidget:Z

    .line 3
    return v0
.end method

.method public showEmptyCategoryEditWidget()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
