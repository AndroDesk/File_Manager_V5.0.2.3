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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;-><init>()V

    .line 4
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->VOID:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    return-void
.end method


# virtual methods
.method public args(Landroid/os/Bundle;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->args:Landroid/os/Bundle;

    .line 3
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2b

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_12

    .line 18
    goto :goto_2b

    .line 19
    :cond_12
    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 21
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 23
    iget-object v3, p1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 25
    if-ne v2, v3, :cond_29

    .line 27
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getPath_key()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getPath_key()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_29

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v0, v1

    .line 43
    :goto_2a
    return v0

    .line 44
    :cond_2b
    :goto_2b
    return v1
.end method

.method public getArgs()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->args:Landroid/os/Bundle;

    .line 3
    return-object v0
.end method

.method public getItemId()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object v0
.end method

.method public getPath_key()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->path_key:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_a

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    return-object v0
.end method

.method public id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;
    .registers 2

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-object p0

    .line 4
    :cond_3
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->item_id:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 6
    return-object p0
.end method

.method public key(Ljava/lang/String;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->path_key:Ljava/lang/String;

    .line 3
    return-object p0
.end method
