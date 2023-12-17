.class public Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;
.super Ljava/lang/Object;
.source "MirrorSideBarClickInfo.java"


# static fields
.field public static final ALL_SELECTED:I = 0x1

.field public static final ALL_UNSELECTED:I = -0x1

.field public static final ONE_ITEM_SELECTED:I


# instance fields
.field private id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field private need_add_stack:Z

.field private selected:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->selected:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->need_add_stack:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->need_add_stack:Z

    .line 7
    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->selected:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->need_add_stack:Z

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 4
    iput p2, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->selected:I

    return-void
.end method


# virtual methods
.method public getId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object v0
.end method

.method public getSelected()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->selected:I

    .line 3
    return v0
.end method

.method public need_add_stack()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->need_add_stack:Z

    .line 3
    return v0
.end method

.method public setId(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-void
.end method

.method public setNeed_add_stack(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->need_add_stack:Z

    .line 3
    return-void
.end method

.method public setSelected(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->selected:I

    .line 3
    return-void
.end method
