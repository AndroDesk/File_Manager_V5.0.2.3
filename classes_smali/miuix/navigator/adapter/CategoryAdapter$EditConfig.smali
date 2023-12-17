.class public abstract Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/adapter/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EditConfig"
.end annotation


# static fields
.field private static final UNEDITABLE:Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;


# instance fields
.field private final mHasContextMenu:Z

.field private final mShowEmptyDragPlaceholder:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig$1;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig$1;-><init>(ZZ)V

    .line 7
    sput-object v0, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->UNEDITABLE:Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 9
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->mHasContextMenu:Z

    .line 6
    iput-boolean p2, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->mShowEmptyDragPlaceholder:Z

    .line 8
    return-void
.end method

.method public static listConfig(Z)Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;-><init>(ZLmiuix/navigator/adapter/CategoryAdapter$1;)V

    return-object v0
.end method

.method public static listConfig(ZZ)Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;
    .registers 4

    .line 2
    new-instance v0, Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lmiuix/navigator/adapter/CategoryAdapter$ListEditConfig;-><init>(ZZLmiuix/navigator/adapter/CategoryAdapter$1;)V

    return-object v0
.end method

.method public static menuConfig(Z)Lmiuix/navigator/adapter/CategoryAdapter$MenuEditConfig;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/navigator/adapter/CategoryAdapter$MenuEditConfig;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lmiuix/navigator/adapter/CategoryAdapter$MenuEditConfig;-><init>(ZLmiuix/navigator/adapter/CategoryAdapter$1;)V

    .line 7
    return-object v0
.end method

.method public static uneditableConfig()Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->UNEDITABLE:Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;

    .line 3
    return-object v0
.end method


# virtual methods
.method public abstract allowReorder()Z
.end method

.method public abstract getEditMenu()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiuix/navigator/adapter/CategoryAdapter$EditMenu;",
            ">;"
        }
    .end annotation
.end method

.method public hasContextMenu()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->mHasContextMenu:Z

    .line 3
    return v0
.end method

.method public abstract hideWhenEmpty()Z
.end method

.method public isEditable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public abstract multiChoiceMode()Z
.end method

.method public abstract showEditWidget()Z
.end method

.method public abstract showEmptyCategoryEditWidget()Z
.end method

.method public showEmptyDragPlaceholder()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;->mShowEmptyDragPlaceholder:Z

    .line 3
    return v0
.end method

.method public showIconOnEdit()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
