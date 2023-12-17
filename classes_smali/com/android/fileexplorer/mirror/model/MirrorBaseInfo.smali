.class public Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;
.super Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;
.source "MirrorBaseInfo.java"


# static fields
.field public static final KEY_PATH_KEY:Ljava/lang/String; = "key_path"


# instance fields
.field private args:Landroid/os/Bundle;

.field public item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field public path_key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;-><init>()V

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->VOID:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-void
.end method


# virtual methods
.method public args(Landroid/os/Bundle;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->args:Landroid/os/Bundle;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    :cond_12
    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iget-object v3, p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-ne v2, v3, :cond_29

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getPath_key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getPath_key()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public getArgs()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method

.method public getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object v0
.end method

.method public getPath_key()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->path_key:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;
    .registers 2

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object p0
.end method

.method public key(Ljava/lang/String;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->path_key:Ljava/lang/String;

    return-object p0
.end method
