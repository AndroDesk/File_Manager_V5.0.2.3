.class public Lcom/android/fileexplorer/model/ViewDragManager;
.super Ljava/lang/Object;
.source "ViewDragManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/model/ViewDragManager$Holder;
    }
.end annotation


# instance fields
.field private mDragPermissionsCompat:Lm0/e;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/model/ViewDragManager$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/model/ViewDragManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/model/ViewDragManager;
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/ViewDragManager$Holder;->access$100()Lcom/android/fileexplorer/model/ViewDragManager;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public releasePermission()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/ViewDragManager;->mDragPermissionsCompat:Lm0/e;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget-object v0, v0, Lm0/e;->a:Landroid/view/DragAndDropPermissions;

    .line 7
    invoke-static {v0}, Lm0/e$a;->a(Landroid/view/DragAndDropPermissions;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/model/ViewDragManager;->mDragPermissionsCompat:Lm0/e;

    .line 13
    :cond_c
    return-void
.end method

.method public requestDragPermission(Landroid/app/Activity;Landroid/view/DragEvent;)Z
    .registers 4

    .line 1
    if-eqz p1, :cond_13

    .line 3
    sget v0, Ld0/a;->a:I

    .line 5
    invoke-static {p1, p2}, Lm0/e$a;->b(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_10

    .line 11
    new-instance p2, Lm0/e;

    .line 13
    invoke-direct {p2, p1}, Lm0/e;-><init>(Landroid/view/DragAndDropPermissions;)V

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p2, 0x0

    .line 18
    :goto_11
    iput-object p2, p0, Lcom/android/fileexplorer/model/ViewDragManager;->mDragPermissionsCompat:Lm0/e;

    .line 20
    :cond_13
    iget-object p1, p0, Lcom/android/fileexplorer/model/ViewDragManager;->mDragPermissionsCompat:Lm0/e;

    .line 22
    if-eqz p1, :cond_19

    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    :goto_1a
    return p1
.end method
