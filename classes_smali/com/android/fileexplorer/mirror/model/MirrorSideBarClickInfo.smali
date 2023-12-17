.class public Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;
.super Ljava/lang/Object;
.source "MirrorSideBarClickInfo.java"


# static fields
.field public static final ALL_SELECTED:I

.field public static final ALL_UNSELECTED:I

.field public static final ONE_ITEM_SELECTED:I


# instance fields
.field private id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field private need_add_stack:Z

.field private selected:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->ALL_SELECTED:I

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->ALL_UNSELECTED:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->selected:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->need_add_stack:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->need_add_stack:Z

    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->selected:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->need_add_stack:Z

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iput p2, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->selected:I

    return-void
.end method


# virtual methods
.method public getId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object v0
.end method

.method public getSelected()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->selected:I

    return v0
.end method

.method public need_add_stack()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->need_add_stack:Z

    return v0
.end method

.method public setId(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-void
.end method

.method public setNeed_add_stack(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->need_add_stack:Z

    return-void
.end method

.method public setSelected(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarClickInfo;->selected:I

    return-void
.end method
